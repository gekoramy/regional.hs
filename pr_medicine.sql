WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-17T07:43:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Essential Amino Acids') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-11T15:29:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foscavir') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-17T14:55:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thioridazine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-05-07T15:10:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Jalyn') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-03-31T18:16:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sporanox') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-21T13:39:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Immune Globulin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-28T19:53:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fragmin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-18T07:44:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Winstrol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-27T13:02:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elmiron') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-03-03T15:53:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vasovist') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-25T16:33:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thyrotropin Alfa') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-27T13:54:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Buspirone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-18T16:48:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vivactil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-08-18T19:04:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cabergoline') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-31T10:54:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amantadine Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-07T07:25:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Boniva') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-23T07:01:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Natazia') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-07-16T12:29:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Permax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-23T18:52:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Didanosine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-02T10:05:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methadose Oral Concentrate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-01-18T13:45:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zemplar') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-24T14:39:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nelfinavir Mesylate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-15T09:30:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cetraxal') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-02-04T08:31:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Extavia') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-21T12:59:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mequinol and Tretinoin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-10T17:19:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bravelle') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-25T13:48:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azasan') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-18T17:31:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levo-T') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-20T09:56:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penicillamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-06T11:32:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tranxene') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-21T07:12:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tiazac') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-05T09:18:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pentoxifylline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-27T13:47:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Furadantin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-03T07:48:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Advair HFA') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-25T15:34:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pregnyl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-23T17:47:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rasagiline') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-01T07:06:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vivactil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-16T19:44:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxycycline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-10T09:35:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Robinul') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-22T19:07:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myobloc') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-12T14:10:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Podophyllin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-06-27T10:09:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Linezolid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-10T08:05:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demeclocycline HCl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-22T16:04:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Protein C Concentrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-11T15:29:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxycycline') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-12T18:09:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycontin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-02T19:50:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nascobal') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-30T11:27:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mycamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-09T09:07:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Busulfex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-03T17:48:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dovonex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-07T14:08:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectibix') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-16T11:24:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Risperidone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-27T16:38:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aminosyn II 8.5%') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-25T14:20:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynapen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-09-12T16:51:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cosmegen') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-24T08:13:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rescula') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-25T09:47:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Naftifine Hcl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-21T18:41:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Actimmune') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-06T11:58:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Famvir') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-28T19:29:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isentress') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-24T16:46:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hydroxyethyl Starch') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-27T19:56:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Carac') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-24T14:49:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Agalsidase Beta') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-17T13:56:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cetuximab') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-18T16:43:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Triazolam') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-23T12:42:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sulfamylon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-18T08:10:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Astemizole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-17T17:08:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'PlasmaLyte A') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-08T13:07:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Benzoyl Peroxide Gel') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-12-11T09:13:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Saphris') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-07T14:37:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Veramyst') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-18T19:59:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Desogen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-22T18:30:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lidex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-09T09:29:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Arranon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-15T11:15:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Detrol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-18T08:29:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vaprisol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-09T13:29:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hydrocodone Bitartrate and Acetaminophen') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-04T12:11:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trilipix') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-11T14:38:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Flumazenil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-07-03T11:51:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Betoptic S') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-27T07:51:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lisinopril and Hydrochlorothiazide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-12T16:32:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Locoid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-06-23T09:51:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Miochol-E') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-14T18:21:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenylephrine Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-05T11:20:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Essential Amino Acids') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-29T11:56:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium ferric gluconate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-25T14:36:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Follitropin Alfa') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-22T19:00:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Entereg') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-04T16:48:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynacirc') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-23T18:45:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Celexa') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-29T15:21:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dexmethylphenidate Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-29T10:52:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycodone HCl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-24T15:17:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bontril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-16T07:46:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cilostazol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-21T07:58:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Marinol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-02T12:04:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Theracys') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-30T10:17:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gonadorelin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-18T19:14:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gadobenate Dimeglumine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-01-27T18:47:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eulexin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-17T12:07:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Perindopril Erbumine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-12T08:41:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Indigo Carmine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-08-29T12:33:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elaprase') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-01T10:18:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zymaxid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-29T12:59:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Leuprolide Acetate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-17T11:28:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mobic') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-28T19:11:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Brovana') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-05-21T10:31:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Esomeprazole Sodium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-08T15:09:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Librium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-02-13T18:56:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Anadrol-50') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-31T11:31:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cylert') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-08T07:33:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sporanox') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-02-26T16:00:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vimovo') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-02T07:50:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Erythrocin Stearate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-21T14:44:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pylera') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-26T13:49:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiothixene Hcl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-01T08:27:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Multi Vitamin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-09T13:32:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nascobal') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-07T19:29:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sprycel') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-24T10:02:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimethoprim and Sulfamethoxazole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-16T08:06:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clorazepate Dipotassium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-08T18:08:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Revex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-07T12:48:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Micronase') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-22T10:21:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lotensin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-13T11:15:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Finacea') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-21T10:25:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nortriptyline Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-28T13:35:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sporanox') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-15T09:47:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Uloric') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-07T14:47:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Triamcinolone Acetonide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-10-29T13:45:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vasotec') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-07T12:57:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Primidone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-08-30T15:46:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sporanox') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-23T17:20:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mitomycin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-17T11:21:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Brevibloc') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-07-02T15:08:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dacarbazine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-09-12T10:14:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diphtheria-Tetanus Vaccine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-30T08:31:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Evoxac') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-08-30T19:25:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Atridox') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-11T16:14:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Actisite') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-09-22T19:51:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Strontium-89') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-28T11:31:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elmiron') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-15T07:01:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Raxar') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-25T14:56:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Implanon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-13T09:32:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Streptokinase') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-20T18:05:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Desonate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-14T13:28:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Polyethylene Glycol 3350') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-04T17:58:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tasmar') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-11-23T09:36:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Morrhuate Sodium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-17T19:52:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'ReoPro') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-04T08:54:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DesOwen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-11T11:10:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_medicine(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Omnaris') AS medicine, 2 AS quantity
FROM pr;