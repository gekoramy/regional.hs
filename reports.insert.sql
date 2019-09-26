WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2012-08-28T13:22:41Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Aspartato aminotrasferiasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTMRT34C12F138G'
               AND P.date = '2012-09-08T14:44:43Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido 5 idrossi 3 indolacetico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2012-09-17T16:45:35Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 19.9' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2012-10-31T06:25:38Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Albumina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2012-11-12T17:11:24Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Aspartato aminotrasferiasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2012-11-15T10:38:53Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTGTN83R27G198U'
               AND P.date = '2012-11-28T14:51:10Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alanina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSMTN34M59I843O'
               AND P.date = '2012-11-29T08:47:33Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa amilasi isoenzimi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2012-12-10T18:43:26Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2012-12-28T07:52:18Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfato inorganico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MNCMRT73H26H891I'
               AND P.date = '2013-01-05T08:14:31Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alanina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTPLA59P02H753S'
               AND P.date = '2013-01-06T08:25:08Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Albumina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTRNT43L01A266I'
               AND P.date = '2013-01-10T10:49:09Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi citogenetica per fragilita cromosomica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLLCU67B17I686K'
               AND P.date = '2013-01-10T13:47:25Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Gruppo sanguigno ABO e RH (D)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMPLA83E10B452C'
               AND P.date = '2013-01-17T11:20:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Enolasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLFNC68S46E165S'
               AND P.date = '2013-02-14T08:29:22Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGVR16T48L909C'
               AND P.date = '2013-02-17T14:30:47Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo HDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCGRL06R29L335E'
               AND P.date = '2013-03-15T13:23:20Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Aspartato aminotrasferiasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTRNT43L01A266I'
               AND P.date = '2013-03-25T09:34:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cyfra' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTMRA23D52A200K'
               AND P.date = '2013-03-27T14:41:30Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Sodio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCCST73T47A520Y'
               AND P.date = '2013-03-30T17:48:59Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTCLD12B47A294O'
               AND P.date = '2013-03-31T17:17:10Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2013-04-07T11:38:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2013-04-11T13:13:54Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Anticorpi anti microsomi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLAGPP85L02F367M'
               AND P.date = '2013-04-29T08:17:38Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Magnesio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLFNC56R17B371I'
               AND P.date = '2013-04-29T09:38:32Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RGGSLV05M51L200O'
               AND P.date = '2013-05-05T16:06:01Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Gruppo sanguigno ABO e RH (D)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2013-05-14T11:43:32Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Mioglobina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2013-06-24T11:55:19Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigeni HLA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CRSGVR27R56H952P'
               AND P.date = '2013-06-25T11:09:29Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Trigliceridi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLGU06M25A855Z'
               AND P.date = '2013-07-27T11:57:36Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carcino embrionario' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RGGGLO34H03F710I'
               AND P.date = '2013-08-01T09:04:04Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alanina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BNTCST91E63B579Q'
               AND P.date = '2013-08-01T10:48:29Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Sodio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTLSE90C56I131U'
               AND P.date = '2013-08-02T13:52:55Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Gruppo sanguigno ABO e RH (D)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGDU73L22H459U'
               AND P.date = '2013-08-26T17:24:34Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 19.9' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2013-09-08T17:41:04Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Eparina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SRRSFN72D69H006B'
               AND P.date = '2013-09-13T06:45:44Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ala deidrasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRSLV77H58L647L'
               AND P.date = '2013-09-18T08:38:44Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Eparina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLAGPP85L02F367M'
               AND P.date = '2013-09-21T13:59:29Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Glicoproteina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTPLA59P02H753S'
               AND P.date = '2013-09-27T15:32:09Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa amilasi isoenzimi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSTTL18C05C817X'
               AND P.date = '2013-10-16T16:31:44Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Glicoproteina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NREGNN40L17A512F'
               AND P.date = '2013-10-25T08:03:14Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ala deidrasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLNDA02M56A877S'
               AND P.date = '2013-10-29T06:44:42Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cromo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLLCU67B17I686K'
               AND P.date = '2013-11-04T12:24:25Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Eparina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2013-11-08T17:30:54Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Lipasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSMTN34M59I843O'
               AND P.date = '2013-11-21T16:06:40Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Eparina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTMRT34C12F138G'
               AND P.date = '2013-11-25T18:01:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Lattato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2013-11-30T16:53:10Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSFRC72C58L769G'
               AND P.date = '2013-12-03T06:43:54Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Lattato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTLSE90C56I131U'
               AND P.date = '2013-12-07T11:04:52Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carcino embrionario' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2013-12-08T16:29:02Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi di polimorfismi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SPSTTL06M07G268F'
               AND P.date = '2013-12-12T15:57:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Calcio totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCVNT69L41A975G'
               AND P.date = '2013-12-24T11:24:23Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLN92R68D832T'
               AND P.date = '2013-12-27T10:57:15Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Deossicortisolo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNBRC95C58L845W'
               AND P.date = '2014-01-06T06:34:34Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Glicoproteina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRGLI86L16I092Q'
               AND P.date = '2014-01-07T14:10:13Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBMRA27A47B536Z'
               AND P.date = '2014-01-14T08:15:09Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Proteine' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRLRA55E59H244F'
               AND P.date = '2014-02-13T09:13:38Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina isoenzima osseo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLNDA02M56A877S'
               AND P.date = '2014-02-22T13:37:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNBRC95C58L845W'
               AND P.date = '2014-03-05T11:37:48Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi citogenetica per fragilita cromosomica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTGNN37S21D468L'
               AND P.date = '2014-04-01T16:18:33Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Lattato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCCST73T47A520Y'
               AND P.date = '2014-04-15T05:10:04Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Deossicortisolo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCGNN18D23H128Q'
               AND P.date = '2014-04-17T10:48:00Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Urato Urea' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2014-04-17T11:27:00Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigeni HLA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCCST73T47A520Y'
               AND P.date = '2014-04-29T14:44:37Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ige specifiche allergologiche screening qualitativo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLGLI05A29D886O'
               AND P.date = '2014-05-01T17:36:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLCU44L64L155Z'
               AND P.date = '2014-05-14T10:03:42Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Lattato' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGVR16T48L909C'
               AND P.date = '2014-05-18T05:48:19Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Sudore' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSCST83E44A509N'
               AND P.date = '2014-05-20T08:22:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa amilasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSMTN34M59I843O'
               AND P.date = '2014-05-30T08:21:06Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi di polimorfismi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTCLD12B47A294O'
               AND P.date = '2014-06-02T06:31:59Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Glicoproteina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NRESFN58E12H497M'
               AND P.date = '2014-06-24T10:45:37Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Inibitore attivatore del plasminogeno' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBFLC51C23C211M'
               AND P.date = '2014-07-06T12:27:47Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa amilasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBLGU70S30H097A'
               AND P.date = '2014-07-13T16:56:35Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BNTCST91E63B579Q'
               AND P.date = '2014-07-16T14:31:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Calcio totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRLRA55E59H244F'
               AND P.date = '2014-07-22T14:13:22Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Potassio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSGTN68C19G736G'
               AND P.date = '2014-07-27T11:52:14Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfato inorganico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTGLI66L28C794T'
               AND P.date = '2014-07-28T14:59:01Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Deossicortisolo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNRNN23D61F396Q'
               AND P.date = '2014-08-07T08:34:41Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Virus epatite B (HBV) Antigeni Hbeag' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NREGNN40L17A512F'
               AND P.date = '2014-08-21T17:20:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRTPLA24E70F378C'
               AND P.date = '2014-08-22T07:06:13Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 15.3' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SPSTTL06M07G268F'
               AND P.date = '2014-09-06T08:02:02Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo HDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBGNN74E19F750F'
               AND P.date = '2014-09-12T09:31:49Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NREGNN40L17A512F'
               AND P.date = '2014-09-18T08:01:24Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fenotipo RH' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RGGSLV05M51L200O'
               AND P.date = '2014-09-25T15:39:48Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Potassio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRTPLA55M42L656O'
               AND P.date = '2014-10-01T05:58:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Calcio totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BNTCST91E63B579Q'
               AND P.date = '2014-10-04T09:46:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ala deidrasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLI71H29M072L'
               AND P.date = '2014-10-07T09:09:21Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Magnesio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2014-10-07T11:26:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cromo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBGNN74E19F750F'
               AND P.date = '2014-10-08T13:24:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Albumina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CNTSMN06C28L211B'
               AND P.date = '2014-10-20T16:34:32Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Glicoproteina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBLGU70S30H097A'
               AND P.date = '2014-10-21T07:16:16Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinchinasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBFLC51C23C211M'
               AND P.date = '2014-10-29T12:55:38Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2014-11-16T16:31:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fenotipo RH' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2014-11-22T16:22:54Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGVR16T48L909C'
               AND P.date = '2014-12-04T18:11:02Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi acida' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLGU06M25A855Z'
               AND P.date = '2014-12-12T11:12:44Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con reverse dot blot' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCVNT69L41A975G'
               AND P.date = '2014-12-15T13:59:31Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alanina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NRESFN58E12H497M'
               AND P.date = '2014-12-17T12:39:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Urato Urea' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSDVD14T19A330H'
               AND P.date = '2014-12-17T16:03:50Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina isoenzima osseo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NREGNN40L17A512F'
               AND P.date = '2014-12-24T09:05:27Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo HDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRTPLA55M42L656O'
               AND P.date = '2015-01-09T12:28:23Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Gruppo sanguigno ABO e RH (D)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTMRA23D52A200K'
               AND P.date = '2015-01-12T12:06:12Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 125' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGVR16T48L909C'
               AND P.date = '2015-01-19T13:08:41Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido 5 idrossi 3 indolacetico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLNDA02M56A877S'
               AND P.date = '2015-01-20T16:14:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Densitometria ossera' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGNN53D06L643S'
               AND P.date = '2015-01-30T15:07:50Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Eparina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLGU06M25A855Z'
               AND P.date = '2015-01-30T16:31:03Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Magnesio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2015-02-02T16:03:36Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Potassio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSFRC72C58L769G'
               AND P.date = '2015-02-11T08:40:55Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMPLA83E10B452C'
               AND P.date = '2015-03-01T07:27:01Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 125' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLNDR56P30G426Q'
               AND P.date = '2015-04-18T09:18:51Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carcino embrionario' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2015-05-01T10:48:19Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Beta tromboglobulina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GLLSFN47C31I056X'
               AND P.date = '2015-05-07T11:35:14Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Trigliceridi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MNCGNS59H44I032T'
               AND P.date = '2015-05-09T06:26:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Magnesio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2015-05-09T11:42:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTCLD12B47A294O'
               AND P.date = '2015-05-24T13:17:14Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTMRA23D52A200K'
               AND P.date = '2015-05-25T12:30:43Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cyfra' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRSLV77H58L647L'
               AND P.date = '2015-05-26T05:50:16Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Sodio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTMRA23D52A200K'
               AND P.date = '2015-06-24T16:21:08Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SPSTTL06M07G268F'
               AND P.date = '2015-06-30T05:56:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Potassio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLAGPP85L02F367M'
               AND P.date = '2015-07-01T15:15:09Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina isoenzima osseo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NRESFN58E12H497M'
               AND P.date = '2015-07-08T15:06:29Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Albumina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSDVD14T19A330H'
               AND P.date = '2015-07-10T15:49:39Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido delta' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLGLI05A29D886O'
               AND P.date = '2015-07-29T14:21:53Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cyfra' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FRRLRA55E59H244F'
               AND P.date = '2015-08-01T15:12:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi di polimorfismi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBFLC51C23C211M'
               AND P.date = '2015-08-11T16:23:22Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con reverse dot blot' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLFNC68S46E165S'
               AND P.date = '2015-08-15T07:12:59Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Anticorpi anti microsomi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTLSN37C30D246Q'
               AND P.date = '2015-08-17T09:48:48Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Virus epatite B (HBV) Antigeni Hbeag' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSCST83E44A509N'
               AND P.date = '2015-09-05T14:27:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Glicoproteina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTRNT43L01A266I'
               AND P.date = '2015-09-16T07:50:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo HDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLFNC68S46E165S'
               AND P.date = '2015-09-21T10:25:20Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cyfra' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTGNN37S21D468L'
               AND P.date = '2015-09-24T10:47:02Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido 5 idrossi 3 indolacetico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTGTN83R27G198U'
               AND P.date = '2015-09-24T14:02:39Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa amilasi isoenzimi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GLLSFN47C31I056X'
               AND P.date = '2015-09-25T10:33:43Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde non radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRGLI86L16I092Q'
               AND P.date = '2015-09-26T12:37:51Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Gruppo sanguigno ABO e RH (D)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2015-09-28T14:58:43Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ala deidrasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLNDA02M56A877S'
               AND P.date = '2015-10-02T12:01:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ala deidrasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNAGNI70R23B712K'
               AND P.date = '2015-10-13T07:32:32Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Calcio totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2015-10-24T12:25:17Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Virus epatite B (HBV) Antigeni Hbeag' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRTPLA24E70F378C'
               AND P.date = '2015-10-27T07:35:30Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Virus epatite B (HBV) Antigeni Hbeag' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTLSN37C30D246Q'
               AND P.date = '2015-11-06T11:35:04Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MNCMRT73H26H891I'
               AND P.date = '2015-11-06T11:55:19Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinchinasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLFNC56R17B371I'
               AND P.date = '2015-11-15T15:27:55Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ige specifiche allergologiche screening qualitativo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTLSE90C56I131U'
               AND P.date = '2015-11-16T08:12:32Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Lipasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTGTN83R27G198U'
               AND P.date = '2015-11-22T12:45:40Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi acida' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSTTL18C05C817X'
               AND P.date = '2015-12-06T11:51:03Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGLO78M06F947R'
               AND P.date = '2015-12-22T13:35:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Aspartato aminotrasferiasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGNN53D06L643S'
               AND P.date = '2016-01-10T07:11:21Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica senza e con contrasto' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTGLI66L28C794T'
               AND P.date = '2016-01-12T07:18:53Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2016-01-21T16:01:55Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Albumina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLPLA28T50H268D'
               AND P.date = '2016-01-30T11:00:16Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Gruppo sanguigno ABO e RH (D)' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLPLA28T50H268D'
               AND P.date = '2016-02-04T16:14:08Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi acida' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTLSE90C56I131U'
               AND P.date = '2016-02-13T11:47:54Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi di polimorfismi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CRSGVR27R56H952P'
               AND P.date = '2016-02-26T09:15:50Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigeni HLA' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMPLA83E10B452C'
               AND P.date = '2016-02-27T11:22:52Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Potassio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2016-03-02T07:42:29Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Mioglobina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBGNN74E19F750F'
               AND P.date = '2016-03-06T16:08:34Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ige specifiche allergologiche screening qualitativo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRNDA32B68B980P'
               AND P.date = '2016-03-11T17:01:55Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fenotipo RH' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRNDA32B68B980P'
               AND P.date = '2016-03-13T18:44:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2016-03-23T07:42:02Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Androstenediolo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MNCGNS59H44I032T'
               AND P.date = '2016-03-31T16:11:17Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSTTL18C05C817X'
               AND P.date = '2016-04-09T12:00:09Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 125' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLGLI05A29D886O'
               AND P.date = '2016-04-13T10:38:59Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinchinasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLNDR56P30G426Q'
               AND P.date = '2016-04-13T14:23:30Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSGTN68C19G736G'
               AND P.date = '2016-04-18T05:04:44Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Cyfra' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGDU73L22H459U'
               AND P.date = '2016-04-25T13:14:20Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ige specifiche allergologiche' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLNDR56P30G426Q'
               AND P.date = '2016-04-30T15:37:56Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNAGNI70R23B712K'
               AND P.date = '2016-05-12T05:20:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido delta' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SRRSFN72D69H006B'
               AND P.date = '2016-05-18T13:22:19Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRTPLA24E70F378C'
               AND P.date = '2016-05-25T05:15:15Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa amilasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2016-05-31T09:44:24Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Androstenediolo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2016-06-15T15:30:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Beta tromboglobulina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2016-06-17T17:29:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfato inorganico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNBRC95C58L845W'
               AND P.date = '2016-06-21T16:38:19Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 15.3' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTCRL14A09H039X'
               AND P.date = '2016-07-18T07:36:40Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Calcio totale' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLCU44L64L155Z'
               AND P.date = '2016-07-18T17:29:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Trigliceridi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SRRSFN72D69H006B'
               AND P.date = '2016-08-03T07:39:33Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Beta tromboglobulina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2016-08-10T11:05:44Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2016-08-26T11:39:37Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Enolasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNGMRC42C15L385W'
               AND P.date = '2016-08-27T16:37:01Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Deossicortisolo' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLVNT35P64L083M'
               AND P.date = '2016-08-28T07:37:06Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 15.3' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSMTN34M59I843O'
               AND P.date = '2016-08-29T07:37:59Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido 5 idrossi 3 indolacetico' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLVNT35P64L083M'
               AND P.date = '2016-08-30T16:22:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Beta tromboglobulina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLI71H29M072L'
               AND P.date = '2016-08-31T12:22:39Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carboidratico 125' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SPSTTL06M07G268F'
               AND P.date = '2016-09-16T12:03:38Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Aspartato aminotrasferiasi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCVNT69L41A975G'
               AND P.date = '2016-09-20T05:46:30Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSGTN68C19G736G'
               AND P.date = '2016-10-05T10:39:29Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con reverse dot blot' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CNTSMN06C28L211B'
               AND P.date = '2016-10-22T08:14:08Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi di polimorfismi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLGDU73L22H459U'
               AND P.date = '2016-11-05T15:31:42Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Alfa 2' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CSTPLA59P02H753S'
               AND P.date = '2016-11-17T13:02:53Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Fosfatasi alcalina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLFNC56R17B371I'
               AND P.date = '2016-11-22T17:32:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido delta' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2016-12-03T15:21:30Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con reverse dot blot' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'FLCGNN18D23H128Q'
               AND P.date = '2016-12-09T12:30:31Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Anticorpi anti microsomi' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GTTGLI66L28C794T'
               AND P.date = '2016-12-12T12:32:09Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Acido delta' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBMRA27A47B536Z'
               AND P.date = '2016-12-20T13:05:59Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Magnesio' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2017-01-13T18:43:54Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Densitometria ossera' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PLLLCU67B17I686K'
               AND P.date = '2017-01-17T12:57:10Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Antigene carcino embrionario' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'CNTSMN06C28L211B'
               AND P.date = '2017-01-27T09:06:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2017-02-16T13:05:51Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'LMBGNN74E19F750F') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2017-03-29T05:38:40Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Deossicortisolo' AS note
FROM pr;