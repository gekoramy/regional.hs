INSERT INTO sp_ticket(prescription, responsible, date, amount)
SELECT prescription.id                      AS prescription,
       MIN(r.id)                            AS responsible,
       prescription.date + interval '3 day' AS date,
       50.0                                 AS amount
FROM sp_qualification q
         INNER JOIN sp_prescription p on q.exam = p.exam
         INNER JOIN specialist r on q.specialist = r.id
         INNER JOIN prescription on p.prescription = prescription.id
         INNER JOIN follows f on prescription.concerns = f.id
WHERE f.patient <> r.id
GROUP BY prescription.id
ORDER BY date
LIMIT 290;

INSERT INTO hs_ticket(prescription, responsible, date, amount)
SELECT prescription.id                      AS prescription,
       MIN(r.id)                            AS responsible,
       prescription.date + interval '3 day' AS date,
       11.0                                 AS amount
FROM hs_qualification q
         INNER JOIN hs_prescription p on q.exam = p.exam
         INNER JOIN hs_doctor r on q.doctor = r.id
         INNER JOIN prescription on p.prescription = prescription.id
         INNER JOIN follows f on prescription.concerns = f.id
WHERE f.patient <> r.id
GROUP BY prescription.id
ORDER BY date
LIMIT 290;

INSERT INTO medicine_ticket(prescription, date, amount)
SELECT prescription.id                      AS prescription,
       prescription.date + interval '5 day' AS date,
       3.0                                  AS amount
FROM medicine_prescription p
         INNER JOIN prescription on p.prescription = prescription.id
ORDER BY date
LIMIT 1250;