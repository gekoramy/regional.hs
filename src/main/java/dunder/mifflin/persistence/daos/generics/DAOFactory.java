package dunder.mifflin.persistence.daos.generics;

import dunder.mifflin.persistence.daos.*;

public interface DAOFactory {

    AvatarDAO avatar();

    CityDAO city();

    ExamPrescriptionDAO examPrescription();

    GeneralDAO general();

    HsAdminDAO hsAdmin();

    HsDoctorDAO hsDoctor();

    HsExamDAO hsExam();

    MedicineDAO medicine();

    MedicinePrescriptionDAO medicinePrescription();

    PersonDAO person();

    ProvinceDAO province();

    RecoverDAO recover();

    RegionDAO region();

    ReportDAO report();

    SecretDao secret();

    SpecialistDAO specialist();

    SpExamDAO spExam();

    TicketDAO ticket();

}
