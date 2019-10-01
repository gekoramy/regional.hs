package dunder.mifflin.persistance.daos.generics;

import dunder.mifflin.persistance.daos.*;

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

    RegionDAO region();

    ReportDAO report();

    SecretDao secret();

    SpecialistDAO specialist();

    SpExamDAO spExam();

    TicketDAO ticket();

}
