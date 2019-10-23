package dunder.mifflin.persistence.daos.generics;

import dunder.mifflin.persistence.daos.*;

public interface DAOFactory {

    AvatarDAO avatar();

    CityDAO city();

    ExamPrescriptionDAO examPrescription();

    ExamTicketDAO examTicket();

    GeneralDAO general();

    HsAdminDAO hsAdmin();

    HsDoctorDAO hsDoctor();

    HsExamDAO hsExam();

    MedicineDAO medicine();

    MedicinePrescriptionDAO medicinePrescription();

    MedicineTicketDAO medicineTicket();

    PersonDAO person();

    ProvinceDAO province();

    RegionDAO region();

    ReportDAO report();

    SecretDao secret();

    SpecialistDAO specialist();

    SpExamDAO spExam();

    TokenDAO token();
}
