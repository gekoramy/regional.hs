WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-13T12:30:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lipofen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-16T18:49:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thioridazine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-21T14:22:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vermox') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-11T15:04:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-10T16:08:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vivelle-Dot') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-03T10:49:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Velosulin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-07T14:29:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nafcillin Sodium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-20T07:04:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'VisionBlue') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-30T12:54:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glucophage XR') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-01T09:14:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Flurbiprofen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-14T07:57:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ismo') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-04T14:19:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Antithrombin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-11T09:33:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trovan') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-08T19:24:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Targretin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-14T15:57:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ranexa') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-17T12:38:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nebivolol Tablets') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-06T18:05:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vicoprofen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-17T11:39:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Casodex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-30T09:31:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Emtricitabine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-21T08:29:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levaquin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-11T11:33:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ranitidine Hcl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-09T15:48:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hyalgan') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-08T19:23:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycodone Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-05T13:51:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nicotrol NS') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-20T10:31:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Samsca') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-16T14:16:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lucentis') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-27T09:51:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Micronized Glyburide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-16T09:42:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Indigo Carmine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-09T10:56:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fosamprenavir Calcium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-07T08:53:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cellulose') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-30T11:46:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lopid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-09T11:50:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adenoscan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-18T18:46:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aldactazide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-16T18:08:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Remicade') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-12T16:18:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mestinon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-25T12:47:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimetrexate Glucuronate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-05T12:29:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penlac') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-03T13:27:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estradiol Acetate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-03T19:46:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiopental Sodium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-23T19:09:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pazopanib') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-29T15:27:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dipyridamole') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-04T14:51:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gamunex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-16T12:32:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Casodex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-30T08:11:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cosmegen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-05T09:16:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Procainamide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-28T18:50:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Neulasta') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-22T17:13:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acular LS') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-15T08:21:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mykrox') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-16T07:15:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynapen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-28T14:39:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Optipranolol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-15T13:02:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Neulasta') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-09T15:54:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-19T16:35:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dofetilide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-07T14:46:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Quinidine Sulfate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-08T14:03:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Menactra') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-21T13:41:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylergonovine Maleate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-28T15:11:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pindolol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-25T17:50:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Atacand HCT') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-11T11:56:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tofranil-PM') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-12T10:03:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cedax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-19T07:48:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hepflush-10') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-30T07:30:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Meropenem') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-13T10:07:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orlistat') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-13T07:59:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gadobenate Dimeglumine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-18T18:01:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methergine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-10T18:54:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elspar') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-24T13:49:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demeclocycline HCl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-15T18:34:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cognex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-11T19:21:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Herceptin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-29T13:03:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pentoxifylline') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-17T16:36:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Testred') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-31T15:54:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hyoscyamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-24T16:46:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Letairis') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-23T08:01:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orlistat') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-18T16:24:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-03T19:30:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loprox Gel') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-12T13:00:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adapalene') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-03T09:16:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Heparin Lock Flush') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-29T07:05:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Codeine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-05T09:44:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Invanz') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-09T16:03:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doryx') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-19T13:26:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Captopril') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-02T17:15:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Human Secretin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-02T18:57:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mobic') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-20T15:10:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pletal') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-01T12:11:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azasite') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-19T10:43:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mephobarbital') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-05T13:25:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Brovana') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-26T14:29:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Serax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-02T08:46:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Synthroid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-16T13:43:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Norethindrone and Ethinyl Estradiol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-17T09:55:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ionamin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-22T12:52:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Endometrin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-17T14:54:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cyclobenzaprine Hcl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-08T14:56:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glucophage XR') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-10T12:48:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Evista') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-14T09:52:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sprix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-07T08:56:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glyset') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-10T11:13:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Neostigmine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-06T17:26:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Maxitrol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-29T17:09:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gadofosveset Trisodium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-29T08:52:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Arranon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-11T07:21:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prinivil') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-18T09:39:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Allegra D 24 Hour') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-28T18:50:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pindolol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-18T10:01:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foscavir') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-23T07:16:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Perindopril Erbumine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-19T15:03:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penicillamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-10T08:09:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kariva') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-15T17:10:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topicort') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-06T15:58:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Omeprazole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-09T12:28:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Famciclovir') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-17T18:23:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Famotidine Injection') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-22T18:14:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sucralfate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-10T07:45:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lodine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-19T10:18:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Caduet') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-07T11:56:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elmiron') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-23T15:48:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ultravate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-19T15:29:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium Sulfacetamide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-14T07:13:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Roxicodone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-15T13:37:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxycycline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-20T18:33:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vaprisol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-29T14:40:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Samsca') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-23T08:37:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elspar') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-27T14:42:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ixempra') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-12T09:58:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prednicarbate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-14T07:36:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Campral') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-03T17:45:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mycophenolic Acid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-04T16:24:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nedocromil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-26T10:29:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oraqix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-24T09:50:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pneumovax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-24T11:56:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxercalciferol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-06T12:11:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fulvestrant') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-29T19:31:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zemaira') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-02T07:26:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-25T16:03:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Malathion') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-09T08:04:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cuvposa') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-04T15:18:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Altace') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-22T18:53:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Paser') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-10T10:39:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimethadione') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-29T08:04:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Theracys') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-19T17:07:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Codeine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-22T11:37:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Primaquine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-11T08:08:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Minocycline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-23T19:51:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vancomycin Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-11T07:13:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chloramphenicol Sodium Succinate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-12T17:16:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Empirin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-12T14:42:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Carisoprodol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-20T07:14:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pindolol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-05T11:09:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tofranil-PM') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-12T11:13:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Allegra D 24 Hour') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-13T14:28:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cellulose') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-03T16:25:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zmax') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-07T17:16:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clinoril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-08T08:15:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rifamate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-31T14:29:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rhinocort Aqua') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-21T12:24:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loprox Gel') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-14T19:06:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'AdreView') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-25T16:20:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diphtheria-Tetanus Vaccine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-16T11:19:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nebcin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-05T18:03:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-29T11:08:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Calcium Gluconate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-07T14:00:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zylet') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-06T14:55:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cardiolite') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-06T19:52:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vasocidin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-27T07:55:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glynase') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-11T08:56:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demadex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-23T07:37:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Emedastine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-03T08:07:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sitagliptin Metformin HCL') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-22T14:39:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Etrafon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-20T19:19:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hyalgan') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-26T14:27:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Quazepam') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-11T12:05:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'PlasmaLyte A') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-10T08:05:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Paclitaxel') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-03T08:06:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pfizerpen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-29T11:33:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nizatidine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-29T14:33:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metyrapone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-15T08:30:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'PlasmaLyte A') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-24T07:23:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Calcium Disodium Versenate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-06T17:57:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adipex-P') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-18T18:26:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Corgard') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-18T11:39:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Malathion') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-19T15:02:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Raltegravir') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-26T12:32:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Provocholine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-22T07:16:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zanosar') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-22T17:52:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Testred') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-10T09:31:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estradiol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-15T11:03:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acamprosate Calcium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-31T17:22:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isopto Hyoscine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-13T19:36:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methadose Oral Concentrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-08T08:46:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Unasyn') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-20T17:00:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levalbuterol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-15T18:20:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Differin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-14T16:59:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Triazolam') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-03T07:30:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Benztropine Mesylate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-08T09:28:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Celexa') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-14T08:38:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Natazia') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-13T10:53:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Toradol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-04T11:08:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'RiaSTAP') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-04T15:30:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cytogam') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-18T13:23:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sertraline Hcl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-05T08:50:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tamiflu') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-18T17:16:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nortriptyline Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-19T16:27:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Monistat-Derm') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-25T08:42:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bromocriptine Mesylate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-27T13:29:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiabendazole') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-23T09:46:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynacirc CR') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-26T15:05:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fluvirin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-07T15:15:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Factor IX Complex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-13T09:47:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vasocidin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-12T10:42:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ranitidine Hcl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-29T14:19:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fosphenytoin Sodium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-07T19:44:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hyalgan') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-13T17:23:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nascobal') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-07T18:18:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Botulinum Toxin Type A') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-06T09:15:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Istalol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-19T13:14:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxaprozin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-05T14:05:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mestinon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-09T18:04:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estradiol valerate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-12T15:44:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dasatinib') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-27T11:01:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Meropenem') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-06T12:10:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diphtheria-Tetanus Vaccine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-07T12:00:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Insulin Aspart') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-11T08:24:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eulexin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-11T15:11:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Extavia') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-16T09:01:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cerebyx') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-13T18:31:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Calcitonin-Salmon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-17T19:25:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vinblastine Sulfate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-30T16:26:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azmacort') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-17T16:42:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Desferal') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-24T19:54:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Conjugated Estrogens') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-19T17:14:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aldactone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-27T07:23:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Iloperidone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-01T19:05:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Halobetasol Propionate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-17T17:35:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Didanosine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-01T17:12:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amerge') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-02T15:04:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Multi Vitamin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-03T13:46:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Intelence') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-18T10:47:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vusion') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-28T08:53:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penlac') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-31T19:16:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Teveten HCT') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-03T10:18:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Emedastine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-08T09:17:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pyridium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-10T13:53:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cleviprex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-15T18:56:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiethylperazine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-20T09:28:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amiloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-25T10:16:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bromocriptine Mesylate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-26T18:44:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mycamine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-19T12:22:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tekturna HCT') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-12T10:53:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Palifermin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-17T14:05:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mecasermin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-21T18:21:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Immune Globulin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-28T16:03:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lybrel') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-29T07:52:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pazopanib') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-03T08:34:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Epipen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-14T08:17:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loprox Gel') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-14T18:38:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefizox') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-12T18:54:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Grifulvin V') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-27T17:42:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diamox Sequels') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-09T16:18:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Palonosetron hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-15T14:51:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Plavix') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-01T19:17:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zonalon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-13T18:36:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'CellCept') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-06T16:21:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acamprosate Calcium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-13T13:07:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Renese') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-07T08:37:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Copaxone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-11T10:35:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynacirc CR') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-03T15:48:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hivid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-19T14:17:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chlorpheniramine Maleate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-01T07:45:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Plenaxis') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-07T10:53:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Idamycin PFS') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-25T07:38:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azmacort') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-08T19:33:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DepoDur') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-10T08:23:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Selegiline Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-23T10:07:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethinyl Estradiol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-10T14:01:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxazosin Mesylate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-24T08:43:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dopram') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-10T16:08:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Minocycline') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-23T11:46:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loracarbef') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-02T07:51:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Miochol-E') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-13T15:30:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pediapred') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-27T16:35:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'lacosamide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-08T15:18:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sacrosidase') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-18T17:01:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mequinol and Tretinoin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-30T12:30:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium Iodide I 131') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-13T09:34:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thrombin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-02T19:32:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acular LS') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-07T11:25:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Grifulvin V') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-18T18:21:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dorzolamide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-13T17:23:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glyset') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-30T10:35:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tribenzor') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-11T13:05:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Perindopril Erbumine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-01T18:55:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Extavia') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-23T10:11:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Septra') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-10T13:52:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Miochol-E') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-14T17:22:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Exjade') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-04T16:19:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Persantine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-14T16:10:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Imitrex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-25T15:33:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Epipen') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-16T07:57:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topicort') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-21T18:02:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Advair HFA') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-08T07:58:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ciclopirox Gel') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-17T16:16:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trastuzumab') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-16T17:51:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Antithrombin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-17T19:51:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Venlafaxine Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-24T16:40:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ifosfamide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-12T16:54:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Starlix') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-11T19:15:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ziconotide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-08T12:35:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Linezolid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-16T18:12:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Risperidone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-14T11:30:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thioridazine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-26T12:48:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Catapres-TTS') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-28T18:20:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Axid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-06T19:59:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Astemizole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-17T10:23:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aminosyn II 8.5%') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-03T14:21:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Alora') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-12T11:18:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azelastine Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-20T18:07:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Paliperidone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-27T19:53:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxercalciferol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-05-24T16:22:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aggrenox') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-07T09:11:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Factrel') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-08T09:17:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Qualaquin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-17T11:06:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eletriptan hydrobromide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-07T17:18:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adcirca') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-12T13:22:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lopid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-15T08:16:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lidoderm') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-01T08:47:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vusion') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-13T13:24:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Heparin Lock Flush') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-26T07:17:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Novoseven') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-15T07:14:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bethanechol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-17T15:39:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dipyridamole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-06T10:20:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tobrex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-02T14:20:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Reyataz') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-26T14:50:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ticarcillin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-23T18:04:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Daraprim') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-03T09:02:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eraxis') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-18T09:15:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zolinza') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-08T09:45:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Etrafon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-06T18:52:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Priftin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-11T17:28:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Iloperidone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-12T10:11:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cuvposa') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-19T16:10:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Roxicet') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-08T13:53:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pemirolast Potassium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-13T18:42:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefzil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-04T17:05:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Econazole Nitrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-30T15:38:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cetrotide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-31T12:06:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Duetact') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-31T15:11:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trypan Blue') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-13T10:48:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Minocin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-07T15:00:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azelaic Acid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-30T18:28:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nilotinib Capsules') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-31T18:25:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Heparin Lock Flush') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-05T19:11:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tegretol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-30T19:16:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nascobal') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-06T10:20:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prochlorperazine Maleate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-24T17:58:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zestoretic') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-23T18:55:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'M-M-R') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-22T16:18:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thrombin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-25T07:11:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mozobil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-27T18:46:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vytorin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-19T07:50:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bepreve') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-24T18:11:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Benzocaine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-07T08:08:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Galsulfase') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-30T12:20:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Celontin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-23T08:32:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metaproterenol Sulfate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-17T09:42:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Provocholine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-11T10:37:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estratest') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-03T18:23:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loperamide Hcl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-12T09:15:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'FluMist') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-24T12:31:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Toviaz') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-22T17:53:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zolinza') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-08T07:10:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Arranon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-01T08:31:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cocaine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-12T15:44:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thioridazine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-25T09:04:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kariva') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-24T11:23:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glyset') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-23T09:29:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Claritin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-03T15:57:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sucralfate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-03T14:45:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cataflam') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-25T15:24:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Avandia') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-01T09:46:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gamunex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-30T07:57:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Donepezil Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-05T19:35:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Invega') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-17T09:24:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nutropin AQ') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-20T07:31:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Promethazine Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-19T16:40:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexapro') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-21T19:12:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Exelderm') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-19T10:43:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Feridex I.V.') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-29T17:55:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Letairis') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-11T09:56:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-16T19:33:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pilopine HS') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-12T09:50:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Equetro') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-16T13:13:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topotecan Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-14T11:29:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zestoretic') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-28T07:59:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Monistat-Derm') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-01T18:54:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DDAVP Nasal Spray') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-08T19:35:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethiodol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-10T12:44:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mutamycin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-29T11:57:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lodine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-12T15:55:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trastuzumab') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-01T07:50:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Maxitrol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-04T12:42:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Campral') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-03T07:48:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estropipate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-05T13:44:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vitamin K1') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-12T19:04:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Abatacept') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-24T09:37:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vioxx') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-30T13:17:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cancidas') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-27T09:17:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Simponi') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-09T18:41:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Atomoxetine HCl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-22T11:24:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Neostigmine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-30T13:55:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Victoza') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-29T10:38:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DesOwen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-30T07:09:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sotradecol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-16T15:52:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Atomoxetine HCl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-30T11:19:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nelfinavir Mesylate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-20T12:45:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acamprosate Calcium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-31T07:48:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Streptokinase') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-04T09:28:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Promethazine Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-16T13:37:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cilostazol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-06T14:43:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ultravate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-26T16:20:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Succinylcholine Chloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-26T18:25:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isocarboxazid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-28T12:52:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimethadione') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-01T12:22:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sprix') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-26T11:24:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tamiflu') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-09T13:50:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Veltin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-29T11:49:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycontin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-16T11:32:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foscavir') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-09T10:41:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Finacea') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-04T13:02:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glucophage XR') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-12T12:37:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Irinotecan Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-23T19:51:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Podophyllin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-01T17:35:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Talacen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-15T17:09:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cognex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-22T13:48:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Triamcinolone Acetonide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-05T14:42:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Unasyn') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-22T14:06:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Toradol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-16T17:29:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tolmetin Sodium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-20T12:42:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pulmicort Flexhaler') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-21T18:42:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Liraglutide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-29T16:41:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tri-Sprintec') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-01T15:00:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Miacalcin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-28T16:33:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Glucophage XR') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-25T15:00:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tessalon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-26T08:11:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nesacaine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-14T19:42:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-04T18:47:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Actisite') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-09T15:14:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Reyataz') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-06T08:50:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Proleukin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-20T12:39:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Catapres') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-23T12:56:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hepatitis B Immune Globulin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-01T10:00:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dacarbazine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-28T19:23:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zyloprim') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-20T17:34:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Targretin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-07T13:24:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Liposyn II') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-31T07:06:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Iloperidone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-14T11:39:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trexall') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-18T17:11:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adagen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-26T14:46:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexapro') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-22T16:32:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mozobil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-06-08T11:32:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Astemizole') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-23T13:24:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tolazamide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-04T17:48:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fomepizole') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-07T15:21:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zaditor') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-03T18:05:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sporanox') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-28T18:26:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zestoretic') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-22T15:13:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Noctec') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-12T11:38:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bepreve') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-26T10:27:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amiloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-22T15:51:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenylephrine Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-20T15:57:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mycelex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-12T16:49:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trovafloxacin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-04T11:46:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Epivir') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-10T18:39:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Raltegravir') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-10T16:45:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topotecan Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-23T08:05:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Irinotecan Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-22T19:06:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectical') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-30T07:37:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Inderal LA') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-15T15:02:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Florinef') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-25T15:41:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pulmicort Flexhaler') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-20T16:44:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cisapride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-11T18:57:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estradiol Acetate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-05T11:04:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eszopiclone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-19T14:36:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Busulfex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-17T11:27:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lodine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-04-25T16:15:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adapalene') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-13T15:00:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kaletra') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-09-24T10:25:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orfadin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-19T16:44:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dolophine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-29T07:59:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ovide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-09T08:38:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dipyridamole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-02-28T14:17:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kytril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-22T19:30:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Temozolomide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-12T15:05:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Motrin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-13T19:46:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Depacon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-09T09:15:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bepreve') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-23T18:14:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Allegra-D') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-16T10:37:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Detrol LA') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-14T14:57:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cubicin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-17T19:28:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myambutol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-20T09:56:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Colcrys') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-15T12:19:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Floxuridine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-03T13:05:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orlaam') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-12T10:56:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sevoflurane') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-18T16:25:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Natazia') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-05T07:38:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clarinex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-13T13:18:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Agalsidase Beta') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-20T16:43:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clobetasol Propionate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-11T13:42:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lotensin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-19T16:43:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chlorambucil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-30T14:46:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Duetact') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-20T11:31:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vioxx') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-22T11:56:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gonadorelin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-27T07:14:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tysabri') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-30T16:56:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Revia') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-07T15:56:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium Polystyrene Sulfonate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-27T15:37:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topicort') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-18T10:12:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Naproxen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-28T13:14:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Biperiden') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-25T07:37:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cellulose') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-23T11:59:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Somatrem') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-28T17:34:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pataday') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-18T12:53:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Procalamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-21T18:42:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Roxicet') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-30T08:07:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium ferric gluconate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-12T17:57:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nicotrol NS') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-16T14:19:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Busulfan') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-27T18:57:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orlaam') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-09T17:37:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Forane') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-02T19:17:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cerumenex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-02T19:59:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Emsam') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-14T09:06:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pyrazinamide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-27T19:55:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'RotaTeq') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-27T13:07:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rescula') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-05T10:17:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'OptiMARK') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-24T09:41:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Procainamide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-24T18:49:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tapazole') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-17T19:34:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estradiol valerate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-06T11:45:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Liposyn II') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-03T16:54:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Parnate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-24T15:48:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levemir') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-31T09:11:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Coumadin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-28T14:31:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fluvirin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-16T16:25:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Stavudine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-28T14:46:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eletriptan hydrobromide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-25T15:47:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clocortolone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-25T13:13:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Brovana') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-09T12:41:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Antivert') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-20T13:40:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mesalamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-16T16:18:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynacirc CR') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-14T17:40:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prostin VR Pediatric') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-11T09:04:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rescriptor') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-10T19:12:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylene Blue') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-31T08:59:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ritalin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-24T11:51:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Natrecor') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-05T17:16:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pletal') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-11T14:52:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Revex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-06T07:41:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clarinex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-30T18:34:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penciclovir') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-13T09:51:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chorionic Gonadotropin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-24T18:01:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Insulin Aspart') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-28T09:04:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Avage') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-10T13:30:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Immune Globulin Intravenous') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-12T19:44:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Monistat-Derm') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-31T07:21:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Finacea') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-14T14:21:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dexrazoxane') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-02T17:09:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiothixene Hcl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-03T07:15:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'K-LOR') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-23T18:41:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metaproterenol Sulfate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-23T17:36:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Maraviroc') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-22T14:25:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Asclera') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-24T09:17:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Canasa') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-16T10:10:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penicillamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-29T08:45:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aredia') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-11T11:17:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methadone Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-08T15:40:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fludarabine Phosphate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-17T13:16:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kariva') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-12T08:07:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Healon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-28T19:32:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trusopt') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-24T15:58:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azasan') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-02T18:38:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tessalon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-20T19:03:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Heparin Lock Flush') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-18T18:17:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Quinidine Sulfate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-23T08:51:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Buspirone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-29T18:32:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Avage') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-05T10:18:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nascobal') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-27T09:15:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orfadin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-11T13:39:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexiscan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-12T11:00:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mozobil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-12T16:36:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimethoprim') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-23T16:32:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nimbex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-13T14:46:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ergocalciferol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-01T08:12:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pneumovax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-08T16:54:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zolmitriptan') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-09T14:51:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mestinon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-24T15:41:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Endocet') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-09T15:10:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Carac') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-07T12:46:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dobutamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-22T07:20:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Darvon Compound') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-24T10:45:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Linezolid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-06T17:22:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Geodon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-11T14:33:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aldoril') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-29T13:21:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tessalon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-29T12:30:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dicyclomine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-16T08:13:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hepatitis B Immune Globulin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-03T08:50:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Forane') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-29T14:09:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clofarabine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-05T07:36:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Claritin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-24T12:37:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectibix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-04T11:04:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Parnate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-03T11:46:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Coumadin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-21T14:19:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mestinon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-14T08:16:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Syprine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-07T18:36:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cataflam') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-26T10:29:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dofetilide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-14T11:27:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zmax') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-25T08:32:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Valacyclovir Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-01T10:23:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vicoprofen') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-09T19:34:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Aerolizer') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-10T10:52:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prometrium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-19T19:52:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fomepizole') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-17T11:37:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'CellCept') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-04T16:03:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vagistat-1') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-06T09:32:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rifamate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-07T11:14:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lidex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-25T08:44:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aminosalicylic Acid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-20T19:48:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Terazol 3, Terazol 7') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-19T17:20:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Teniposide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-07T18:44:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cabergoline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-29T14:46:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zanosar') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-05T11:07:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Feridex I.V.') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-23T10:12:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Provocholine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-19T07:04:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium Polystyrene Sulfonate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-16T12:47:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vicodin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-07T13:48:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Podophyllin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-11T10:35:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tysabri') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-23T11:22:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clocortolone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-11T13:00:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kuvan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-17T18:44:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oracea') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-07T18:49:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Altocor') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-18T08:06:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Multihance') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-30T07:38:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Polidocanol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-23T19:28:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trasylol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-31T10:43:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diphenhydramine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-20T18:22:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methyltestosterone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-14T12:41:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prednisone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-26T11:22:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topicort') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-14T08:17:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acuvail') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-19T10:06:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Modafinil') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-20T17:38:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Paliperidone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-19T08:17:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vibramycin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-19T09:35:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Donepezil Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-12T14:53:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tolmetin Sodium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-21T18:56:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Casodex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-05T19:31:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Florinef') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-24T10:58:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sulfamylon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-28T11:47:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Valganciclovir Hcl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-11T13:27:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylergonovine Maleate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-25T16:22:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'RiaSTAP') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-24T12:28:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Febuxostat') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-11T13:17:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elavil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-21T09:53:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Malarone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-30T19:02:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isoptin SR') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-15T08:23:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Febuxostat') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-17T13:39:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Triamcinolone Acetonide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-30T10:01:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trilisate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-02T12:46:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kenalog') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-28T14:10:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Risperidone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-03T10:14:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zylet') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-14T18:31:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cleviprex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-27T12:20:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Idamycin PFS') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-06T13:17:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Podophyllin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-03T13:31:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rapamune') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-06T17:43:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zaditor') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-13T15:46:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Copaxone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-28T09:29:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Campral') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-08T19:38:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mutamycin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-08T13:06:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Actimmune') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-24T18:41:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nephramine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-18T09:49:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lybrel') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-17T16:24:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Donepezil Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-01T10:50:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pred-G') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-27T18:59:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diphtheria-Tetanus Vaccine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-25T15:40:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cocaine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-19T16:06:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethacrynic Acid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-24T16:27:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lamivudine / Zidovudine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-02T16:58:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pilopine HS') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-12T18:59:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimetrexate Glucuronate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-10T07:20:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prevpac') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-27T09:35:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Conjugated Estrogens') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-27T13:53:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adcirca') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-11T08:26:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fulvestrant') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-03T15:17:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Alupent') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-14T14:13:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Furoxone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-23T10:31:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Urex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-22T17:01:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vistide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-06T07:05:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tribenzor') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-19T12:28:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aricept') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-20T12:18:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sabril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-26T10:36:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ritalin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-09T08:13:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nascobal') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-20T13:33:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foscavir') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-26T17:30:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dexrazoxane') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-18T18:46:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ceftibuten') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-08T07:19:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metyrosine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-23T09:11:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Corgard') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-06T08:51:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Human Secretin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-22T07:25:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Antivert') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-23T18:16:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myobloc') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-14T09:37:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eulexin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-30T10:01:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sutent') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-09T17:24:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amifostine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-17T09:01:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-23T19:37:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metoclopramide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-06T16:09:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'PlasmaLyte A') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-06T18:59:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ryzolt') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-28T16:39:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Motrin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-03T14:14:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Slow-K') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-17T11:20:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pegfilgrastim') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-07T12:14:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dopamine Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-11T08:40:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metoprolol Tartrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-12T09:52:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Simponi') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-12T16:05:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Scopolamine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-28T12:03:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elmiron') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-19T16:44:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Benazepril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-28T18:14:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doryx') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-18T10:43:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hytrin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-14T09:50:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demeclocycline HCl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-13T15:36:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DepoDur') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-08T07:38:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sertraline Hcl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-10T13:32:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefditoren Pivoxil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-20T07:09:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fluorouracil') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-13T07:48:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxercalciferol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-29T12:18:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexapro') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-03T10:51:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pred-G') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-01T15:30:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aredia') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-25T12:36:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amifostine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-07T18:01:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prometrium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-26T17:30:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Merrem I.V.') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-23T12:37:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Venlafaxine Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-07T07:57:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Floxuridine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-20T09:12:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Busulfan') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-24T13:03:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Axid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-23T15:54:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Liposyn II') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-06T07:43:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Reyataz') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-13T08:20:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Epirubicin hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-01T18:48:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethacrynic Acid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-11T11:30:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DepoDur') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-11T08:46:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zaditor') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-25T17:36:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Albenza') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-10T18:14:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vinblastine Sulfate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-14T16:29:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clotrimazole') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-29T15:43:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethosuximide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-25T16:50:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rotarix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-22T15:38:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thyrotropin Alfa') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-24T13:57:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myambutol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-04T18:30:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Perindopril Erbumine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-01T15:46:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Doxepin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-19T14:34:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amerge') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-15T07:12:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vicoprofen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-19T13:48:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rituximab') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-10T09:07:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Serax') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-03T15:12:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Menactra') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-31T14:00:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aricept') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-02T17:50:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isopto Hyoscine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-30T16:06:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Darvon Compound') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-29T08:17:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Invanz') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-05T14:31:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexapro') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-06T17:44:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Allegra-D') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-03T12:39:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nesacaine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-09T12:22:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estropipate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-05T09:36:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prednisone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-07T11:00:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Crolom') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-17T18:58:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kinlytic') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-08T15:49:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ultrase') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-19T19:04:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Digoxin Immune Fab') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-20T16:27:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'NeoProfen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-31T14:58:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vimpat') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-24T14:22:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methyldopa') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-12T11:12:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Promethazine HCl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-03T10:54:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Captopril') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-16T08:40:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Orlaam') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-26T15:24:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nelarabine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-19T17:23:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ultiva') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-13T08:40:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tizanidine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-06T15:08:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Janumet') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-02T15:36:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gold Sodium Thiomalate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-08T08:02:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Colazal') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-10T19:54:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mestinon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-18T14:30:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Idamycin PFS') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-30T18:11:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gamunex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-19T10:55:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dofetilide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-13T18:30:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycodone HCl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-20T18:31:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'RotaTeq') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-10T08:07:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Leuprolide Acetate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-27T12:11:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nelarabine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-28T15:39:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methadone Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-18T11:02:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Menest') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-01T12:36:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Testred') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-04T10:54:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Kenalog') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-08T08:50:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Roxicodone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-11T18:06:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aldactazide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-29T19:04:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Famotidine Injection') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-12T11:07:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loxitane') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-21T07:04:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycodone Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-02T19:20:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pulmicort Flexhaler') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-06T18:18:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Perflutren') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-18T17:30:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Factor IX Complex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-24T16:36:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Noritate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-16T17:54:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cholera Vaccine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-25T16:39:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diethylpropion') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-18T07:07:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cedax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-30T07:07:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tapazole') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-25T17:35:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Benzphetamine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-12T15:33:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxytetracycline') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-03T10:55:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Geodon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-17T07:34:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-15T11:34:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adipex-P') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-23T12:29:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Naltrexone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-24T16:19:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methadone Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-12T18:24:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Viokase') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-16T14:39:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Caduet') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-09T11:45:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lisinopril and Hydrochlorothiazide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-18T12:02:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isoptin SR') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-27T07:54:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Detrol LA') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-06T13:26:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trizivir') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-26T08:43:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zemaira') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-30T10:22:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectical') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-18T14:14:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aminosyn II 8.5%') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-10T08:01:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Carisoprodol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-23T10:17:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pemirolast Potassium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-02T19:26:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clinoril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-14T16:00:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methyltestosterone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-19T17:43:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tranxene') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-17T12:54:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penicillamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-13T15:50:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diamox Sequels') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-18T13:11:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Venlafaxine Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-10T19:27:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trilipix') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-16T19:12:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chibroxin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-31T13:04:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Maxitrol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-09T18:50:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Terazol 3, Terazol 7') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-23T10:32:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Albenza') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-25T16:15:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Valium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-14T08:12:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rotarix') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-21T08:08:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Buprenorphine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-05T12:24:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azilect') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-15T08:58:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vusion') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-18T10:58:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clonidine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-25T07:57:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Raltegravir') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-06T12:31:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ovide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-20T12:29:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mobic') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-27T19:06:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methyldopa') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-10T16:27:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cataflam') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-17T18:22:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Janumet') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-04T15:34:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Polidocanol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-05T14:58:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metyrapone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-07T08:12:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Flector') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-23T18:15:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elavil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-25T12:51:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Busulfan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-06T16:09:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Toviaz') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-07T12:41:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Starlix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-28T15:37:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lucentis') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-06T14:31:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Malathion') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-05T15:27:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexapro') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-14T17:36:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Imiquimod') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-17T15:41:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vistide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-29T14:16:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lotronex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-28T14:08:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Anabolic steroids') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-27T13:50:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Revex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-21T08:45:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nicotrol NS') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-28T10:57:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sitagliptin Metformin HCL') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-20T17:47:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Protriptyline Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-21T09:30:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rituximab') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-03T11:44:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ceftazidime') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-25T09:18:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rezulin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-23T10:56:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylergonovine Maleate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-09T15:31:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium ferric gluconate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-22T15:09:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Qualaquin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-30T19:50:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lidex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-10T15:21:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chlorpropamide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-20T19:00:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Letrozole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-07T13:35:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiabendazole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-10T17:06:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hivid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-26T16:39:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vesanoid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-14T09:51:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Crolom') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-17T11:57:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Metaxalone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-24T14:43:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Omeprazole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-11T14:52:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methyldopa') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-25T19:22:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amerge') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-25T14:54:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Micronase') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-15T07:12:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Duraclon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-08T15:05:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mesna') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-17T15:35:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Silenor') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-29T16:37:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectical') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-02T09:46:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Yellow Fever Vaccine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-27T17:40:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fesoterodine Fumarate Extended') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-11T14:38:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ranitidine Hcl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-24T17:04:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prinivil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-01T07:35:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pentetate Zinc Trisodium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-23T08:33:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lipofen') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-20T10:57:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mefloquine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-20T16:24:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylergonovine Maleate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-17T08:05:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cilostazol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-26T14:46:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Minoxidil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-14T10:41:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'RotaTeq') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-26T16:51:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demadex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-16T17:24:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenylephrine HCl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-17T07:57:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Detrol LA') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-23T11:17:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aerospan HFA') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-25T16:29:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ionamin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-06T16:47:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Abilify') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-16T12:52:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pletal') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-21T14:12:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eszopiclone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-09T13:18:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenazopyridine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-13T11:28:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'RotaTeq') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-30T13:17:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Busulfex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-04T17:10:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zolmitriptan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-01T11:31:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tasmar') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-22T11:26:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fluress') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-29T15:58:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Exelderm') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-30T09:00:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Curosurf') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-20T07:48:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Parnate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-20T13:29:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fragmin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-05T19:21:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ovcon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-24T17:19:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pylera') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-28T14:34:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aminosalicylic Acid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-10T12:10:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Qualaquin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-12T16:31:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Follitropin Beta') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-05T15:50:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Maraviroc') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-02T16:58:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Valium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-18T08:56:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thyrotropin Alfa') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-16T10:00:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Toviaz') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-30T12:45:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Polythiazide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-15T07:18:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'NitroMist') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-06T19:54:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Invega') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-25T14:26:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Erlotinib') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-20T19:54:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-24T13:18:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gadofosveset Trisodium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-06T10:57:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mestinon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-30T10:25:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pipracil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-14T12:20:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Estratest') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-28T15:17:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Polidocanol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-29T14:41:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Colcrys') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-14T10:06:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Procalamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-21T16:16:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Testred') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-11T18:28:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Viread') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-13T14:42:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cellulose') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-25T14:54:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mozobil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-17T13:23:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Epinephrine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-26T14:48:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethosuximide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-25T08:07:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trasylol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-27T12:42:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DepoDur') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-16T08:27:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zanosar') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-13T16:48:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Betoptic S') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-24T17:44:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Imiquimod') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-31T14:19:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cetuximab') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-16T19:15:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Climara Pro') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-12T16:21:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fesoterodine Fumarate Extended') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-08T16:46:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectical') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-13T13:32:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Polythiazide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-26T12:44:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aredia') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-11T19:32:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trimethadione') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-21T18:38:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Locoid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-10T16:33:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Optipranolol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-07T13:52:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Promethazine HCl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-13T17:11:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Daraprim') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-05T16:26:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Abilify') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-29T19:52:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Serzone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-02T08:37:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Alamast') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-23T09:51:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Raltegravir') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-24T07:30:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Carmustine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-18T07:29:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mozobil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-27T17:10:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vectibix') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-31T17:00:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Micronized Glyburide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-06T11:24:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thyrotropin Alfa') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-16T16:04:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Celexa') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-15T10:06:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isentress') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-18T08:15:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topotecan Hydrochloride') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-11T11:17:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Loprox Gel') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-30T08:06:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Antithrombin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-12T18:57:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zemplar') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-17T14:39:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexapro') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-28T10:52:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Betoptic S') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-22T16:04:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Meropenem') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-03T08:59:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clobetasol Propionate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-06T07:18:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isocarboxazid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-07T08:50:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-06T13:08:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Synthroid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-08T17:48:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rescriptor') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-05T10:39:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aerospan HFA') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-18T15:32:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thioridazine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-19T09:32:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Calcitonin-Salmon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-27T14:48:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Somatrem') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-02T11:39:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prostin VR Pediatric') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-01T19:30:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Torsemide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-27T15:01:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myfortic') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-01T16:10:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methenamine Hippurate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-14T12:48:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trexall') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-28T12:46:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Atomoxetine HCl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-01T19:53:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rabies Vaccine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-23T17:37:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylene Blue') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-25T08:51:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Indigo Carmine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-10T09:41:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fragmin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-14T10:35:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foscavir') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-26T19:44:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nizatidine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-24T19:37:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Teniposide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-18T12:57:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rescriptor') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-11T15:46:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Protein C Concentrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-17T12:48:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'PlasmaLyte A') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-14T19:15:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Roxicet') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-13T12:20:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Casodex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-11T09:38:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Revex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-27T08:17:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxymorphone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-30T17:38:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nafcillin Sodium') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-31T09:26:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penicillamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-19T08:39:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tretinoin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-15T18:39:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pramipexole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-19T17:43:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dynapen') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-25T16:49:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Telbivudine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-18T12:01:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cystadane') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-03T08:31:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ultiva') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-08T11:05:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prolixin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-18T14:02:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cymbalta') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-09T17:26:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxandrolone') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-11T14:59:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Isopto Hyoscine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-20T08:12:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Clinoril') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-09T11:31:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sodium Sulfacetamide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-19T17:21:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hylenex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-25T10:35:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nutropin Depot') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-26T12:29:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Detrol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-10T18:23:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Geocillin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-19T14:53:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tacrolimus') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-09T12:22:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rasagiline') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-05T16:16:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Grifulvin V') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-24T16:52:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rotarix') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-16T13:30:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lodine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-17T07:07:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Didanosine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-05T14:16:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Emedastine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-21T18:19:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cholera Vaccine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-09T19:42:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diflucan') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-22T13:10:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Didanosine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-16T16:33:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Altace') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-16T14:14:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dyphylline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-19T08:14:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Septra') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-18T13:33:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oracea') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-27T12:52:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'MetroLotion') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-16T11:49:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Plavix') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-19T11:48:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefotetan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-05T08:27:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tretinoin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-14T17:29:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'DesOwen') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-23T19:36:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Robinul') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-09T11:10:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Niaspan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-26T19:10:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Captopril') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-02T15:55:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Somatropin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-28T19:35:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Actisite') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-02T10:38:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levonorgestrel and Ethinyl Estradiol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-20T07:28:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topicort') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-28T16:59:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-12T19:33:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenylephrine Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-21T11:44:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Colazal') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-29T17:19:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Exjade') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-27T10:41:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pyrazinamide') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-23T12:00:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trihexyphenidyl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-09T07:56:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rhinocort Aqua') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-09T09:23:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Acular') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-03T10:42:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Omnaris') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-13T13:53:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Balsalazide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-22T14:33:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cocaine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-12T16:55:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-27T18:58:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Antivenin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-20T18:37:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mobic') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-25T15:34:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hexachlorophene') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-29T18:14:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ciclopirox Gel') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-06T11:21:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hyoscyamine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-26T13:31:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenoxybenzamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-22T09:21:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Je-Vax') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-14T11:35:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Paser') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-16T14:38:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fansidar') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-25T14:00:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levemir') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-17T19:42:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levo-T') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-23T08:36:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Synthroid') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-13T15:18:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Amerge') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-05T13:02:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Simponi') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-28T13:42:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Septra') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-05T18:47:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vivelle-Dot') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-13T10:21:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Plavix') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-30T18:32:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tolazamide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-03T15:14:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Selegiline Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-13T13:11:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Brevibloc') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-09T10:22:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Istalol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-13T18:15:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Parafon Forte') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-18T11:53:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylene Blue') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-07T07:59:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Raltegravir') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-14T13:09:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Prinivil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-03T19:53:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Flucytosine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-01T07:26:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Allegra D 24 Hour') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-14T10:06:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefizox') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-29T19:59:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Marinol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-18T14:57:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Paser') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-03T09:35:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chlorambucil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-13T15:19:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nebivolol Tablets') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-14T15:23:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pentoxifylline') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-11T07:30:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vimovo') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-06T10:58:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenytoin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-12T19:43:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Axid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-12T11:48:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Revex') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-06T11:57:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rituximab') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-03T08:07:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Donepezil Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-03T19:40:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cocaine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-13T10:59:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Esomeprazole Sodium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-08T16:44:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Enflurane') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-05T08:54:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tonocard') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-24T11:34:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gonal-f RFF') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-26T15:17:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefzil') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-19T11:35:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adcirca') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-17T09:54:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pataday') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-05T07:07:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ovcon') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-25T15:59:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Slow-K') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-02T19:12:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tamiflu') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-03T13:31:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Topiramate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-26T10:10:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Luvox CR') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-01T10:56:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethosuximide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-25T11:53:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chorionic Gonadotropin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-06T12:22:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenobarbital') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-06T15:18:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pfizerpen') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-22T15:47:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nesacaine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-04T14:46:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Benzphetamine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-30T09:31:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sucralfate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-15T15:37:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Serzone') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-23T18:16:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Diprolene AF') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-07T13:14:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vaprisol') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-08T18:26:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nortriptyline Hydrochloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-18T09:57:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Flucytosine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-13T14:26:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Temovate Scalp') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-13T19:07:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sprycel') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-06T07:53:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lexxel') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-09T13:54:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adefovir Dipivoxil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-15T10:28:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'AdreView') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-30T12:26:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Geocillin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-05T16:14:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Brovana') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-12T17:28:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cellulose') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-06T13:27:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rosiglitazone Maleate') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-24T12:46:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Primaquine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-14T10:09:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cytogam') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-13T08:12:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rezulin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-12T08:20:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Foradil Certihaler') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-28T15:03:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Starlix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-09T14:17:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nimotop') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-11T13:21:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cocaine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-14T17:54:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Erlotinib') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-21T16:40:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Naltrexone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-21T17:15:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Oxycontin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-24T14:01:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pilocarpine Hydrochloride') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-18T15:35:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dexrazoxane') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-16T13:55:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ovcon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-09T10:51:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Navelbine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-05T19:57:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Armodafinil') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-26T13:03:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Flector') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-13T13:40:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Penicillamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-12T09:17:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Synthroid') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-01T15:14:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trilipix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-12T09:30:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Betagan') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-04T07:36:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dipyridamole') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-05T18:47:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pentoxifylline') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-26T07:46:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pentobarbital') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-21T19:00:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sunitinib Malate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-08T19:25:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Veltin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-14T18:02:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hepatitis A Vaccine, Inactivated') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-08T11:03:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eulexin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-20T12:42:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ziconotide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-03T12:23:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cleviprex') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-19T18:44:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Rifamate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-15T17:09:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Elavil') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-11T09:30:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tamiflu') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-21T16:58:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hyoscyamine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-17T12:24:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pletal') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-22T13:08:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nimotop') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-20T09:25:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hepatitis B Immune Globulin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-04T14:55:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trasylol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-11-23T07:05:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tapazole') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-13T07:22:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cefotetan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-15T12:36:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Aminosalicylic Acid') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-08T12:16:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tamoxifen Citrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-07T14:05:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myobloc') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-02T09:11:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sertraline Hcl') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-25T15:45:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Multi Vitamin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-16T09:04:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Starlix') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-14T09:21:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cerumenex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-21T19:02:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Finacea') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-03T18:26:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ethambutol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-06T19:58:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Depacon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-23T14:59:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Nizatidine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-31T13:48:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Captopril') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-25T11:35:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Lucentis') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-16T11:07:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demser') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-10T10:21:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Alli') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-03T08:49:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Epinephrine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-11T11:44:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Carmustine') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-27T17:02:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ibuprofen Lysine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-25T17:50:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gadofosveset Trisodium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-15T17:59:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vistide') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-12T08:54:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Levonorgestrel and Ethinyl Estradiol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-27T18:14:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fluoroplex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-17T17:19:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zonalon') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-16T08:08:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Serax') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-01T14:38:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Mobic') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-01T13:58:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Colesevelam Hcl') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-17T10:38:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Jalyn') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-21T10:40:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Detrol LA') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-29T14:43:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Insulin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-06T18:55:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Malathion') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-08T12:33:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azasan') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-25T18:58:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Desferal') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-09T19:35:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methylene Blue') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-11T08:51:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zestril') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-10T08:58:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Teniposide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-05T16:06:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vicodin HP') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-19T08:21:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pramipexole') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-24T07:34:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Implanon') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-12T19:18:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pindolol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-15T12:44:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Piroxicam') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-06T15:20:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Chlorthalidone') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-30T17:56:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Trastuzumab') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-03T18:27:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Reyataz') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-16T12:16:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bromocriptine Mesylate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-21T09:35:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Esomeprazole Sodium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-22T09:10:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zalcitabine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-27T18:56:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myochrysine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-08T17:51:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Omeprazole') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-02T11:40:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Advair HFA') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-24T16:10:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Klonopin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-04T09:20:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Azilect') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-14T17:50:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Photofrin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-05T10:18:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Thiopental Sodium') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-18T07:29:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Hepatitis B Immune Globulin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-23T19:55:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Calcium Chloride') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-04T18:16:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pediapred') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-09T10:35:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pilopine HS') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-03T09:02:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Gynazole') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-30T15:27:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Boniva') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-31T14:39:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Velosulin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-29T07:38:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fosphenytoin Sodium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-15T18:48:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phosphate') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-27T13:16:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Maraviroc') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-03T08:40:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Proleukin') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-02T09:07:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Opana') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-22T11:39:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myochrysine') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-23T08:20:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ifosfamide') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-18T09:20:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Soriatane') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-17T15:48:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Pegfilgrastim') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-19T18:58:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Eligard') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-25T08:25:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cipro') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-03T17:11:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Quixin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-06T16:34:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Methadose Oral Concentrate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-09T08:34:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Phenylephrine HCl') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-10T11:13:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Cytogam') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-03T08:07:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Adcirca') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-13T14:18:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bismuth Subsalicylate') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-27T18:11:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Minocin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-10T09:08:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Velosulin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-04T12:02:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Insulin') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-07T12:06:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Dacarbazine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-27T15:04:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ionamin') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-04T14:17:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Neostigmine') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-04T14:47:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Zmax') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-01T10:50:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Terazol 3, Terazol 7') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-03T17:36:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Atripla') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-23T09:07:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Sprix') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-24T13:30:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Tolmetin Sodium') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-18T13:20:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Febuxostat') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-26T14:52:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bepreve') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-21T08:36:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Winstrol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-20T08:05:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Temovate Scalp') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-05T11:04:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Vaprisol') AS medicine, 1 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-29T11:32:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Myobloc') AS medicine, 2 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-14T13:30:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Demadex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-11T15:01:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Fluoroplex') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-04T18:22:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Ergocalciferol') AS medicine, 3 AS quantity
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-15T11:37:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO medicine_prescription(prescription, medicine, quantity)
SELECT id AS prescription, (SELECT id FROM medicine WHERE name = 'Bromocriptine Mesylate') AS medicine, 1 AS quantity
FROM pr;