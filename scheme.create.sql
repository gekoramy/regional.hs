-- region TABLES

CREATE TABLE medicine
(
    id   BIGSERIAL NOT NULL,
    name TEXT      NOT NULL UNIQUE,
    info TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE exam
(
    id   BIGSERIAL NOT NULL,
    name TEXT      NOT NULL UNIQUE,
    info TEXT      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE hs_exam
(
    id   BIGSERIAL NOT NULL,
    name TEXT      NOT NULL UNIQUE,
    info TEXT      NOT NULL,
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
    id  BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    url TEXT   NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE general
(
    id        BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    workplace BIGINT NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE hs_doctor
(
    id        BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    workplace BIGINT NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE hs_admin
(
    id        BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    workplace BIGINT NOT NULL REFERENCES province (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE specialist
(
    id BIGINT NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (id)
);

CREATE TABLE follows
(
    id      BIGSERIAL                             NOT NULL,
    patient BIGINT                                NOT NULL REFERENCES person (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    general BIGINT                                NOT NULL REFERENCES general (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    since   TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
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

CREATE TABLE ticket
(
    prescription BIGINT                                NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    date         TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    amount       numeric(9, 2)                         NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE pr_medicine
(
    prescription BIGINT            NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    medicine     BIGINT            NOT NULL REFERENCES medicine (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    quantity     integer DEFAULT 1 NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE pr_exam
(
    prescription BIGINT NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    exam         BIGINT NOT NULL REFERENCES exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (prescription)
);

CREATE TABLE pr_hs_exam
(
    prescription BIGINT NOT NULL REFERENCES prescription (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    exam         BIGINT NOT NULL REFERENCES hs_exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (prescription)
);

CREATE TABLE report
(
    prescription BIGINT                                NOT NULL REFERENCES pr_exam (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    specialist   BIGINT                                NOT NULL REFERENCES specialist (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    date         TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    note         TEXT                                  NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE hs_report
(
    prescription BIGINT                                NOT NULL REFERENCES pr_hs_exam (prescription) ON UPDATE CASCADE ON DELETE RESTRICT,
    doctor       BIGINT                                NOT NULL REFERENCES hs_doctor (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    date         TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    note         TEXT                                  NOT NULL,
    PRIMARY KEY (prescription)
);

CREATE TABLE qualification
(
    specialist BIGINT NOT NULL REFERENCES specialist (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    exam       BIGINT NOT NULL REFERENCES exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (specialist, exam)
);

CREATE TABLE hs_qualification
(
    doctor BIGINT NOT NULL REFERENCES hs_doctor (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    exam   BIGINT NOT NULL REFERENCES hs_exam (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    PRIMARY KEY (doctor, exam)
);

-- endregion

-- region INDEXES

CREATE INDEX follows_since_index ON follows USING btree (since DESC);

-- endregion