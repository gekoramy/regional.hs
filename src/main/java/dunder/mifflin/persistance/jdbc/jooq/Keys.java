/*
 * This file is generated by jOOQ.
 */
package dunder.mifflin.persistance.jdbc.jooq;


import dunder.mifflin.persistance.jdbc.jooq.tables.Avatar;
import dunder.mifflin.persistance.jdbc.jooq.tables.City;
import dunder.mifflin.persistance.jdbc.jooq.tables.Examination;
import dunder.mifflin.persistance.jdbc.jooq.tables.Follows;
import dunder.mifflin.persistance.jdbc.jooq.tables.General;
import dunder.mifflin.persistance.jdbc.jooq.tables.HsAdmin;
import dunder.mifflin.persistance.jdbc.jooq.tables.HsDoctor;
import dunder.mifflin.persistance.jdbc.jooq.tables.HsExam;
import dunder.mifflin.persistance.jdbc.jooq.tables.HsQualification;
import dunder.mifflin.persistance.jdbc.jooq.tables.HsReport;
import dunder.mifflin.persistance.jdbc.jooq.tables.Medicine;
import dunder.mifflin.persistance.jdbc.jooq.tables.Person;
import dunder.mifflin.persistance.jdbc.jooq.tables.PrHsExam;
import dunder.mifflin.persistance.jdbc.jooq.tables.PrMedicine;
import dunder.mifflin.persistance.jdbc.jooq.tables.PrSpExam;
import dunder.mifflin.persistance.jdbc.jooq.tables.Prescription;
import dunder.mifflin.persistance.jdbc.jooq.tables.Province;
import dunder.mifflin.persistance.jdbc.jooq.tables.Region;
import dunder.mifflin.persistance.jdbc.jooq.tables.SpExam;
import dunder.mifflin.persistance.jdbc.jooq.tables.SpQualification;
import dunder.mifflin.persistance.jdbc.jooq.tables.SpReport;
import dunder.mifflin.persistance.jdbc.jooq.tables.Specialist;
import dunder.mifflin.persistance.jdbc.jooq.tables.Ticket;

import javax.annotation.processing.Generated;

import org.jooq.ForeignKey;
import org.jooq.Identity;
import org.jooq.Record;
import org.jooq.UniqueKey;
import org.jooq.impl.Internal;


/**
 * A class modelling foreign key relationships and constraints of tables of 
 * the <code>public</code> schema.
 */
@Generated(
    value = {
        "http://www.jooq.org",
        "jOOQ version:3.12.1"
    },
    comments = "This class is generated by jOOQ"
)
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class Keys {

    // -------------------------------------------------------------------------
    // IDENTITY definitions
    // -------------------------------------------------------------------------

    public static final Identity<Record, Long> IDENTITY_CITY = Identities0.IDENTITY_CITY;
    public static final Identity<Record, Long> IDENTITY_EXAMINATION = Identities0.IDENTITY_EXAMINATION;
    public static final Identity<Record, Long> IDENTITY_FOLLOWS = Identities0.IDENTITY_FOLLOWS;
    public static final Identity<Record, Long> IDENTITY_MEDICINE = Identities0.IDENTITY_MEDICINE;
    public static final Identity<Record, Long> IDENTITY_PERSON = Identities0.IDENTITY_PERSON;
    public static final Identity<Record, Long> IDENTITY_PRESCRIPTION = Identities0.IDENTITY_PRESCRIPTION;
    public static final Identity<Record, Long> IDENTITY_PROVINCE = Identities0.IDENTITY_PROVINCE;
    public static final Identity<Record, Long> IDENTITY_REGION = Identities0.IDENTITY_REGION;

    // -------------------------------------------------------------------------
    // UNIQUE and PRIMARY KEY definitions
    // -------------------------------------------------------------------------

    public static final UniqueKey<Record> AVATAR_PKEY = UniqueKeys0.AVATAR_PKEY;
    public static final UniqueKey<Record> AVATAR_URL_KEY = UniqueKeys0.AVATAR_URL_KEY;
    public static final UniqueKey<Record> CITY_PKEY = UniqueKeys0.CITY_PKEY;
    public static final UniqueKey<Record> EXAMINATION_PKEY = UniqueKeys0.EXAMINATION_PKEY;
    public static final UniqueKey<Record> EXAMINATION_NAME_KEY = UniqueKeys0.EXAMINATION_NAME_KEY;
    public static final UniqueKey<Record> FOLLOWS_PKEY = UniqueKeys0.FOLLOWS_PKEY;
    public static final UniqueKey<Record> GENERAL_PKEY = UniqueKeys0.GENERAL_PKEY;
    public static final UniqueKey<Record> HS_ADMIN_PKEY = UniqueKeys0.HS_ADMIN_PKEY;
    public static final UniqueKey<Record> HS_DOCTOR_PKEY = UniqueKeys0.HS_DOCTOR_PKEY;
    public static final UniqueKey<Record> HS_EXAM_PKEY = UniqueKeys0.HS_EXAM_PKEY;
    public static final UniqueKey<Record> HS_QUALIFICATION_PKEY = UniqueKeys0.HS_QUALIFICATION_PKEY;
    public static final UniqueKey<Record> HS_REPORT_PKEY = UniqueKeys0.HS_REPORT_PKEY;
    public static final UniqueKey<Record> MEDICINE_PKEY = UniqueKeys0.MEDICINE_PKEY;
    public static final UniqueKey<Record> MEDICINE_NAME_KEY = UniqueKeys0.MEDICINE_NAME_KEY;
    public static final UniqueKey<Record> PERSON_PKEY = UniqueKeys0.PERSON_PKEY;
    public static final UniqueKey<Record> PR_HS_EXAM_PKEY = UniqueKeys0.PR_HS_EXAM_PKEY;
    public static final UniqueKey<Record> PR_MEDICINE_PKEY = UniqueKeys0.PR_MEDICINE_PKEY;
    public static final UniqueKey<Record> PR_SP_EXAM_PKEY = UniqueKeys0.PR_SP_EXAM_PKEY;
    public static final UniqueKey<Record> PRESCRIPTION_PKEY = UniqueKeys0.PRESCRIPTION_PKEY;
    public static final UniqueKey<Record> PROVINCE_PKEY = UniqueKeys0.PROVINCE_PKEY;
    public static final UniqueKey<Record> REGION_PKEY = UniqueKeys0.REGION_PKEY;
    public static final UniqueKey<Record> SP_EXAM_PKEY = UniqueKeys0.SP_EXAM_PKEY;
    public static final UniqueKey<Record> SP_QUALIFICATION_PKEY = UniqueKeys0.SP_QUALIFICATION_PKEY;
    public static final UniqueKey<Record> SP_REPORT_PKEY = UniqueKeys0.SP_REPORT_PKEY;
    public static final UniqueKey<Record> SPECIALIST_PKEY = UniqueKeys0.SPECIALIST_PKEY;
    public static final UniqueKey<Record> TICKET_PKEY = UniqueKeys0.TICKET_PKEY;

    // -------------------------------------------------------------------------
    // FOREIGN KEY definitions
    // -------------------------------------------------------------------------

    public static final ForeignKey<Record, Record> AVATAR__AVATAR_ID_FKEY = ForeignKeys0.AVATAR__AVATAR_ID_FKEY;
    public static final ForeignKey<Record, Record> CITY__CITY_PROVINCE_FKEY = ForeignKeys0.CITY__CITY_PROVINCE_FKEY;
    public static final ForeignKey<Record, Record> FOLLOWS__FOLLOWS_PATIENT_FKEY = ForeignKeys0.FOLLOWS__FOLLOWS_PATIENT_FKEY;
    public static final ForeignKey<Record, Record> FOLLOWS__FOLLOWS_GENERAL_FKEY = ForeignKeys0.FOLLOWS__FOLLOWS_GENERAL_FKEY;
    public static final ForeignKey<Record, Record> GENERAL__GENERAL_ID_FKEY = ForeignKeys0.GENERAL__GENERAL_ID_FKEY;
    public static final ForeignKey<Record, Record> GENERAL__GENERAL_WORKPLACE_FKEY = ForeignKeys0.GENERAL__GENERAL_WORKPLACE_FKEY;
    public static final ForeignKey<Record, Record> HS_ADMIN__HS_ADMIN_ID_FKEY = ForeignKeys0.HS_ADMIN__HS_ADMIN_ID_FKEY;
    public static final ForeignKey<Record, Record> HS_ADMIN__HS_ADMIN_WORKPLACE_FKEY = ForeignKeys0.HS_ADMIN__HS_ADMIN_WORKPLACE_FKEY;
    public static final ForeignKey<Record, Record> HS_DOCTOR__HS_DOCTOR_ID_FKEY = ForeignKeys0.HS_DOCTOR__HS_DOCTOR_ID_FKEY;
    public static final ForeignKey<Record, Record> HS_DOCTOR__HS_DOCTOR_WORKPLACE_FKEY = ForeignKeys0.HS_DOCTOR__HS_DOCTOR_WORKPLACE_FKEY;
    public static final ForeignKey<Record, Record> HS_EXAM__HS_EXAM_ID_FKEY = ForeignKeys0.HS_EXAM__HS_EXAM_ID_FKEY;
    public static final ForeignKey<Record, Record> HS_QUALIFICATION__HS_QUALIFICATION_DOCTOR_FKEY = ForeignKeys0.HS_QUALIFICATION__HS_QUALIFICATION_DOCTOR_FKEY;
    public static final ForeignKey<Record, Record> HS_QUALIFICATION__HS_QUALIFICATION_EXAM_FKEY = ForeignKeys0.HS_QUALIFICATION__HS_QUALIFICATION_EXAM_FKEY;
    public static final ForeignKey<Record, Record> HS_REPORT__HS_REPORT_PRESCRIPTION_FKEY = ForeignKeys0.HS_REPORT__HS_REPORT_PRESCRIPTION_FKEY;
    public static final ForeignKey<Record, Record> HS_REPORT__HS_REPORT_DOCTOR_FKEY = ForeignKeys0.HS_REPORT__HS_REPORT_DOCTOR_FKEY;
    public static final ForeignKey<Record, Record> PERSON__PERSON_BIRTHPLACE_FKEY = ForeignKeys0.PERSON__PERSON_BIRTHPLACE_FKEY;
    public static final ForeignKey<Record, Record> PERSON__PERSON_RESIDENCE_FKEY = ForeignKeys0.PERSON__PERSON_RESIDENCE_FKEY;
    public static final ForeignKey<Record, Record> PR_HS_EXAM__PR_HS_EXAM_PRESCRIPTION_FKEY = ForeignKeys0.PR_HS_EXAM__PR_HS_EXAM_PRESCRIPTION_FKEY;
    public static final ForeignKey<Record, Record> PR_HS_EXAM__PR_HS_EXAM_EXAM_FKEY = ForeignKeys0.PR_HS_EXAM__PR_HS_EXAM_EXAM_FKEY;
    public static final ForeignKey<Record, Record> PR_MEDICINE__PR_MEDICINE_PRESCRIPTION_FKEY = ForeignKeys0.PR_MEDICINE__PR_MEDICINE_PRESCRIPTION_FKEY;
    public static final ForeignKey<Record, Record> PR_MEDICINE__PR_MEDICINE_MEDICINE_FKEY = ForeignKeys0.PR_MEDICINE__PR_MEDICINE_MEDICINE_FKEY;
    public static final ForeignKey<Record, Record> PR_SP_EXAM__PR_SP_EXAM_PRESCRIPTION_FKEY = ForeignKeys0.PR_SP_EXAM__PR_SP_EXAM_PRESCRIPTION_FKEY;
    public static final ForeignKey<Record, Record> PR_SP_EXAM__PR_SP_EXAM_EXAM_FKEY = ForeignKeys0.PR_SP_EXAM__PR_SP_EXAM_EXAM_FKEY;
    public static final ForeignKey<Record, Record> PRESCRIPTION__PRESCRIPTION_PLACE_FKEY = ForeignKeys0.PRESCRIPTION__PRESCRIPTION_PLACE_FKEY;
    public static final ForeignKey<Record, Record> PRESCRIPTION__PRESCRIPTION_CONCERNS_FKEY = ForeignKeys0.PRESCRIPTION__PRESCRIPTION_CONCERNS_FKEY;
    public static final ForeignKey<Record, Record> PROVINCE__PROVINCE_REGION_FKEY = ForeignKeys0.PROVINCE__PROVINCE_REGION_FKEY;
    public static final ForeignKey<Record, Record> SP_EXAM__SP_EXAM_ID_FKEY = ForeignKeys0.SP_EXAM__SP_EXAM_ID_FKEY;
    public static final ForeignKey<Record, Record> SP_QUALIFICATION__SP_QUALIFICATION_SPECIALIST_FKEY = ForeignKeys0.SP_QUALIFICATION__SP_QUALIFICATION_SPECIALIST_FKEY;
    public static final ForeignKey<Record, Record> SP_QUALIFICATION__SP_QUALIFICATION_EXAM_FKEY = ForeignKeys0.SP_QUALIFICATION__SP_QUALIFICATION_EXAM_FKEY;
    public static final ForeignKey<Record, Record> SP_REPORT__SP_REPORT_PRESCRIPTION_FKEY = ForeignKeys0.SP_REPORT__SP_REPORT_PRESCRIPTION_FKEY;
    public static final ForeignKey<Record, Record> SP_REPORT__SP_REPORT_SPECIALIST_FKEY = ForeignKeys0.SP_REPORT__SP_REPORT_SPECIALIST_FKEY;
    public static final ForeignKey<Record, Record> SPECIALIST__SPECIALIST_ID_FKEY = ForeignKeys0.SPECIALIST__SPECIALIST_ID_FKEY;
    public static final ForeignKey<Record, Record> TICKET__TICKET_PRESCRIPTION_FKEY = ForeignKeys0.TICKET__TICKET_PRESCRIPTION_FKEY;

    // -------------------------------------------------------------------------
    // [#1459] distribute members to avoid static initialisers > 64kb
    // -------------------------------------------------------------------------

    private static class Identities0 {
        public static Identity<Record, Long> IDENTITY_CITY = Internal.createIdentity(City.CITY, City.CITY.ID);
        public static Identity<Record, Long> IDENTITY_EXAMINATION = Internal.createIdentity(Examination.EXAMINATION, Examination.EXAMINATION.ID);
        public static Identity<Record, Long> IDENTITY_FOLLOWS = Internal.createIdentity(Follows.FOLLOWS, Follows.FOLLOWS.ID);
        public static Identity<Record, Long> IDENTITY_MEDICINE = Internal.createIdentity(Medicine.MEDICINE, Medicine.MEDICINE.ID);
        public static Identity<Record, Long> IDENTITY_PERSON = Internal.createIdentity(Person.PERSON, Person.PERSON.ID);
        public static Identity<Record, Long> IDENTITY_PRESCRIPTION = Internal.createIdentity(Prescription.PRESCRIPTION, Prescription.PRESCRIPTION.ID);
        public static Identity<Record, Long> IDENTITY_PROVINCE = Internal.createIdentity(Province.PROVINCE, Province.PROVINCE.ID);
        public static Identity<Record, Long> IDENTITY_REGION = Internal.createIdentity(Region.REGION, Region.REGION.ID);
    }

    private static class UniqueKeys0 {
        public static final UniqueKey<Record> AVATAR_PKEY = Internal.createUniqueKey(Avatar.AVATAR, "avatar_pkey", Avatar.AVATAR.ID);
        public static final UniqueKey<Record> AVATAR_URL_KEY = Internal.createUniqueKey(Avatar.AVATAR, "avatar_url_key", Avatar.AVATAR.URL);
        public static final UniqueKey<Record> CITY_PKEY = Internal.createUniqueKey(City.CITY, "city_pkey", City.CITY.ID);
        public static final UniqueKey<Record> EXAMINATION_PKEY = Internal.createUniqueKey(Examination.EXAMINATION, "examination_pkey", Examination.EXAMINATION.ID);
        public static final UniqueKey<Record> EXAMINATION_NAME_KEY = Internal.createUniqueKey(Examination.EXAMINATION, "examination_name_key", Examination.EXAMINATION.NAME);
        public static final UniqueKey<Record> FOLLOWS_PKEY = Internal.createUniqueKey(Follows.FOLLOWS, "follows_pkey", Follows.FOLLOWS.ID);
        public static final UniqueKey<Record> GENERAL_PKEY = Internal.createUniqueKey(General.GENERAL, "general_pkey", General.GENERAL.ID);
        public static final UniqueKey<Record> HS_ADMIN_PKEY = Internal.createUniqueKey(HsAdmin.HS_ADMIN, "hs_admin_pkey", HsAdmin.HS_ADMIN.ID);
        public static final UniqueKey<Record> HS_DOCTOR_PKEY = Internal.createUniqueKey(HsDoctor.HS_DOCTOR, "hs_doctor_pkey", HsDoctor.HS_DOCTOR.ID);
        public static final UniqueKey<Record> HS_EXAM_PKEY = Internal.createUniqueKey(HsExam.HS_EXAM, "hs_exam_pkey", HsExam.HS_EXAM.ID);
        public static final UniqueKey<Record> HS_QUALIFICATION_PKEY = Internal.createUniqueKey(HsQualification.HS_QUALIFICATION, "hs_qualification_pkey", HsQualification.HS_QUALIFICATION.DOCTOR, HsQualification.HS_QUALIFICATION.EXAM);
        public static final UniqueKey<Record> HS_REPORT_PKEY = Internal.createUniqueKey(HsReport.HS_REPORT, "hs_report_pkey", HsReport.HS_REPORT.PRESCRIPTION);
        public static final UniqueKey<Record> MEDICINE_PKEY = Internal.createUniqueKey(Medicine.MEDICINE, "medicine_pkey", Medicine.MEDICINE.ID);
        public static final UniqueKey<Record> MEDICINE_NAME_KEY = Internal.createUniqueKey(Medicine.MEDICINE, "medicine_name_key", Medicine.MEDICINE.NAME);
        public static final UniqueKey<Record> PERSON_PKEY = Internal.createUniqueKey(Person.PERSON, "person_pkey", Person.PERSON.ID);
        public static final UniqueKey<Record> PR_HS_EXAM_PKEY = Internal.createUniqueKey(PrHsExam.PR_HS_EXAM, "pr_hs_exam_pkey", PrHsExam.PR_HS_EXAM.PRESCRIPTION);
        public static final UniqueKey<Record> PR_MEDICINE_PKEY = Internal.createUniqueKey(PrMedicine.PR_MEDICINE, "pr_medicine_pkey", PrMedicine.PR_MEDICINE.PRESCRIPTION);
        public static final UniqueKey<Record> PR_SP_EXAM_PKEY = Internal.createUniqueKey(PrSpExam.PR_SP_EXAM, "pr_sp_exam_pkey", PrSpExam.PR_SP_EXAM.PRESCRIPTION);
        public static final UniqueKey<Record> PRESCRIPTION_PKEY = Internal.createUniqueKey(Prescription.PRESCRIPTION, "prescription_pkey", Prescription.PRESCRIPTION.ID);
        public static final UniqueKey<Record> PROVINCE_PKEY = Internal.createUniqueKey(Province.PROVINCE, "province_pkey", Province.PROVINCE.ID);
        public static final UniqueKey<Record> REGION_PKEY = Internal.createUniqueKey(Region.REGION, "region_pkey", Region.REGION.ID);
        public static final UniqueKey<Record> SP_EXAM_PKEY = Internal.createUniqueKey(SpExam.SP_EXAM, "sp_exam_pkey", SpExam.SP_EXAM.ID);
        public static final UniqueKey<Record> SP_QUALIFICATION_PKEY = Internal.createUniqueKey(SpQualification.SP_QUALIFICATION, "sp_qualification_pkey", SpQualification.SP_QUALIFICATION.SPECIALIST, SpQualification.SP_QUALIFICATION.EXAM);
        public static final UniqueKey<Record> SP_REPORT_PKEY = Internal.createUniqueKey(SpReport.SP_REPORT, "sp_report_pkey", SpReport.SP_REPORT.PRESCRIPTION);
        public static final UniqueKey<Record> SPECIALIST_PKEY = Internal.createUniqueKey(Specialist.SPECIALIST, "specialist_pkey", Specialist.SPECIALIST.ID);
        public static final UniqueKey<Record> TICKET_PKEY = Internal.createUniqueKey(Ticket.TICKET, "ticket_pkey", Ticket.TICKET.PRESCRIPTION);
    }

    private static class ForeignKeys0 {
        public static final ForeignKey<Record, Record> AVATAR__AVATAR_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PERSON_PKEY, Avatar.AVATAR, "avatar__avatar_id_fkey", Avatar.AVATAR.ID);
        public static final ForeignKey<Record, Record> CITY__CITY_PROVINCE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PROVINCE_PKEY, City.CITY, "city__city_province_fkey", City.CITY.PROVINCE);
        public static final ForeignKey<Record, Record> FOLLOWS__FOLLOWS_PATIENT_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PERSON_PKEY, Follows.FOLLOWS, "follows__follows_patient_fkey", Follows.FOLLOWS.PATIENT);
        public static final ForeignKey<Record, Record> FOLLOWS__FOLLOWS_GENERAL_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.GENERAL_PKEY, Follows.FOLLOWS, "follows__follows_general_fkey", Follows.FOLLOWS.GENERAL);
        public static final ForeignKey<Record, Record> GENERAL__GENERAL_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PERSON_PKEY, General.GENERAL, "general__general_id_fkey", General.GENERAL.ID);
        public static final ForeignKey<Record, Record> GENERAL__GENERAL_WORKPLACE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PROVINCE_PKEY, General.GENERAL, "general__general_workplace_fkey", General.GENERAL.WORKPLACE);
        public static final ForeignKey<Record, Record> HS_ADMIN__HS_ADMIN_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PERSON_PKEY, HsAdmin.HS_ADMIN, "hs_admin__hs_admin_id_fkey", HsAdmin.HS_ADMIN.ID);
        public static final ForeignKey<Record, Record> HS_ADMIN__HS_ADMIN_WORKPLACE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PROVINCE_PKEY, HsAdmin.HS_ADMIN, "hs_admin__hs_admin_workplace_fkey", HsAdmin.HS_ADMIN.WORKPLACE);
        public static final ForeignKey<Record, Record> HS_DOCTOR__HS_DOCTOR_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PERSON_PKEY, HsDoctor.HS_DOCTOR, "hs_doctor__hs_doctor_id_fkey", HsDoctor.HS_DOCTOR.ID);
        public static final ForeignKey<Record, Record> HS_DOCTOR__HS_DOCTOR_WORKPLACE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PROVINCE_PKEY, HsDoctor.HS_DOCTOR, "hs_doctor__hs_doctor_workplace_fkey", HsDoctor.HS_DOCTOR.WORKPLACE);
        public static final ForeignKey<Record, Record> HS_EXAM__HS_EXAM_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.EXAMINATION_PKEY, HsExam.HS_EXAM, "hs_exam__hs_exam_id_fkey", HsExam.HS_EXAM.ID);
        public static final ForeignKey<Record, Record> HS_QUALIFICATION__HS_QUALIFICATION_DOCTOR_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.HS_DOCTOR_PKEY, HsQualification.HS_QUALIFICATION, "hs_qualification__hs_qualification_doctor_fkey", HsQualification.HS_QUALIFICATION.DOCTOR);
        public static final ForeignKey<Record, Record> HS_QUALIFICATION__HS_QUALIFICATION_EXAM_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.HS_EXAM_PKEY, HsQualification.HS_QUALIFICATION, "hs_qualification__hs_qualification_exam_fkey", HsQualification.HS_QUALIFICATION.EXAM);
        public static final ForeignKey<Record, Record> HS_REPORT__HS_REPORT_PRESCRIPTION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PR_HS_EXAM_PKEY, HsReport.HS_REPORT, "hs_report__hs_report_prescription_fkey", HsReport.HS_REPORT.PRESCRIPTION);
        public static final ForeignKey<Record, Record> HS_REPORT__HS_REPORT_DOCTOR_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.HS_DOCTOR_PKEY, HsReport.HS_REPORT, "hs_report__hs_report_doctor_fkey", HsReport.HS_REPORT.DOCTOR);
        public static final ForeignKey<Record, Record> PERSON__PERSON_BIRTHPLACE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.CITY_PKEY, Person.PERSON, "person__person_birthplace_fkey", Person.PERSON.BIRTHPLACE);
        public static final ForeignKey<Record, Record> PERSON__PERSON_RESIDENCE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.CITY_PKEY, Person.PERSON, "person__person_residence_fkey", Person.PERSON.RESIDENCE);
        public static final ForeignKey<Record, Record> PR_HS_EXAM__PR_HS_EXAM_PRESCRIPTION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PRESCRIPTION_PKEY, PrHsExam.PR_HS_EXAM, "pr_hs_exam__pr_hs_exam_prescription_fkey", PrHsExam.PR_HS_EXAM.PRESCRIPTION);
        public static final ForeignKey<Record, Record> PR_HS_EXAM__PR_HS_EXAM_EXAM_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.HS_EXAM_PKEY, PrHsExam.PR_HS_EXAM, "pr_hs_exam__pr_hs_exam_exam_fkey", PrHsExam.PR_HS_EXAM.EXAM);
        public static final ForeignKey<Record, Record> PR_MEDICINE__PR_MEDICINE_PRESCRIPTION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PRESCRIPTION_PKEY, PrMedicine.PR_MEDICINE, "pr_medicine__pr_medicine_prescription_fkey", PrMedicine.PR_MEDICINE.PRESCRIPTION);
        public static final ForeignKey<Record, Record> PR_MEDICINE__PR_MEDICINE_MEDICINE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.MEDICINE_PKEY, PrMedicine.PR_MEDICINE, "pr_medicine__pr_medicine_medicine_fkey", PrMedicine.PR_MEDICINE.MEDICINE);
        public static final ForeignKey<Record, Record> PR_SP_EXAM__PR_SP_EXAM_PRESCRIPTION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PRESCRIPTION_PKEY, PrSpExam.PR_SP_EXAM, "pr_sp_exam__pr_sp_exam_prescription_fkey", PrSpExam.PR_SP_EXAM.PRESCRIPTION);
        public static final ForeignKey<Record, Record> PR_SP_EXAM__PR_SP_EXAM_EXAM_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.SP_EXAM_PKEY, PrSpExam.PR_SP_EXAM, "pr_sp_exam__pr_sp_exam_exam_fkey", PrSpExam.PR_SP_EXAM.EXAM);
        public static final ForeignKey<Record, Record> PRESCRIPTION__PRESCRIPTION_PLACE_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PROVINCE_PKEY, Prescription.PRESCRIPTION, "prescription__prescription_place_fkey", Prescription.PRESCRIPTION.PLACE);
        public static final ForeignKey<Record, Record> PRESCRIPTION__PRESCRIPTION_CONCERNS_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.FOLLOWS_PKEY, Prescription.PRESCRIPTION, "prescription__prescription_concerns_fkey", Prescription.PRESCRIPTION.CONCERNS);
        public static final ForeignKey<Record, Record> PROVINCE__PROVINCE_REGION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.REGION_PKEY, Province.PROVINCE, "province__province_region_fkey", Province.PROVINCE.REGION);
        public static final ForeignKey<Record, Record> SP_EXAM__SP_EXAM_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.EXAMINATION_PKEY, SpExam.SP_EXAM, "sp_exam__sp_exam_id_fkey", SpExam.SP_EXAM.ID);
        public static final ForeignKey<Record, Record> SP_QUALIFICATION__SP_QUALIFICATION_SPECIALIST_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.SPECIALIST_PKEY, SpQualification.SP_QUALIFICATION, "sp_qualification__sp_qualification_specialist_fkey", SpQualification.SP_QUALIFICATION.SPECIALIST);
        public static final ForeignKey<Record, Record> SP_QUALIFICATION__SP_QUALIFICATION_EXAM_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.SP_EXAM_PKEY, SpQualification.SP_QUALIFICATION, "sp_qualification__sp_qualification_exam_fkey", SpQualification.SP_QUALIFICATION.EXAM);
        public static final ForeignKey<Record, Record> SP_REPORT__SP_REPORT_PRESCRIPTION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PR_SP_EXAM_PKEY, SpReport.SP_REPORT, "sp_report__sp_report_prescription_fkey", SpReport.SP_REPORT.PRESCRIPTION);
        public static final ForeignKey<Record, Record> SP_REPORT__SP_REPORT_SPECIALIST_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.SPECIALIST_PKEY, SpReport.SP_REPORT, "sp_report__sp_report_specialist_fkey", SpReport.SP_REPORT.SPECIALIST);
        public static final ForeignKey<Record, Record> SPECIALIST__SPECIALIST_ID_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PERSON_PKEY, Specialist.SPECIALIST, "specialist__specialist_id_fkey", Specialist.SPECIALIST.ID);
        public static final ForeignKey<Record, Record> TICKET__TICKET_PRESCRIPTION_FKEY = Internal.createForeignKey(dunder.mifflin.persistance.jdbc.jooq.Keys.PRESCRIPTION_PKEY, Ticket.TICKET, "ticket__ticket_prescription_fkey", Ticket.TICKET.PRESCRIPTION);
    }
}
