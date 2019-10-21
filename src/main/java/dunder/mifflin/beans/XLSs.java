package dunder.mifflin.beans;

import dunder.mifflin.persistence.pojos.*;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import javax.ejb.Stateless;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Date;
import java.time.OffsetDateTime;
import java.util.Map;
import java.util.function.Consumer;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import static org.apache.poi.ss.usermodel.FillPatternType.SOLID_FOREGROUND;
import static org.apache.poi.ss.usermodel.IndexedColors.*;

@Stateless
public class XLSs {

    private Font headerFont(Workbook sheets) {
        final Font font = sheets.createFont();
        font.setBold(true);
        font.setColor(WHITE.index);
        font.setFontHeightInPoints((short) 12);
        return font;
    }

    private Font bodyFont(Workbook sheets) {
        final Font font = sheets.createFont();
        font.setBold(false);
        font.setColor(GREY_80_PERCENT.index);
        font.setFontHeightInPoints((short) 12);
        return font;
    }

    private CellStyle header(Workbook sheets) {
        final CellStyle style = sheets.createCellStyle();
        style.setVerticalAlignment(VerticalAlignment.CENTER);
        style.setFillForegroundColor(BLACK.index);
        style.setFillPattern(SOLID_FOREGROUND);
        style.setFont(headerFont(sheets));
        return style;
    }

    private CellStyle body(Workbook sheets) {
        final CellStyle style = sheets.createCellStyle();
        style.setVerticalAlignment(VerticalAlignment.CENTER);
        style.setFont(bodyFont(sheets));
        return style;
    }

    private CellStyle time(Workbook sheets) {
        final CellStyle style = body(sheets);
        style.setDataFormat(sheets.createDataFormat().getFormat("m/d/yy h:mm"));
        return style;
    }

    private CellStyle currency(Workbook sheets) {
        final CellStyle style = body(sheets);
        style.setDataFormat(sheets.createDataFormat().getFormat("_-* #.##0,00 €_-;-* #.##0,00 €_-;_-* \"-\"?? €_-;_-@_-"));
        return style;
    }

    private Consumer<Cell> header(String value) {
        return (cell) -> {
            cell.setCellStyle(header(cell.getRow().getSheet().getWorkbook()));
            cell.setCellValue(value);
        };
    }

    private Consumer<Cell> text(String value) {
        return (cell) -> {
            cell.setCellStyle(body(cell.getRow().getSheet().getWorkbook()));
            cell.setCellValue(value);
        };
    }

    private Consumer<Cell> time(OffsetDateTime value) {
        return (cell) -> {
            cell.setCellStyle(time(cell.getRow().getSheet().getWorkbook()));
            cell.setCellValue(Date.from(value.toInstant()));
        };
    }

    private Consumer<Cell> numeric(int value) {
        return (cell) -> {
            cell.setCellStyle(body(cell.getRow().getSheet().getWorkbook()));
            cell.setCellValue(value);
        };
    }

    private Consumer<Cell> currency(double value) {
        return (cell) -> {
            cell.setCellStyle(currency(cell.getRow().getSheet().getWorkbook()));
            cell.setCellValue(value);
        };
    }

    public void document(OutputStream output, Consumer<Workbook> consumer) throws IOException {
        try (final Workbook sheets = new XSSFWorkbook()) {
            consumer.accept(sheets);
            sheets.write(output);
        }
    }

    private void sheet(Workbook sheets, String sheet, Consumer<Sheet> consumer) {
        consumer.accept(sheets.createSheet(sheet));
    }

    private void row(Sheet sheet, Consumer<Row> consumer) {
        consumer.accept(sheet.createRow(sheet.getLastRowNum() + 1));
    }

    private void cell(Row row, Consumer<Cell> consumer) {
        consumer.accept(row.createCell(Math.max(row.getLastCellNum(), 0)));
    }

    public Consumer<Workbook> medicine(
            Stream<MedicinePrescription> prescriptions,
            Map<Long, Ticket> tickets,
            Map<Long, Person> patients,
            Map<Long, General> generals
    ) {
        return (sheets) -> sheet(sheets, "farmaci", (sheet) -> {
            row(sheet, (row) -> {
                cell(row, header("Prescrizione"));
                cell(row, header("Medicina"));
                cell(row, header("Quantità"));
                cell(row, header("Ticket"));
                cell(row, header("Costo"));
                cell(row, header("Medico Generico"));
                cell(row, header("Paziente"));
            });

            prescriptions
                    .filter((prescription) -> tickets.containsKey(prescription.id()))
                    .filter((prescription) -> generals.containsKey(prescription.concerns()))
                    .filter((prescription) -> patients.containsKey(prescription.concerns()))
                    .forEachOrdered((prescription) -> {
                        final Ticket ticket = tickets.get(prescription.id());
                        final General general = generals.get(prescription.concerns());
                        final Person patient = patients.get(prescription.concerns());

                        row(sheet, (row) -> {
                            cell(row, time(prescription.date()));
                            cell(row, text(prescription.medicine().name()));
                            cell(row, numeric(prescription.quantity()));
                            cell(row, time(ticket.date()));
                            cell(row, currency(ticket.amount().doubleValue()));
                            cell(row, text(String.join(" ", general.name(), general.surname())));
                            cell(row, text(String.join(" ", patient.name(), patient.surname())));
                        });
                    });

            final int columns = Math.toIntExact(StreamSupport.stream(sheet.getRow(sheet.getFirstRowNum()).spliterator(), true).count());
            IntStream.range(0, columns).forEach(sheet::autoSizeColumn);
        });
    }

    public Consumer<Workbook> exams(
            Stream<ExamPrescription> prescriptions,
            Map<Long, Ticket> tickets,
            Map<Long, Person> patients,
            Map<Long, General> generals
    ) {
        return (sheets) -> sheet(sheets, "esami", (sheet) -> {
            row(sheet, (row) -> {
                cell(row, header("Prescrizione"));
                cell(row, header("Esame"));
                cell(row, header("Ticket"));
                cell(row, header("Costo"));
                cell(row, header("Medico Generico"));
                cell(row, header("Paziente"));
            });

            prescriptions
                    .filter((prescription) -> tickets.containsKey(prescription.id()))
                    .filter((prescription) -> generals.containsKey(prescription.concerns()))
                    .filter((prescription) -> patients.containsKey(prescription.concerns()))
                    .forEachOrdered((prescription) -> {
                        final Ticket ticket = tickets.get(prescription.id());
                        final General general = generals.get(prescription.concerns());
                        final Person patient = patients.get(prescription.concerns());

                        row(sheet, (row) -> {
                            cell(row, time(prescription.date()));
                            cell(row, text(prescription.exam().name()));
                            cell(row, time(ticket.date()));
                            cell(row, currency(ticket.amount().doubleValue()));
                            cell(row, text(String.join(" ", general.name(), general.surname())));
                            cell(row, text(String.join(" ", patient.name(), patient.surname())));
                        });
                    });

            final int columns = Math.toIntExact(StreamSupport.stream(sheet.getRow(sheet.getFirstRowNum()).spliterator(), true).count());
            IntStream.range(0, columns).forEach(sheet::autoSizeColumn);
        });
    }
}
