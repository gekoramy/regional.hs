WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-30T11:35:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DQB1 alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-09T18:52:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-30T14:17:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura semisolida di cellule emopoietiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-26T19:56:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Riparazione di apparecchio ortodontico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-13T12:45:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-21T12:35:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-10T09:57:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per scambi di cromatidi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-03T11:59:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNDVD36S07B856Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione allergia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-15T16:08:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricerca Mutazione (DGGE)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-16T19:04:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione DNA o RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-21T13:19:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-19T13:01:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-22T13:12:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio R') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-12T11:03:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DRB alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-21T19:55:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-07T18:13:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRMTN56R51H200S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DP seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-01T17:25:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Anticorpi Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-09T07:02:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (ibridazione)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-04T09:50:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DP alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-12T11:08:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test resistenza proteina C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-14T09:28:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-01T15:55:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVLDA47A11F762Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia globale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-27T11:39:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : A sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-06T07:19:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-21T11:12:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-31T16:12:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di tromboplastina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-15T07:53:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCLNR94S70H412J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inalanti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-26T12:28:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-21T10:31:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Crioconservazione in azoto liquido di colture cellulari') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-08T11:43:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento applicazioni protesi semovibili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-24T14:43:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-09-12T08:45:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Orticarie fisiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-21T17:02:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLVGLO23P09F618Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter esame colturale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-20T07:10:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione sierologica HLA classe II') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-13T15:04:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapie e riabilitazioni') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-29T10:11:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia Cerebrale (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-07T17:37:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-14T08:08:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSGVR54D49C953T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-14T11:07:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-08-19T19:58:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio Q') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-10T09:47:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di tessuto della gengiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-28T13:17:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-06T12:23:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-30T13:22:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata del rachide') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-17T07:34:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV03A50H683Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi di fibroblasti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-25T14:22:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di materiale abortivo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-17T10:12:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Levigatura delle radici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-23T09:11:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di tromboplastina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-30T16:22:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente permanente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-11T08:09:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (ibridazione)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-07-17T09:08:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inalanti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-24T08:58:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test aggregazione piastrinica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-29T18:29:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRFNC90C64A452V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-20T13:12:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra applicazione corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-18T14:05:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-21T13:24:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ibridazione con sonda molecolare') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-03T13:13:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-13T14:26:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNNDA43E42B565I')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione allergia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-02T17:05:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di villi coriali a breve termine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-03T11:49:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Splintaggio per gruppi di 4 denti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-24T14:12:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Digestione DNA con enzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-18T19:07:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-26T07:50:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTLSN99T09C470B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Riparazione di apparecchio ortodontico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-08T14:13:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di protesi rimovibile') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-03T08:24:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi spontanee di villi corali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-06T18:47:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-11T17:26:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter antibiogramma') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-16T14:29:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CPPMRC35T06G780O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di protesi provvisoria') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-30T10:15:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DQB1 alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-06T13:39:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio R') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-02T15:19:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : B') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-20T13:15:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-14T19:34:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio Q') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-01T13:56:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-26T16:15:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMSLV21C53A756H')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra applicazione corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-17T10:40:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-30T18:15:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Esercizi respiratori per seduta collettiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-04T18:11:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di protesi provvisoria') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-28T19:04:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test resistenza proteina C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-11T18:57:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-02T09:58:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-07T09:47:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTMRA03T55E054Y')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Radiologia diagnostica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-03T08:19:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-09-22T13:09:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-27T19:54:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra inserzione di protesi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-17T16:20:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-02-11T07:52:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di cilli coriali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-06T17:44:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-16T13:12:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento con apparecchi funzionali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-07T17:51:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMRA69M06A346L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-18T13:45:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-26T13:15:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per studio riarrangiamenti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-27T14:42:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per ricerca siti fragili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-15T13:47:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di lesione dentaria della mandibola (gratuita fino a 14 anni)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-29T09:25:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: distamicina A') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-11T08:25:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricerca Mutazione (DGGE)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-27T12:59:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSN55R48C885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto superiore senza e con contrasto (patologia o sospetto oncologico)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-19T13:59:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra riparazione dentaria') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-08T16:15:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia globale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-23T13:47:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-23T10:32:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-10T08:52:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RDNGNI21B08L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test aggregazione piastrinica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-04T14:31:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Levigatura delle radici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-20T12:46:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-20T19:22:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapia del dolore da metastasi ossee') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-29T10:51:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di tromboplastina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-25T07:41:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-26T12:34:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra estrazione chirurgica dente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-08T12:56:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSACLD23R65L039N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-22T07:05:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Miceti anticorpi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-28T18:57:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) della colonna senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-01T10:33:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi spontanee di villi corali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-04T08:46:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione DNA o RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-04-11T13:19:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNADNL93D49I820M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-11T12:32:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Esercizi respiratori per seduta individuale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-03T14:49:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-16T16:51:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-28T18:52:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-24T18:53:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio T') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-26T10:05:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test epicutanei a lettura ritardata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-20T07:03:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapia del dolore da metastasi ossee') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-28T10:57:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Shigelle') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-17T10:41:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DLCSFN00M19I442E')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-28T16:20:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Anticorpi Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-25T18:05:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura per studio del cromosoma X') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-26T13:33:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente permanente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-04T12:58:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-01T16:27:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) della colonna cervicale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-04T08:32:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-11T10:26:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (IF)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-13T12:52:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAMRA70L50E037S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-18T10:00:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-26T12:57:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-25T10:25:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricerca mutazione (SSCP)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-19T12:50:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-23T18:33:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DRB bassa risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-28T16:15:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : B sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-11T07:22:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-15T14:57:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DQB1 bassa risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-13T17:12:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGLN23E70G989M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test a lettura immediata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-25T15:07:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi DNA studio citometrico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-27T11:15:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test resistenza proteina C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-10T17:42:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter esame colturale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-18T14:27:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di tessuto della gengiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-17T13:39:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : B sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-14T09:46:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Applicazione di corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-28T10:45:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente con otturazione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-05-08T12:55:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-01-21T17:07:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRMRT48E12G389R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi DNA per polimorfismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-22T10:47:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Anticorpi Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-10T17:57:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (IF)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-07-25T15:54:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-16T09:39:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : A sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-06T14:57:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per studio mosaicismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-04T12:58:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSSRA79B41B674S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura semisolida di cellule emopoietiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-28T14:25:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi linfocitarie') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-03T08:36:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Orticarie fisiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-03-20T12:10:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra inserzione di protesi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-09T18:45:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi spontanee di villi corali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-04-20T17:51:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (EIA)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-24T11:48:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test a lettura immediata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-08T13:29:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTLNR67A62D383Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione sierologica HLA classe II') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-25T12:58:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-26T11:32:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Virus epatite B (HBV) Anticorpi Hbeag') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-10T15:32:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente permanente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-02-17T13:42:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapia canalare in monoradicolato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-01-03T11:01:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Applicazione corona e perno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-20T18:46:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCCRL46P06L142G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DP alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-07-01T09:41:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Crioconservazione in azoto liquido di cellule e tessuti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-22T16:06:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Salmonelle da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-06T16:12:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura semisolida di cellule emopoietiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-22T12:38:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi DNA per polimorfismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-04-06T19:19:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-30T12:25:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA51E21I885G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Miceti lieviti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-14T07:00:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Splintaggio per gruppi di 4 denti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-18T15:35:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio R') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-10-22T10:24:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trombossano B2') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-10-17T12:49:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-07T07:41:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNCGNN61D01I066G')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Rimozione protesi dentarie') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-11T16:08:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto superiore (solo con patologia traumatica acuta)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-26T13:13:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Rimozione protesi dentarie') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-31T13:33:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test resistenza proteina C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-01T19:56:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Applicazione corona e perno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-14T12:27:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di cilli coriali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-13T15:07:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Levigatura delle radici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-25T16:32:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-04T10:26:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento applicazioni protesi semovibili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-24T07:24:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZDNL95D68C470D')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DP seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-25T14:29:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Salmonelle da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-07T19:16:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Esercizi respiratori per seduta collettiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-03-29T13:51:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: distamicina A') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-11-13T19:11:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia globale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-22T11:24:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRTTL83C01G827Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ablazione tartaro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-11-28T08:46:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento con apparecchi funzionali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-20T09:29:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-20T09:36:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura semisolida di cellule emopoietiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-10-18T14:51:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Impianto di protesi dentaria') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-19T18:40:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra estrazione chirurgica dente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-08-17T13:53:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-07T09:37:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-10-23T16:22:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLLSRA36A42L460N')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Miceti anticorpi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-21T13:55:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-10T14:41:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test epicutanei a lettura ritardata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-13T09:13:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter antibiogramma') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-28T12:55:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-30T13:21:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-31T15:46:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Applicazione di corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-10T16:34:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente con otturazione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-03T15:33:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi di fibroblasti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-17T10:07:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTSFN53D20D671O')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (IF)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-16T08:50:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra applicazione corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-04T16:04:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per scambi di cromatidi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-02T12:51:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-14T09:34:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Riparazione di apparecchio ortodontico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-06T12:27:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SGTLGU33T31L550F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Splintaggio per gruppi di 4 denti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-11-05T15:02:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto inferiore (patologia traumatica)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-06T17:34:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Esercizi respiratori per seduta collettiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-26T14:34:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di villi coriali a breve termine') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-27T19:29:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Miceti lieviti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-30T09:18:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Orticarie fisiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-22T18:21:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-05T19:30:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto superiore senza e con contrasto (patologia o sospetto oncologico)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-12T11:46:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test epicutanei a lettura ritardata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-17T09:16:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSNT61S52I248M')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-03T17:14:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Crioconservazione in azoto liquido di colture cellulari') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-08T09:38:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Shigelle') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-06T16:45:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto inferiore senza e con contrasto (patologia o sospetto oncologico)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-15T15:37:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-23T11:02:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DQB1 alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-22T16:06:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto inferiore (patologia traumatica)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-19T07:47:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente permanente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-19T17:44:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCFRC03C49I630J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di cilli coriali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-06T10:19:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Campylobacter da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-29T11:45:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricerca mutazione (SSCP)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-04-21T07:36:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi DNA per polimorfismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-28T07:49:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : C seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-11T14:27:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento applicazioni protesi semovibili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-10-09T13:18:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DP seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-17T08:04:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLDNL00E58E029R')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per ricerca siti fragili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-05-09T13:04:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento applicazioni protesi semovibili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-16T19:32:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test resistenza proteina C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-12-31T13:06:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Radioterapia stereotassica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-06T11:03:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapia del dolore da metastasi ossee') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-10T13:34:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento con apparecchi funzionali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-25T13:45:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Applicazione di corona in lega aurea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-24T11:11:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLSN83R29A294A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-26T10:14:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di lesione dentaria della mandibola (gratuita fino a 14 anni)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-09T17:05:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-28T19:09:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi DNA per polimorfismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-08T14:36:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per scambi di cromatidi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-05T14:33:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RCCCRL64R16A968V')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione allergia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-30T10:09:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Riparazione di apparecchio ortodontico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-27T07:02:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-06-12T16:11:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Irradiazione cutanea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-04T16:07:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente deciduo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-04T17:50:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per scambi di cromatidi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-23T15:58:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapia canalare in monoradicolato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-06T10:34:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inalanti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-17T14:08:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRCRNT35D26L245L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-19T17:50:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : B sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-09T11:49:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-28T18:49:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione DNA o RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-22T08:32:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-27T09:40:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Irradiazione cutanea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-04-29T07:46:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Radioterapia stereotassica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-07-16T17:44:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-22T17:52:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RMNDVD85E03E029U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Riparazione di apparecchio ortodontico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-22T12:02:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-08-01T10:48:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DQB1 alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-12T14:26:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Applicazione di corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-20T12:18:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DRB alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-29T16:01:18',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente mediante intarsio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-22T19:08:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Impianto di protesi dentaria') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-03-18T14:21:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTMCL58A08F043Q')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) della colonna senza e con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-22T19:33:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-02T14:39:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inserzione di protesi rimovibile') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-09-03T15:43:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DRB bassa risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-09T08:08:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di materiale abortivo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-22T15:30:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomoscintigrafia Cerebrale (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-31T18:08:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-10-22T07:49:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di lesione dentaria della mandibola (gratuita fino a 14 anni)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-05T08:11:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Irradiazione cutanea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-21T10:56:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMTN74M41B371C')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi di midollo osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-31T15:31:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi di midollo osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-08T14:27:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente con otturazione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-06T10:37:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-27T13:33:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-07-05T07:29:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Terapia del dolore da metastasi ossee') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-23T13:48:01',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRELIO45S48M115J')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento con apparecchi fissi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-11-27T08:11:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo ad alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-13T17:42:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Risonanza magnetica nucleare (RM) della colonna cervicale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-01-13T11:46:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento con apparecchi funzionali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-11T10:37:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di lesione dentaria della mandibola (gratuita fino a 14 anni)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-06-05T13:10:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DP seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-12T19:49:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTGCM89L06B781A')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente deciduo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-02T13:39:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Irradiazione cutanea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-12-28T10:22:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi citogenetica per scambi di cromatidi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-31T08:33:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi di fibroblasti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-01-07T13:05:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra estrazione chirurgica dente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-03-02T08:20:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-21T12:10:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MSRGRG49T17E396T')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-20T09:47:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Immunizzazione allergia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-06-30T17:11:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Chlamydie ricerca diretta (ibridazione)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-25T10:31:57',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di cilli coriali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-04T13:11:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Splintaggio per gruppi di 4 denti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-02T08:47:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : C seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-21T16:26:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'VLPSLV64L50M303S')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricerca Mutazione (DGGE)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-07-22T17:19:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di tessuto della gengiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-21T16:11:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tomografia computerizzata dell''arto superiore (solo con patologia traumatica acuta)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-11-28T16:38:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura per studio del cromosoma X') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-11T10:32:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Inalanti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-01T13:47:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-24T19:57:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLSMN32S02I885L')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Cariotipo da metafasi di midollo osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-08-10T14:24:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento applicazioni protesi semovibili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-07T16:41:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-17T18:02:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Splintaggio per gruppi di 4 denti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-05-13T10:31:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Test epicutanei a lettura ritardata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-21T09:10:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBPLA41D53I410F')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura di materiale abortivo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-11-29T10:19:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Colorazione aggiuntiva in bande: bandeggio T') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-18T09:11:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente permanente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-05T16:53:54',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione DNA o RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-04T19:52:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Asportazione di tessuto della gengiva') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-09-02T16:41:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCLNR56C49D630Z')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Ibridazione con sonda molecolare') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-22T16:13:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente deciduo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-29T13:47:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-24T12:21:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-09-19T07:22:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica HLA : B sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-28T14:04:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLLRA60L57C719B')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Crioconservazione in azoto liquido di cellule e tessuti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-11-19T17:26:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Coltura semisolida di cellule emopoietiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-24T17:29:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Tipizzazione genomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-01-06T12:38:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-19T07:26:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Altra applicazione corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-02T16:30:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSLRI90L46A755U')
  )
  RETURNING id
)
INSERT INTO hs_prescription(prescription, exam)
SELECT id AS prescription, (SELECT id FROM examination WHERE name = 'Estrazione di dente deciduo') AS exam
FROM pr;