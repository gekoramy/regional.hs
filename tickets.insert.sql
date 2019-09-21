INSERT INTO ticket(prescription, date, amount)
SELECT prescription, (P.date + interval '3 day') AS date, 50.0 AS amount
FROM pr_exam
         INNER JOIN prescription P ON pr_exam.prescription = P.id
ORDER BY P.date
LIMIT 250;

INSERT INTO ticket(prescription, date, amount)
SELECT prescription, (P.date + interval '3 day') AS date, 11.0 AS amount
FROM pr_hs_exam
         INNER JOIN prescription P ON pr_hs_exam.prescription = P.id
ORDER BY P.date
LIMIT 100;

INSERT INTO ticket(prescription, date, amount)
SELECT prescription, (P.date + interval '3 day') AS date, 3.0 AS amount
FROM pr_medicine
         INNER JOIN prescription P ON pr_medicine.prescription = P.id
ORDER BY P.date
LIMIT 100;