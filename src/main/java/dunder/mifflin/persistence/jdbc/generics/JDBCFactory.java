package dunder.mifflin.persistence.jdbc.generics;

import dunder.mifflin.persistence.daos.*;
import dunder.mifflin.persistence.daos.generics.DAOFactory;
import dunder.mifflin.persistence.jdbc.*;
import dunder.mifflin.persistence.jdbc.utils.WrapperListener;
import org.jooq.DSLContext;
import org.jooq.SQLDialect;
import org.jooq.impl.DSL;
import org.jooq.impl.DefaultConfiguration;

import javax.sql.DataSource;
import java.sql.Connection;

import static java.util.Objects.requireNonNull;

public class JDBCFactory implements DAOFactory {

    private final AvatarDAO avatar;
    private final CityDAO city;
    private final ExamPrescriptionDAO examPrescription;
    private final ExamTicketDAO examTicket;
    private final GeneralDAO general;
    private final HsAdminDAO hsAdmin;
    private final HsDoctorDAO hsDoctor;
    private final HsExamDAO hsExam;
    private final MedicineDAO medicine;
    private final MedicinePrescriptionDAO medicinePrescription;
    private final MedicineTicketDAO medicineTicket;
    private final PersonDAO person;
    private final ProvinceDAO province;
    private final RegionDAO region;
    private final SecretDao secret;
    private final ReportDAO report;
    private final SpecialistDAO specialist;
    private final SpExamDAO spExam;
    private final TokenDAO token;

    private JDBCFactory(DSLContext context) {
        requireNonNull(context);

        this.avatar = new AvatarJDBC(context);
        this.city = new CityJDBC(context);
        this.examPrescription = new ExamPrescriptionJDBC(context);
        this.examTicket = new ExamTicketJDBC(context);
        this.general = new GeneralJDBC(context);
        this.hsAdmin = new HsAdminJDBC(context);
        this.hsDoctor = new HsDoctorJDBC(context);
        this.hsExam = new HsExamJDBC(context);
        this.medicine = new MedicineJDBC(context);
        this.medicinePrescription = new MedicinePrescriptionJDBC(context);
        this.medicineTicket = new MedicineTicketJDBC(context);
        this.person = new PersonJDBC(context);
        this.province = new ProvinceJDBC(context);
        this.region = new RegionJDBC(context);
        this.secret = new SecretJDBC(context);
        this.report = new ReportJDBC(context);
        this.specialist = new SpecialistJDBC(context);
        this.spExam = new SpExamJDBC(context);
        this.token = new TokenJDBC(context);
    }

    public JDBCFactory(DataSource datasource) {
        this(
                DSL.using(
                        new DefaultConfiguration()
                                .set(datasource)
                                .set(SQLDialect.POSTGRES)
                                .set(WrapperListener::new)
                )
        );
    }

    public JDBCFactory(Connection connection) {
        this(
                DSL.using(
                        new DefaultConfiguration()
                                .set(connection)
                                .set(SQLDialect.POSTGRES)
                                .set(WrapperListener::new)
                )
        );
    }

    @Override
    public AvatarDAO avatar() {
        return avatar;
    }

    @Override
    public CityDAO city() {
        return city;
    }

    @Override
    public ExamPrescriptionDAO examPrescription() {
        return examPrescription;
    }

    @Override
    public ExamTicketDAO examTicket() {
        return examTicket;
    }

    @Override
    public GeneralDAO general() {
        return general;
    }

    @Override
    public HsAdminDAO hsAdmin() {
        return hsAdmin;
    }

    @Override
    public HsDoctorDAO hsDoctor() {
        return hsDoctor;
    }

    @Override
    public HsExamDAO hsExam() {
        return hsExam;
    }

    @Override
    public MedicineDAO medicine() {
        return medicine;
    }

    @Override
    public MedicinePrescriptionDAO medicinePrescription() {
        return medicinePrescription;
    }

    @Override
    public MedicineTicketDAO medicineTicket() {
        return medicineTicket;
    }

    @Override
    public PersonDAO person() {
        return person;
    }

    @Override
    public ProvinceDAO province() {
        return province;
    }

    @Override
    public RegionDAO region() {
        return region;
    }

    @Override
    public SecretDao secret() {
        return secret;
    }

    @Override
    public ReportDAO report() {
        return report;
    }

    @Override
    public SpecialistDAO specialist() {
        return specialist;
    }

    @Override
    public SpExamDAO spExam() {
        return spExam;
    }

    @Override
    public TokenDAO token() {
        return token;
    }
}
