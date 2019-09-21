WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SPSTTL06M07G268F'
               AND P.date = '2012-08-30T11:36:06Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ricostruzione dente mediante otturazione a tre o più superfici' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRGLI86L16I092Q'
               AND P.date = '2012-09-08T18:47:45Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Inserzione di protesi rimovibile' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTLSE90C56I131U'
               AND P.date = '2012-09-26T16:03:47Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Intervento chirurgico preprotesico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLGLI05A29D886O'
               AND P.date = '2012-10-20T07:54:44Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi citogenetica per studio mosaicismo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRNDA32B68B980P'
               AND P.date = '2012-11-20T19:07:23Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione sierologica HLA classe I' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLCU44L64L155Z'
               AND P.date = '2012-12-20T18:28:20Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) della colonna cervicale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTLSN37C30D246Q'
               AND P.date = '2012-12-24T19:05:17Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Intervento chirurgico preprotesico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLGU06M25A855Z'
               AND P.date = '2012-12-25T13:54:39Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ablazione tartaro' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCGRL06R29L335E'
               AND P.date = '2013-01-17T18:26:33Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Test aggregazione piastrinica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2013-02-06T07:16:34Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Immunizzazione allergia' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2013-03-03T14:49:31Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi citogenetica per studio mosaicismo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLN92R68D832T'
               AND P.date = '2013-04-05T15:01:46Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Crioconservazione in azoto liquido di cellule e tessuti' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTGTN83R27G198U'
               AND P.date = '2013-04-15T17:24:48Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio T' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2013-05-25T17:47:11Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Impianto di dente' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRTPLA24E70F378C'
               AND P.date = '2013-06-06T12:31:05Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Radiologia diagnostica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTRNT43L01A266I'
               AND P.date = '2013-06-19T13:43:15Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione genomica HLA : DQ seq. diretto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLGU06M25A855Z'
               AND P.date = '2013-08-04T11:25:52Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: Actinomicina D' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNBRC95C58L845W'
               AND P.date = '2013-08-26T15:03:55Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Coltura di amniociti' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTMRT34C12F138G'
               AND P.date = '2013-09-04T16:26:55Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tempo di tromboplastina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTGLI66L28C794T'
               AND P.date = '2013-11-03T09:39:34Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio R' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLFNC68S46E165S'
               AND P.date = '2013-11-08T16:09:43Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione genomica HLA : DQ seq. diretto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGLO78M06F947R'
               AND P.date = '2013-11-17T13:42:45Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomoscintigrafia miocardica (PET)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CRSGVR27R56H952P'
               AND P.date = '2013-12-16T16:24:19Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ricostruzione dente mediante otturazione a tre o più superfici' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CNTSMN06C28L211B'
               AND P.date = '2014-01-02T07:36:16Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Trattamento ortodontico con apparecchi mobili' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBGNN74E19F750F'
               AND P.date = '2014-01-02T10:16:07Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ricerca mutazione (SSCP)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNRNN23D61F396Q'
               AND P.date = '2014-02-05T08:38:04Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Cariotipo da metafasi di midollo osseo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLGLI05A29D886O'
               AND P.date = '2014-02-06T14:58:05Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Coltura di linfociti periferici' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CRSGVR27R56H952P'
               AND P.date = '2014-03-04T17:47:45Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione genomica HLA : C' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2014-03-07T07:59:32Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Campylobacter da coltura' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2014-03-20T08:16:24Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio G alta ris.' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSTTL18C05C817X'
               AND P.date = '2014-04-15T18:01:08Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomografia computerizzata dell''arto inferiore (patologia traumatica)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CNTSMN06C28L211B'
               AND P.date = '2014-05-04T17:10:02Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Altra applicazione corona e perno' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLFNC56R17B371I'
               AND P.date = '2014-05-09T15:15:42Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tempo di protrombina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLAGPP85L02F367M'
               AND P.date = '2014-05-09T15:37:34Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi citogenetica per scambi di cromatidi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMPLA83E10B452C'
               AND P.date = '2014-06-06T17:11:00Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Sigillatura solchi e fossette' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGDU73L22H459U'
               AND P.date = '2014-06-16T07:30:29Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Terapia luce ultravioletta' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTCLD12B47A294O'
               AND P.date = '2014-06-24T17:01:40Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Intervento chirurgico preprotesico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTPLA59P02H753S'
               AND P.date = '2014-07-15T19:31:05Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Trattamento ortodontico con apparecchi mobili' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSFRC72C58L769G'
               AND P.date = '2014-07-23T15:14:47Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio Q' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRTPLA55M42L656O'
               AND P.date = '2014-08-14T17:57:19Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi DNA e ibridazione con sonda' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTGLI66L28C794T'
               AND P.date = '2014-08-22T09:09:16Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Trattamento applicazioni protesi semovibili' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MNCMRT73H26H891I'
               AND P.date = '2014-08-27T09:09:04Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Trattamento con apparecchi funzionali' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSFRC72C58L769G'
               AND P.date = '2014-08-29T10:42:09Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Trattamento ortodontico con apparecchi mobili' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MNCGNS59H44I032T'
               AND P.date = '2014-09-05T12:53:35Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Chlamydie ricerca diretta (EIA)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BNTCST91E63B579Q'
               AND P.date = '2014-09-19T19:48:34Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tempo di protrombina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2014-10-16T19:52:53Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Estrazione di dente deciduo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBFLC51C23C211M'
               AND P.date = '2014-10-17T11:30:03Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Cariotipo da metafasi spontanee di villi corali' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTCLD12B47A294O'
               AND P.date = '2014-12-01T14:38:09Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Coltura di materiale abortivo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2014-12-03T16:44:38Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ricostruzione dente con otturazione' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLPLA28T50H268D'
               AND P.date = '2015-01-16T11:23:42Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomografia computerizzata con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCCST73T47A520Y'
               AND P.date = '2015-03-07T16:38:44Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Viscosita ematica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSMTN34M59I843O'
               AND P.date = '2015-04-20T10:10:42Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Chlamydie ricerca diretta (EIA)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLI71H29M072L'
               AND P.date = '2015-05-02T08:44:56Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione genomica HLA : DR seq. diretto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCGNN18D23H128Q'
               AND P.date = '2015-05-15T16:29:38Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Applicazione di corona in lega aurea' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBFLC51C23C211M'
               AND P.date = '2015-06-05T16:08:51Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Terapia luce ultravioletta' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2015-06-10T19:20:17Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione sierologica HLA classe II' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTCRL14A09H039X'
               AND P.date = '2015-06-13T17:38:59Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Intervento chirurgico preprotesico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMPLA83E10B452C'
               AND P.date = '2015-06-23T10:41:16Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio T' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLFNC56R17B371I'
               AND P.date = '2015-08-25T11:44:58Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ricostruzione dente mediante intarsio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLCU44L64L155Z'
               AND P.date = '2015-08-25T15:16:21Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Levigatura delle radici' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRTPLA55M42L656O'
               AND P.date = '2015-10-23T09:31:31Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Applicazione di corona' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCGRL06R29L335E'
               AND P.date = '2015-11-07T12:44:04Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Terapia canalare in monoradicolato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNAGNI70R23B712K'
               AND P.date = '2015-11-26T09:10:09Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Shigelle' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLNDA02M56A877S'
               AND P.date = '2015-12-18T07:51:47Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione genomica HLA : DQ alta risoluzione' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2015-12-22T14:46:41Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi DNA studio citometrico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLLCU67B17I686K'
               AND P.date = '2016-02-02T16:42:26Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Asportazione di lesione dentaria della mandibola (gratuita fino a 14 anni)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSDVD14T19A330H'
               AND P.date = '2016-02-05T08:45:36Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Conservazione campioni DNA RNA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SRRSFN72D69H006B'
               AND P.date = '2016-02-14T16:02:09Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Esercizi respiratori per seduta individuale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRLRA55E59H244F'
               AND P.date = '2016-04-11T15:21:51Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Campylobacter da coltura' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTGNN37S21D468L'
               AND P.date = '2016-04-27T14:19:47Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione sierologica HLA classe I' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2016-05-03T09:00:51Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Terapia canalare in pluriradicolato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBLGU70S30H097A'
               AND P.date = '2016-05-12T09:29:49Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Cariotipo ad alta risoluzione' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGNN53D06L643S'
               AND P.date = '2016-05-15T12:54:12Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomografia computerizzata con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBMRA27A47B536Z'
               AND P.date = '2016-05-31T15:40:13Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Estrazione DNA o RNA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2016-06-17T16:20:53Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Estrazione DNA o RNA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGVR16T48L909C'
               AND P.date = '2016-06-27T15:30:30Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Altra applicazione corona' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RGGSLV05M51L200O'
               AND P.date = '2016-07-30T08:46:35Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Impianto di protesi dentaria' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLI71H29M072L'
               AND P.date = '2016-08-04T18:59:03Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Sigillatura solchi e fossette' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBLGU70S30H097A'
               AND P.date = '2016-09-09T18:57:28Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tipizzazione genomica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSCST83E44A509N'
               AND P.date = '2016-10-16T18:07:02Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Coltura di cilli coriali' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTGTN83R27G198U'
               AND P.date = '2016-10-21T13:30:12Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Test a lettura immediata' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRGLI86L16I092Q'
               AND P.date = '2016-10-29T18:00:35Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con reazione polimerasica a catena' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GLLSFN47C31I056X'
               AND P.date = '2016-10-30T11:58:46Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Irradiazione cutanea' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNGMRC42C15L385W'
               AND P.date = '2016-11-15T19:36:27Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Levigatura delle radici' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNBRC95C58L845W'
               AND P.date = '2016-11-28T09:37:59Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Inserzione di ponte fisso' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNRNN23D61F396Q'
               AND P.date = '2016-12-05T19:52:49Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomoscintigrafia globale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLPLA28T50H268D'
               AND P.date = '2016-12-08T19:03:53Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Gengivoplastica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SRRSFN72D69H006B'
               AND P.date = '2016-12-13T16:04:19Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Digestione DNA con enzimi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGLO78M06F947R'
               AND P.date = '2017-01-01T16:42:17Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'SRRSFN72D69H006B') AS doctor, pr.date + interval '5 day' AS date, 'Result of Terapia canalare in monoradicolato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTLSN37C30D246Q'
               AND P.date = '2017-01-07T11:58:50Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tempo di protrombina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTCRL14A09H039X'
               AND P.date = '2017-01-19T12:47:36Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi DNA e ibridazione con sonda' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RGGGLO34H03F710I'
               AND P.date = '2017-01-21T09:54:37Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio G' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRSLV77H58L647L'
               AND P.date = '2017-02-03T08:32:28Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomoscintigrafia miocardica (PET)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2017-02-09T08:48:53Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) della colonna cervicale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NRESFN58E12H497M'
               AND P.date = '2017-02-11T17:08:08Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Intervento chirurgico preprotesico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRTPLA24E70F378C'
               AND P.date = '2017-02-25T07:26:22Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRCSRG82P27E329Q') AS doctor, pr.date + interval '5 day' AS date, 'Result of Ricostruzione dente mediante otturazione a tre o più superfici' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCVNT69L41A975G'
               AND P.date = '2017-03-06T17:32:20Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Colorazione aggiuntiva in bande: bandeggio G alta ris.' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2017-03-26T14:40:15Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RNAGNI70R23B712K') AS doctor, pr.date + interval '5 day' AS date, 'Result of Tomografia computerizzata dell''arto superiore (solo con patologia traumatica acuta)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2017-04-19T17:29:53Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'FLCVNT69L41A975G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Analisi di segmenti di DNA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCGNN18D23H128Q'
               AND P.date = '2017-05-13T08:08:12Z'
         )
INSERT
INTO hs_report(prescription, doctor, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RSSGTN68C19G736G') AS doctor, pr.date + interval '5 day' AS date, 'Result of Miceti lieviti' AS note
FROM pr;