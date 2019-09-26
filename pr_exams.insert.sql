WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-08T08:42:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-18T15:22:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-09-13T08:45:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-03T09:39:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-14T11:27:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-07T10:34:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-22T13:07:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-28T18:12:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-25T17:39:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-03T10:23:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-05-05T18:06:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-23T16:37:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-25T07:15:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-27T08:35:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-02T17:46:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-22T09:06:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-04-07T13:38:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-12-08T17:29:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-11-08T18:30:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-02T08:42:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-30T08:32:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-30T09:02:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-01-05T09:14:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-06T12:55:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-21T11:32:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-09T13:28:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-01T07:58:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-25T17:57:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-18T19:29:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trigliceridi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-11T09:16:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-02T17:51:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-14T12:03:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-16T14:05:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-10-31T07:25:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-23T08:42:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-28T16:58:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-12T12:12:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-19T17:35:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-07-27T13:57:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-30T17:31:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-11-29T09:47:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-29T09:37:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-11-21T17:06:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-30T10:21:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-29T10:53:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-26T10:15:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-06-25T13:09:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trigliceridi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-04T14:21:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-30T08:34:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-17T14:02:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-01-06T09:25:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-09-27T17:32:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-15T07:10:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-03-30T18:48:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-30T07:37:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-29T16:44:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-12T13:06:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-03-27T15:41:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-25T14:30:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-24T18:21:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-31T14:22:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-07T11:09:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-19T07:47:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-09T15:06:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-24T14:25:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-12-28T08:52:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-01T12:48:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-09T13:42:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-13T10:13:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-01T17:12:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-23T19:49:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-22T16:13:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-01-10T14:47:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-11T10:54:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-11-04T13:24:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-17T13:57:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-09-08T16:44:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-14T18:04:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-08T18:12:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-11-25T19:01:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-06T10:02:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-16T14:03:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-12-12T16:57:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-30T07:56:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-07T15:30:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-12T13:32:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-28T16:59:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-12T08:18:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-19T12:00:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-07T15:10:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-24T12:24:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-26T14:37:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-11-30T17:53:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-17T13:27:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-15T17:30:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-13T08:15:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-08T17:06:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-11T08:13:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-24T12:45:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inibitore attivatore del plasminogeno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-17T13:39:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-21T17:01:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-11-15T11:38:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-03T16:21:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-08-28T15:22:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-29T13:55:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-06T14:27:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-11T18:23:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-17T18:35:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-01T18:18:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-06T18:45:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-09T08:33:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-24T12:47:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-13T16:23:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-30T17:37:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-18T18:42:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-18T11:18:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-23T15:35:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-08-01T11:04:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-30T14:41:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-22T19:02:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inibitore attivatore del plasminogeno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-02T17:03:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-26T13:39:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-11-12T18:11:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-24T08:22:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-08T13:23:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-11T09:40:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-12-03T07:43:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lattato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-28T14:42:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-22T13:45:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi acida') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-11-28T15:51:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-24T16:02:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-08T19:42:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ferro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-31T18:11:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-09T08:26:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-14T19:25:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-08T12:58:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-10-29T07:44:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-20T17:14:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-22T14:37:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-02T14:01:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-22T18:32:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-29T11:38:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-15T16:27:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-29T11:54:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-13T12:38:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-01T19:36:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-10T15:40:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-29T16:21:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-21T10:00:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-22T14:35:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-06T13:00:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-23T08:32:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-22T07:10:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-26T07:50:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-07T11:19:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-09-18T10:38:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-19T12:00:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-25T09:17:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-20T15:31:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-03-15T14:23:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-17T12:48:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-01T08:28:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aldolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-03T08:35:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-09T13:30:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-20T07:10:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-11T18:01:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-24T13:34:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-13T19:44:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-20T18:34:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-27T10:06:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-16T14:43:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-22T10:14:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-01T09:36:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-09T08:41:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-28T09:37:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-30T18:22:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Beta tromboglobulina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-09-08T19:41:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-09-17T18:45:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-07T13:26:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-13T19:43:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-30T16:07:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-24T14:34:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-10T08:11:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-11T15:21:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-29T07:56:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-30T12:00:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-19T19:53:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-04T17:14:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi acida') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-13T12:27:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-21T09:16:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinchinasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-13T18:56:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-21T07:53:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-08-01T12:48:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-16T16:31:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-04T11:46:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-07T18:25:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-22T07:47:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-27T13:52:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-18T07:04:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-05T12:39:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reverse dot blot') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-19T16:07:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Densitometria ossera') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-27T18:37:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-14T12:49:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-26T11:58:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-10T13:05:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-06-24T13:55:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigeni HLA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-29T07:38:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-12-10T19:43:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-20T07:46:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-15T14:59:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alanina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-09T10:08:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-12-24T12:24:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-19T14:08:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido 5 idrossi 3 indolacetico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-02-17T15:30:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-18T07:48:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-04T19:11:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi acida') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-09-21T15:59:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-01T17:15:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-29T10:17:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-19T12:26:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-14T09:15:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Proteine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-07T13:38:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sodio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-20T14:05:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-21T08:37:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-11T15:13:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-17T19:29:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-01T07:14:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Eparina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-05-14T13:43:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-01-17T12:20:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Enolasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-08T07:50:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cromo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-01T08:27:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-27T12:22:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-25T15:14:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-08-26T19:24:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 19.9') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-28T19:14:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-05T16:31:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-05T16:27:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-20T10:22:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-18T10:04:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-11T17:10:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-08-02T15:52:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Gruppo sanguigno ABO e RH (D)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-12-07T12:04:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carcino embrionario') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-13T12:47:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-16T09:12:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Lipasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-31T16:41:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Urato Urea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-15T09:00:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-17T17:03:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina isoenzima osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-10T17:49:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-05T12:37:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-09T11:04:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-06T07:34:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-21T18:38:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-31T11:44:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-16T17:31:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-22T17:22:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-18T10:16:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Aspartato aminotrasferiasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-08T18:01:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-06T12:35:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-17T11:48:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Antigeni Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-18T09:27:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfato inorganico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-25T11:01:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) muscoloscheletrica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-12-27T11:57:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Deossicortisolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-10T15:16:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi di polimorfismi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-02T10:43:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-10-25T10:03:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ala deidrasi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-24T10:05:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-21T19:20:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-18T10:01:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fenotipo RH') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-31T11:08:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Creatinina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-03-25T10:34:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-16T09:50:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo HDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-01-10T11:49:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per fragilita cromosomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-08T15:24:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Albumina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-06T17:08:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ige specifiche allergologiche screening qualitativo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-07T12:01:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-12T11:31:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colesterolo LDL') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-17T09:11:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Mioglobina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-24T15:17:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-03-31T19:17:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-02T08:31:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-15T10:47:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-13T09:32:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-12T07:20:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Acido delta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-05T12:00:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-22T15:10:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 15.3') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-25T12:33:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde non radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-07T11:42:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con ibridazione sonde radiomarcate') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-07T13:35:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trigliceridi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-10-16T18:31:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Glicoproteina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-06T12:51:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa 2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-09T14:00:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Antigene carboidratico 125') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-03T07:05:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Alfa amilasi isoenzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-18T09:36:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Calcio totale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-21T15:44:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Potassio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-14T13:02:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Magnesio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-10T17:01:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Androstenediolo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-21T12:25:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cyfra') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-02-14T09:29:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Fosfatasi alcalina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-15T09:12:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Anticorpi anti microsomi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-09T07:50:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sudore') AS exam
FROM pr;