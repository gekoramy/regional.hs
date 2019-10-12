package dunder.mifflin.services;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import javax.ejb.Stateless;
import java.io.OutputStream;
import java.util.stream.Stream;

@Stateless
public class PDFs {

    @FunctionalInterface
    public interface Design {

        void accept(Document document) throws DocumentException;

    }

    public void document(OutputStream output, PDFs.Design consumer) throws DocumentException {
        final Document doc = new Document(PageSize.A4.rotate());
        PdfWriter.getInstance(doc, output);
        doc.open();
        consumer.accept(doc);
        doc.close();
    }

    public PdfPTable table(float[] widths, Stream<String> headers, Stream<String> rows) {

        final Stream<PdfPCell> h = headers
                .limit(widths.length)
                .map(String::toUpperCase)
                .map((string) -> new Phrase(string, new Font(Font.FontFamily.COURIER, Font.DEFAULTSIZE, Font.BOLD, BaseColor.WHITE)))
                .map(PdfPCell::new)
                .peek((cell) -> {
                    cell.setBackgroundColor(BaseColor.DARK_GRAY);
                    cell.setBorderColor(BaseColor.DARK_GRAY);
                });

        final Stream<PdfPCell> r = rows
                .map((string) -> new Phrase(string, new Font(Font.FontFamily.COURIER, Font.DEFAULTSIZE, Font.NORMAL, BaseColor.DARK_GRAY)))
                .map(PdfPCell::new)
                .peek((cell) -> {
                    cell.setBackgroundColor(BaseColor.WHITE);
                    cell.setUseVariableBorders(true);
                    cell.setBorderColorTop(BaseColor.WHITE);
                    cell.setBorderColorRight(BaseColor.WHITE);
                    cell.setBorderColorBottom(BaseColor.DARK_GRAY);
                    cell.setBorderColorLeft(BaseColor.WHITE);
                });

        return Stream.concat(h, r)
                .peek((cell) -> cell.setVerticalAlignment(PdfPCell.ALIGN_TOP))
                .collect(
                        () -> {
                            final PdfPTable table = new PdfPTable(widths);
                            table.setWidthPercentage(100);
                            return table;
                        },
                        PdfPTable::addCell,
                        PdfPTable::addCell
                );
    }
}
