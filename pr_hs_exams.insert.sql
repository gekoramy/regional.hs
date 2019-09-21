WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-14T16:02:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Esercizi respiratori per seduta individuale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-13T16:04:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SRRSFN72D69H006B')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Digestione DNA con enzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-12-05T19:52:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomoscintigrafia globale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-02-05T08:38:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNRNN23D61F396Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo da metafasi di midollo osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-21T14:10:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento con apparecchi fissi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-07-30T08:46:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGSLV05M51L200O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Impianto di protesi dentaria') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-06-06T12:31:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Radiologia diagnostica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-25T07:26:22',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRTPLA24E70F378C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-09-29T19:25:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-09T08:48:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTGLN15P70G227F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Risonanza magnetica nucleare (RM) della colonna cervicale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-27T09:09:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento con apparecchi funzionali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-13T15:52:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCMRT73H26H891I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-14T17:57:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi DNA e ibridazione con sonda') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-10-23T09:31:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRTPLA55M42L656O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Applicazione di corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-08-25T15:16:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Levigatura delle radici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-12-20T18:28:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLCU44L64L155Z')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Risonanza magnetica nucleare (RM) della colonna cervicale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-02-06T07:16:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Immunizzazione allergia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-03-03T14:49:31',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLALSS57L67I377V')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi citogenetica per studio mosaicismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-12-25T13:54:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ablazione tartaro') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-08-04T11:25:52',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSLGU06M25A855Z')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: Actinomicina D') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-03-27T15:37:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomoscintigrafia globale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-04-20T10:10:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSMTN34M59I843O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Chlamydie ricerca diretta (EIA)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-04T17:47:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-12-16T16:24:19',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CRSGVR27R56H952P')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-07-15T19:31:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-02-12T10:47:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTPLA59P02H753S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Altra applicazione corona e perno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-12-17T13:40:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata dell''arto inferiore (patologia traumatica)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-03-07T16:38:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCCST73T47A520Y')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-17T10:18:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione sierologica HLA classe II') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-06-03T09:53:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTMRA23D52A200K')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Digestione DNA con enzimi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-08-04T18:59:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-05-02T08:44:56',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLI71H29M072L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : DR seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-16T19:52:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Estrazione di dente deciduo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-04-19T17:29:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNGNI43R23F426D')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi di segmenti di DNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-01T12:20:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione sierologica HLA classe I') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-11T15:21:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRLRA55E59H244F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Campylobacter da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-08-29T08:01:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento con apparecchi funzionali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-02-02T16:42:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLLCU67B17I686K')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Asportazione di lesione dentaria della mandibola (gratuita fino a 14 anni)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-09-04T16:26:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tempo di tromboplastina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-09-30T14:52:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTMRT34C12F138G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricerca Mutazione (DGGE)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-12-15T09:11:25',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Crioconservazione in azoto liquido di cellule e tessuti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-08-30T11:36:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SPSTTL06M07G268F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2013-11-03T09:39:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio R') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-08-22T09:09:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTGLI66L28C794T')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento applicazioni protesi semovibili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-10-29T18:00:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2012-09-08T18:47:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRGLI86L16I092Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Inserzione di protesi rimovibile') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-03-07T07:59:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Campylobacter da coltura') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-05-07T15:05:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DMCFNC97S08B266H')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Viscosita ematica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-02-11T17:08:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-10-06T07:18:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NRESFN58E12H497M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Miceti anticorpi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-01-13T19:23:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo da metafasi di midollo osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-03-26T14:40:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BLTVNT15B45G656S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata dell''arto superiore (solo con patologia traumatica acuta)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2015-06-05T16:08:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Terapia luce ultravioletta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2014-10-17T11:30:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBFLC51C23C211M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo da metafasi spontanee di villi corali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2016-04-27T14:19:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione sierologica HLA classe I') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-02-19T08:38:26',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTGNN37S21D468L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Inalanti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-05-29T09:29:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata dell''arto superiore senza e con contrasto (patologia o sospetto oncologico)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2019-01-25T16:30:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLNDR56P30G426Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo da metafasi spontanee di villi corali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2018-07-26T16:51:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Test epicutanei a lettura ritardata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'BZ'),
    '2017-01-21T09:54:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RGGGLO34H03F710I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio G') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-10T19:20:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione sierologica HLA classe II') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-03T09:00:51',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBMRA27T66D188J')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Terapia canalare in pluriradicolato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-07-23T15:14:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio Q') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-08-29T10:42:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSFRC72C58L769G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-21T13:30:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Test a lettura immediata') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-15T17:24:48',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTGTN83R27G198U')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio T') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-13T17:34:06',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi DNA e ibridazione con sonda') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-05T12:53:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MNCGNS59H44I032T')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Chlamydie ricerca diretta (EIA)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-18T07:51:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : DQ alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-17T17:33:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLNDA02M56A877S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata del rachide') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-09T15:15:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-08-25T11:44:58',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLFNC56R17B371I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente mediante intarsio') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-10-20T07:54:44',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi citogenetica per studio mosaicismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-02-06T14:58:05',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLGLI05A29D886O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Coltura di linfociti periferici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-11-17T13:42:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-01T16:42:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGLO78M06F947R')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Terapia canalare in monoradicolato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-30T12:36:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : B sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-02-03T08:32:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FRRSLV77H58L647L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomoscintigrafia miocardica (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-01-17T18:26:33',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Test aggregazione piastrinica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-07T12:44:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCGRL06R29L335E')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Terapia canalare in monoradicolato') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-05-15T16:29:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Applicazione di corona in lega aurea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-05-13T08:08:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCGNN18D23H128Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Miceti lieviti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-11-20T19:07:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione sierologica HLA classe I') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-29T13:24:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NGRNDA32B68B980P')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi citogenetica per studio riarrangiamenti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-02T07:36:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Trattamento ortodontico con apparecchi mobili') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-04T17:10:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CNTSMN06C28L211B')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Altra applicazione corona e perno') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-04T07:48:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-04-15T19:56:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNLVNT35P64L083M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Orticarie fisiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-03T16:44:38',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente con otturazione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-28T11:22:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRCCRL00H03G455M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi mutazione del DNA con reazione polimerasica a catena') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-09T07:54:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione sierologica HLA classe II') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-15T12:54:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGNN53D06L643S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-12-08T19:03:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Gengivoplastica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-01-16T11:23:42',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLPLA28T50H268D')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata con contrasto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-12T09:29:49',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo ad alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-09-09T18:57:28',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBLGU70S30H097A')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-17T09:10:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Orticarie fisiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-09-19T19:48:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BNTCST91E63B579Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-30T14:26:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Crioconservazione in azoto liquido di cellule e tessuti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-13T15:03:37',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RSSGTN68C19G736G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Chlamydie ricerca diretta (IF)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-11T19:03:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-15T19:36:27',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNGMRC42C15L385W')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Levigatura delle radici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-08-29T07:23:45',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi DNA per polimorfismo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-17T16:20:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BZZFNC49D15G340C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Estrazione DNA o RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-02-06T16:44:53',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Applicazione di corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-03-06T17:32:20',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FLCVNT69L41A975G')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio G alta ris.') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-06-27T15:30:30',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Altra applicazione corona') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-11T17:13:32',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGVR16T48L909C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo da metafasi di midollo osseo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-05-09T15:37:34',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi citogenetica per scambi di cromatidi') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-12-17T16:42:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'SLAGPP85L02F367M')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Apicectomia') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-05-31T15:40:13',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Estrazione DNA o RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-10-17T16:49:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'BRBMRA27A47B536Z')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Riparazione di apparecchio ortodontico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-12-22T14:46:41',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi DNA studio citometrico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-09-15T12:04:12',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'MRNGNN77E10I805N')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-06T17:11:00',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Sigillatura solchi e fossette') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-23T10:41:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMPLA83E10B452C')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio T') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-16T07:30:29',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Terapia luce ultravioletta') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-07-21T11:01:03',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLGDU73L22H459U')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : C') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-03-19T17:08:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomoscintigrafia Cerebrale (PET)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-16T18:07:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PRSCST83E44A509N')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Coltura di cilli coriali') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-09-26T16:03:47',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-05-30T11:19:39',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTLSE90C56I131U')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Cariotipo da metafasi di fibroblasti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-02-05T08:45:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Conservazione campioni DNA RNA') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-06-24T19:16:16',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSDVD14T19A330H')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Immunizzazione malattia autoimmune') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-11-28T09:37:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Inserzione di ponte fisso') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-08-26T15:03:55',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RLNBRC95C58L845W')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Coltura di amniociti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-03-20T08:16:24',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Colorazione aggiuntiva in bande: bandeggio G alta ris.') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-05-25T17:47:11',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CLMGRL92A22C217L')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Impianto di dente') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2012-12-24T19:05:17',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-07T11:58:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'DNTLSN37C30D246Q')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tempo di protrombina') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-06-22T18:50:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente mediante otturazione a tre o più superfici') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-04-05T15:01:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRRGLN92R68D832T')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Crioconservazione in azoto liquido di cellule e tessuti') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-03-08T15:21:04',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Orticarie fisiche') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-07-13T11:17:02',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'NREGNN40L17A512F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricostruzione dente con otturazione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-09-11T17:03:10',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : DQ alta risoluzione') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-06-19T13:43:15',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'FNTRNT43L01A266I')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : DQ seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-01-02T10:16:07',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Ricerca mutazione (SSCP)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-04-14T15:41:14',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'LMBGNN74E19F750F')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : A sequenziamento diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-12-01T14:38:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Coltura di materiale abortivo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-06-24T17:01:40',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'CSTCLD12B47A294O')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-08-05T12:57:35',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Radioterapia stereotassica') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-11-26T09:10:09',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'RNAGNI70R23B712K')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Shigelle') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2016-10-30T11:58:46',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Irradiazione cutanea') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2018-12-27T19:10:21',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GLLSFN47C31I056X')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Campylobacter esame colturale') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2014-04-15T18:01:08',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tomografia computerizzata dell''arto inferiore (patologia traumatica)') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2019-01-15T12:19:23',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GRSTTL18C05C817X')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Estrazione di dente deciduo') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2015-06-13T17:38:59',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Intervento chirurgico preprotesico') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-01-19T12:47:36',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'GTTCRL14A09H039X')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Analisi DNA e ibridazione con sonda') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2013-11-08T16:09:43',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Tipizzazione genomica HLA : DQ seq. diretto') AS exam
FROM pr;

WITH pr AS (
  INSERT INTO prescription (place, date, concerns)
  VALUES (
    (SELECT id FROM province WHERE abbreviation = 'TN'),
    '2017-06-12T12:44:50',
    (SELECT F.id FROM follows F INNER JOIN person P ON F.patient = P.id WHERE P.fc = 'PLLFNC68S46E165S')
  )
  RETURNING id
)
INSERT INTO pr_hs_exam(prescription, exam)
SELECT id AS prescription, (SELECT id FROM hs_exam WHERE name = 'Impianto di dente') AS exam
FROM pr;