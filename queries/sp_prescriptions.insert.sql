WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-18T07:08:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-11T07:58:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inibitore attivatore del plasminogeno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-04T07:57:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-18T17:25:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-02T12:46:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-13T17:41:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-19T10:59:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-04T15:40:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-13T07:35:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-05T07:13:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-13T07:59:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-31T12:03:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-09T11:38:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-08T18:35:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-17T14:47:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-23T16:38:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-30T16:31:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-04T17:08:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-22T18:34:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-06T12:50:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-08T19:59:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-12T16:01:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-10T18:28:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-28T12:39:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-08T19:34:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-08T09:10:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-26T07:02:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-08T15:34:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-03T14:01:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-27T13:14:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-10T17:54:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-05T09:15:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-19T10:30:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-10T12:15:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-28T15:53:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-24T08:12:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-28T14:38:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-12T18:26:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-24T12:21:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-12T17:52:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-09T11:17:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-19T11:38:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-29T13:52:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-07T14:30:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-11T09:44:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-30T10:48:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-01T17:25:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-10T12:38:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-19T13:55:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-15T15:02:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-12T11:43:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-24T09:44:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-01T13:59:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-12T11:40:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-14T13:38:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-08T08:19:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-27T15:32:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-26T15:57:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-22T09:56:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-02T09:06:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-21T12:21:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-07T16:59:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-21T10:27:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-09T18:21:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-22T16:05:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-03T14:45:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-18T19:03:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-04T12:43:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-21T13:54:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-14T14:18:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-27T12:06:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-21T18:19:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-29T08:05:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-21T19:39:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-10T17:38:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-22T17:47:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-24T11:33:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-23T19:31:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-23T13:47:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-24T17:08:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-03T07:04:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-03T12:57:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-14T09:37:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-24T18:39:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-29T13:31:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde non radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-03T15:03:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-15T17:19:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-29T19:41:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-03T09:14:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-14T07:26:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-11T19:21:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-17T14:13:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-20T15:20:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-03T10:52:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-18T19:08:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-31T13:08:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-28T11:28:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-22T16:23:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-27T12:14:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-09T16:39:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-06T16:52:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-12T17:24:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-28T17:18:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-05T17:35:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-01T13:50:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-21T18:02:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-30T09:58:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-30T19:03:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-11T15:50:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-11T08:54:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-15T15:22:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-30T11:33:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-14T07:56:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde non radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-04T11:13:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-02T14:40:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-03T11:37:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-25T11:47:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-13T16:10:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-06T09:26:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-08T15:28:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-09T16:40:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-27T15:38:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-30T17:12:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-10T12:24:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-24T08:07:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-22T18:05:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-29T11:54:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-31T11:37:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-24T16:58:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-14T16:30:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-07T12:27:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-08T19:17:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-18T16:51:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-30T17:35:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-07T15:13:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-25T10:32:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-04T17:32:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-07T11:45:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-15T15:28:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-06T18:02:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-25T18:44:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-13T10:31:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inibitore attivatore del plasminogeno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-03T07:37:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-19T14:02:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-31T19:56:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-13T19:25:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-06T17:41:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-21T12:28:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-29T10:07:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-19T10:43:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-30T15:35:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-15T12:51:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-04T10:29:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-08T19:31:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-27T10:49:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-15T13:30:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-11T18:57:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-23T14:14:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-25T14:12:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-29T09:28:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-12T07:27:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-09T08:13:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-05T10:46:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-24T17:50:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-16T09:09:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-27T19:55:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-28T17:21:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-28T16:46:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-10T13:45:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-09T13:53:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-27T11:59:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-01T16:50:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-28T15:07:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-17T18:45:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-13T11:54:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-27T11:37:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-02T17:44:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-07T17:47:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-07T19:39:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-08T07:27:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-29T12:51:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-26T17:14:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-26T14:46:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-15T15:31:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-10T14:12:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-28T15:39:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-04T17:26:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-12T08:52:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-29T13:06:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-19T14:45:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-09T14:58:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-24T08:29:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-17T07:51:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-21T10:22:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-14T14:25:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-21T17:34:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-15T10:10:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inibitore attivatore del plasminogeno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-15T17:23:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-06T07:08:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-21T11:51:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-23T18:27:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-07T15:01:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-22T13:58:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-28T09:49:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-07T10:20:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-04T13:52:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-18T11:29:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-14T16:25:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-31T18:54:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-23T14:28:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-09T19:20:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-21T11:34:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-04T16:43:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-18T13:30:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-12T13:18:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-31T11:00:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-03T07:44:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-29T09:22:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-23T14:17:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-02T10:10:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-03T19:40:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-03T12:32:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-04T14:27:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-01T13:03:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-06T18:29:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-01T18:35:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-18T16:47:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-30T10:52:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-27T14:06:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-31T11:55:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-14T14:17:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-14T15:03:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-30T16:13:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-06T12:20:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-07T10:06:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-16T18:11:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-17T08:39:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-15T17:30:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-02T14:19:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-08T16:39:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-29T11:14:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-02T18:51:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-09T17:20:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-30T08:50:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-09T07:53:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-17T12:44:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-10T18:10:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-10T07:21:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-03T10:03:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-05T16:01:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-31T10:31:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-10T18:59:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-30T16:20:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-24T12:30:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-23T07:11:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-29T16:36:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-02T18:09:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inibitore attivatore del plasminogeno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-24T10:25:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-19T12:34:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-24T18:19:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-13T11:06:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi acida') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-13T18:15:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-25T19:34:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-24T07:52:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-24T12:06:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-05T12:16:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trigliceridi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-04T10:29:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-01T08:20:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-23T11:26:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-05T15:11:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-21T18:03:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-14T13:16:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-30T19:36:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-13T11:27:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-13T19:01:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-13T12:01:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-05T10:31:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-09T07:08:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-27T17:08:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-15T16:09:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-02T13:10:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-17T12:39:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-03T17:09:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-02T11:26:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-04T13:27:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-10T17:09:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-23T08:02:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-16T16:55:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-19T09:10:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-14T13:19:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-12T12:07:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-21T14:02:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-01T14:52:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-24T10:44:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-24T14:57:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-05T18:08:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-09T18:42:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-17T13:03:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-05T14:52:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-08T11:01:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-13T16:55:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-20T16:50:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-09T09:59:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-14T12:29:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-20T10:03:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-15T17:07:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-24T08:02:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-31T09:39:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-01T09:06:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-06T15:42:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-05T12:06:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-13T17:42:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-05T15:47:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-06T19:09:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-21T09:17:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-10T10:16:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-23T11:33:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-20T13:59:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-26T08:25:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-11T15:10:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-24T08:37:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-12T10:09:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-11T11:36:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-01T14:20:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-07T15:20:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-09T09:22:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-05T08:57:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-10T17:10:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-13T19:57:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-13T15:22:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-07T17:25:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-22T09:28:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-13T18:33:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-14T10:08:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-21T07:55:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-27T10:08:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-28T10:11:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-03T08:37:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-30T17:22:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde non radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-07T11:28:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trigliceridi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-05T09:19:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-30T15:10:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-10T14:40:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-05T11:57:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-16T14:41:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-11T14:36:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-11T16:55:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-25T18:23:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO sp_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;