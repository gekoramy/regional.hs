INSERT INTO sp_report(ticket, date, note)
SELECT t.prescription                  AS ticket,
       t.date + interval '3 days'      AS date,
       concat('Risultato di ', e.name) AS note
FROM sp_ticket t
         INNER JOIN sp_prescription p on t.prescription = p.prescription
         INNER JOIN examination e on p.exam = e.id
LIMIT 285;

INSERT INTO hs_report(ticket, date, note)
SELECT t.prescription                  AS ticket,
       t.date + interval '3 days'      AS date,
       concat('Risultato di ', e.name) AS note
FROM hs_ticket t
         INNER JOIN hs_prescription p on t.prescription = p.prescription
         INNER JOIN examination e on p.exam = e.id
LIMIT 285;