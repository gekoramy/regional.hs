-- region DROP

DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO public;

-- region TABLES

CREATE TABLE medicine
(
    id   BIGSERIAL NOT NULL,
    name TEXT      NOT NULL UNIQUE,
    info TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE examination
(
    id   BIGSERIAL NOT NULL,
    name TEXT      NOT NULL UNIQUE,
    info TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE sp_exam
(
    id BIGINT NOT NULL REFERENCES examination (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE hs_exam
(
    id BIGINT NOT NULL REFERENCES examination (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE region
(
    id   BIGSERIAL NOT NULL,
    name TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE province
(
    id           BIGSERIAL NOT NULL,
    region       BIGINT    NOT NULL REFERENCES region (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    name         TEXT      NOT NULL,
    abbreviation TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE city
(
    id       BIGSERIAL NOT NULL,
    province BIGINT    NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    name     TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE person
(
    id         BIGSERIAL NOT NULL,
    email      TEXT      NOT NULL,
    password   TEXT      NOT NULL,
    name       TEXT      NOT NULL,
    surname    TEXT      NOT NULL,
    birthday   date      NOT NULL,
    birthplace BIGINT    NOT NULL REFERENCES city (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    fc         TEXT      NOT NULL,
    gender     BOOLEAN   NOT NULL,
    residence  BIGINT    NOT NULL REFERENCES city (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE avatar
(
    id  BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE CASCADE,
    url TEXT   NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE general
(
    id        BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE CASCADE,
    workplace BIGINT NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE hs_doctor
(
    id        BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE CASCADE,
    workplace BIGINT NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE hs_admin
(
    id        BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE CASCADE,
    workplace BIGINT NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE specialist
(
    id BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
);

CREATE TABLE follows
(
    id      BIGSERIAL   NOT NULL,
    patient BIGINT      NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    general BIGINT      NOT NULL REFERENCES general (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    since   TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CHECK ((patient <> general)),
    PRIMARY KEY (id)
);

CREATE TABLE prescription
(
    id       BIGSERIAL                             NOT NULL,
    place    BIGINT                                NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    date     TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    concerns BIGINT                                NOT NULL REFERENCES follows (id) ON UPDATE RESTRICT ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE medicine_prescription
(
    prescription BIGINT  NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE CASCADE,
    medicine     BIGINT  NOT NULL REFERENCES medicine (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    quantity     integer NOT NULL DEFAULT 1,
    PRIMARY KEY (prescription)
);

CREATE TABLE sp_prescription
(
    prescription BIGINT NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE CASCADE,
    exam         BIGINT NOT NULL REFERENCES sp_exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (prescription)
);

CREATE TABLE hs_prescription
(
    prescription BIGINT NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE CASCADE,
    exam         BIGINT NOT NULL REFERENCES hs_exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (prescription)
);

CREATE TABLE sp_qualification
(
    specialist BIGINT NOT NULL REFERENCES specialist (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    exam       BIGINT NOT NULL REFERENCES sp_exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (specialist, exam)
);

CREATE TABLE hs_qualification
(
    doctor BIGINT NOT NULL REFERENCES hs_doctor (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    exam   BIGINT NOT NULL REFERENCES hs_exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (doctor, exam)
);

CREATE TABLE sp_ticket
(
    prescription BIGINT        NOT NULL REFERENCES sp_prescription (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    responsible  BIGINT        NOT NULL REFERENCES specialist (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    date         TIMESTAMPTZ   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount       numeric(9, 2) NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE hs_ticket
(
    prescription BIGINT        NOT NULL REFERENCES hs_prescription (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    responsible  BIGINT        NOT NULL REFERENCES hs_doctor (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    date         TIMESTAMPTZ   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount       numeric(9, 2) NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE medicine_ticket
(
    prescription BIGINT        NOT NULL REFERENCES medicine_prescription (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    date         TIMESTAMPTZ   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount       numeric(9, 2) NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE sp_report
(
    ticket BIGINT      NOT NULL REFERENCES sp_ticket (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    date   TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    note   TEXT        NOT NULL,
    PRIMARY KEY (ticket)
);

CREATE TABLE hs_report
(
    ticket BIGINT      NOT NULL REFERENCES hs_ticket (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    date   TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    note   TEXT        NOT NULL,
    PRIMARY KEY (ticket)
);

CREATE TABLE token
(
    person     BIGINT      NOT NULL REFERENCES person ON UPDATE CASCADE ON DELETE CASCADE,
    token      TEXT        NOT NULL,
    expiration TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP + interval '2 hours',
    PRIMARY KEY (person)
);

-- endregion

-- region INDEXES

CREATE INDEX follows_since_index ON follows USING btree (since DESC);

-- endregion