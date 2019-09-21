WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2012-08-28T15:22:41Z'
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
               AND P.date = '2012-09-08T16:44:43Z'
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
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2012-09-17T18:45:35Z'
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
               AND P.date = '2012-10-31T07:25:38Z'
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
               AND P.date = '2012-11-12T18:11:24Z'
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
             WHERE PE.fc = 'BLTVNT15B45G656S'
               AND P.date = '2012-11-15T11:38:53Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'DNTGTN83R27G198U'
               AND P.date = '2012-11-28T15:51:10Z'
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
               AND P.date = '2012-11-29T09:47:33Z'
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
               AND P.date = '2012-12-10T19:43:26Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2012-12-28T08:52:18Z'
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
               AND P.date = '2013-01-05T09:14:31Z'
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
               AND P.date = '2013-01-06T09:25:08Z'
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
             WHERE PE.fc = 'FNTRNT43L01A266I'
               AND P.date = '2013-01-10T11:49:09Z'
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
               AND P.date = '2013-01-10T14:47:25Z'
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
               AND P.date = '2013-01-17T12:20:45Z'
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
               AND P.date = '2013-02-14T09:29:22Z'
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
               AND P.date = '2013-02-17T15:30:47Z'
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
               AND P.date = '2013-03-15T14:23:20Z'
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
             WHERE PE.fc = 'FNTRNT43L01A266I'
               AND P.date = '2013-03-25T10:34:45Z'
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
               AND P.date = '2013-03-27T15:41:30Z'
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
               AND P.date = '2013-03-30T18:48:59Z'
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
               AND P.date = '2013-03-31T19:17:10Z'
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
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2013-04-07T13:38:58Z'
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
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2013-04-11T15:13:54Z'
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
             WHERE PE.fc = 'SLAGPP85L02F367M'
               AND P.date = '2013-04-29T10:17:38Z'
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
               AND P.date = '2013-04-29T11:38:32Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RGGSLV05M51L200O'
               AND P.date = '2013-05-05T18:06:01Z'
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
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2013-05-14T13:43:32Z'
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
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2013-06-24T13:55:19Z'
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
               AND P.date = '2013-06-25T13:09:29Z'
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
               AND P.date = '2013-07-27T13:57:36Z'
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
             WHERE PE.fc = 'RGGGLO34H03F710I'
               AND P.date = '2013-08-01T11:04:04Z'
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
               AND P.date = '2013-08-01T12:48:29Z'
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
               AND P.date = '2013-08-02T15:52:55Z'
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
             WHERE PE.fc = 'PLLGDU73L22H459U'
               AND P.date = '2013-08-26T19:24:34Z'
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
               AND P.date = '2013-09-08T19:41:04Z'
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
               AND P.date = '2013-09-13T08:45:44Z'
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
             WHERE PE.fc = 'FRRSLV77H58L647L'
               AND P.date = '2013-09-18T10:38:44Z'
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
             WHERE PE.fc = 'SLAGPP85L02F367M'
               AND P.date = '2013-09-21T15:59:29Z'
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
               AND P.date = '2013-09-27T17:32:09Z'
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
               AND P.date = '2013-10-16T18:31:44Z'
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
               AND P.date = '2013-10-25T10:03:14Z'
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
             WHERE PE.fc = 'PLLNDA02M56A877S'
               AND P.date = '2013-10-29T07:44:42Z'
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
             WHERE PE.fc = 'PLLLCU67B17I686K'
               AND P.date = '2013-11-04T13:24:25Z'
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
               AND P.date = '2013-11-08T18:30:54Z'
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
               AND P.date = '2013-11-21T17:06:40Z'
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
             WHERE PE.fc = 'GTTMRT34C12F138G'
               AND P.date = '2013-11-25T19:01:11Z'
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
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2013-11-30T17:53:10Z'
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
               AND P.date = '2013-12-03T07:43:54Z'
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
               AND P.date = '2013-12-07T12:04:52Z'
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
               AND P.date = '2013-12-08T17:29:02Z'
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
               AND P.date = '2013-12-12T16:57:11Z'
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
               AND P.date = '2013-12-24T12:24:23Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRRGLN92R68D832T'
               AND P.date = '2013-12-27T11:57:15Z'
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
               AND P.date = '2014-01-06T07:34:34Z'
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
               AND P.date = '2014-01-07T15:10:13Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Creatinina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BRBMRA27A47B536Z'
               AND P.date = '2014-01-14T09:15:09Z'
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
               AND P.date = '2014-02-13T10:13:38Z'
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
               AND P.date = '2014-02-22T14:37:45Z'
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
               AND P.date = '2014-03-05T12:37:48Z'
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
               AND P.date = '2014-04-01T18:18:33Z'
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
               AND P.date = '2014-04-15T07:10:04Z'
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
               AND P.date = '2014-04-17T12:48:00Z'
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
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2014-04-17T13:27:00Z'
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
               AND P.date = '2014-04-29T16:44:37Z'
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
               AND P.date = '2014-05-01T19:36:11Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'PRSLCU44L64L155Z'
               AND P.date = '2014-05-14T12:03:42Z'
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
             WHERE PE.fc = 'MRNGVR16T48L909C'
               AND P.date = '2014-05-18T07:48:19Z'
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
               AND P.date = '2014-05-20T10:22:11Z'
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
             WHERE PE.fc = 'RSSMTN34M59I843O'
               AND P.date = '2014-05-30T10:21:06Z'
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
               AND P.date = '2014-06-02T08:31:59Z'
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
               AND P.date = '2014-06-24T12:45:37Z'
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
               AND P.date = '2014-07-06T14:27:47Z'
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
               AND P.date = '2014-07-13T18:56:35Z'
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
               AND P.date = '2014-07-16T16:31:28Z'
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
               AND P.date = '2014-07-22T16:13:22Z'
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
               AND P.date = '2014-07-27T13:52:14Z'
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
               AND P.date = '2014-07-28T16:59:01Z'
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
               AND P.date = '2014-08-07T10:34:41Z'
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
               AND P.date = '2014-08-21T19:20:11Z'
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
               AND P.date = '2014-08-22T09:06:13Z'
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
               AND P.date = '2014-09-06T10:02:02Z'
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
               AND P.date = '2014-09-12T11:31:49Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NREGNN40L17A512F'
               AND P.date = '2014-09-18T10:01:24Z'
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
               AND P.date = '2014-09-25T17:39:48Z'
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
             WHERE PE.fc = 'PRTPLA55M42L656O'
               AND P.date = '2014-10-01T07:58:28Z'
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
               AND P.date = '2014-10-04T11:46:11Z'
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
             WHERE PE.fc = 'GRRGLI71H29M072L'
               AND P.date = '2014-10-07T11:09:21Z'
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
               AND P.date = '2014-10-07T13:26:45Z'
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
             WHERE PE.fc = 'LMBGNN74E19F750F'
               AND P.date = '2014-10-08T15:24:57Z'
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
             WHERE PE.fc = 'CNTSMN06C28L211B'
               AND P.date = '2014-10-20T18:34:32Z'
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
               AND P.date = '2014-10-21T09:16:16Z'
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
             WHERE PE.fc = 'BRBFLC51C23C211M'
               AND P.date = '2014-10-29T13:55:38Z'
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
               AND P.date = '2014-11-16T17:31:58Z'
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
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2014-11-22T17:22:54Z'
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
               AND P.date = '2014-12-04T19:11:02Z'
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
               AND P.date = '2014-12-12T12:12:44Z'
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
             WHERE PE.fc = 'FLCVNT69L41A975G'
               AND P.date = '2014-12-15T14:59:31Z'
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
               AND P.date = '2014-12-17T13:39:28Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Urato Urea' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'GRSDVD14T19A330H'
               AND P.date = '2014-12-17T17:03:50Z'
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
               AND P.date = '2014-12-24T10:05:27Z'
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
               AND P.date = '2015-01-09T13:28:23Z'
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
               AND P.date = '2015-01-12T13:06:12Z'
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
               AND P.date = '2015-01-19T14:08:41Z'
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
               AND P.date = '2015-01-20T17:14:58Z'
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
               AND P.date = '2015-01-30T16:07:50Z'
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
             WHERE PE.fc = 'PRSLGU06M25A855Z'
               AND P.date = '2015-01-30T17:31:03Z'
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
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2015-02-02T17:03:36Z'
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
             WHERE PE.fc = 'GRSFRC72C58L769G'
               AND P.date = '2015-02-11T09:40:55Z'
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
               AND P.date = '2015-03-01T08:27:01Z'
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
             WHERE PE.fc = 'RNLNDR56P30G426Q'
               AND P.date = '2015-04-18T11:18:51Z'
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
             WHERE PE.fc = 'RLNGNI43R23F426D'
               AND P.date = '2015-05-01T12:48:19Z'
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
               AND P.date = '2015-05-07T13:35:14Z'
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
               AND P.date = '2015-05-09T08:26:11Z'
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
               AND P.date = '2015-05-09T13:42:28Z'
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
               AND P.date = '2015-05-24T15:17:14Z'
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
               AND P.date = '2015-05-25T14:30:43Z'
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
               AND P.date = '2015-05-26T07:50:16Z'
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
               AND P.date = '2015-06-24T18:21:08Z'
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
               AND P.date = '2015-06-30T07:56:57Z'
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
               AND P.date = '2015-07-01T17:15:09Z'
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
               AND P.date = '2015-07-08T17:06:29Z'
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
             WHERE PE.fc = 'GRSDVD14T19A330H'
               AND P.date = '2015-07-10T17:49:39Z'
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
               AND P.date = '2015-07-29T16:21:53Z'
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
               AND P.date = '2015-08-01T17:12:57Z'
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
               AND P.date = '2015-08-11T18:23:22Z'
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
               AND P.date = '2015-08-15T09:12:59Z'
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
             WHERE PE.fc = 'DNTLSN37C30D246Q'
               AND P.date = '2015-08-17T11:48:48Z'
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
               AND P.date = '2015-09-05T16:27:45Z'
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
               AND P.date = '2015-09-16T09:50:28Z'
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
               AND P.date = '2015-09-21T12:25:20Z'
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
               AND P.date = '2015-09-24T12:47:02Z'
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
               AND P.date = '2015-09-24T16:02:39Z'
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
               AND P.date = '2015-09-25T12:33:43Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde non radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'NGRGLI86L16I092Q'
               AND P.date = '2015-09-26T14:37:51Z'
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
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2015-09-28T16:58:43Z'
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
               AND P.date = '2015-10-02T14:01:58Z'
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
               AND P.date = '2015-10-13T09:32:32Z'
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
               AND P.date = '2015-10-24T14:25:17Z'
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
               AND P.date = '2015-10-27T08:35:30Z'
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
               AND P.date = '2015-11-06T12:35:04Z'
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
             WHERE PE.fc = 'MNCMRT73H26H891I'
               AND P.date = '2015-11-06T12:55:19Z'
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
             WHERE PE.fc = 'RNLFNC56R17B371I'
               AND P.date = '2015-11-15T16:27:55Z'
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
               AND P.date = '2015-11-16T09:12:32Z'
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
               AND P.date = '2015-11-22T13:45:40Z'
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
               AND P.date = '2015-12-06T12:51:03Z'
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
             WHERE PE.fc = 'PLLGLO78M06F947R'
               AND P.date = '2015-12-22T14:35:58Z'
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
               AND P.date = '2016-01-10T08:11:21Z'
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
               AND P.date = '2016-01-12T08:18:53Z'
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
               AND P.date = '2016-01-21T17:01:55Z'
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
               AND P.date = '2016-01-30T12:00:16Z'
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
             WHERE PE.fc = 'PLLPLA28T50H268D'
               AND P.date = '2016-02-04T17:14:08Z'
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
               AND P.date = '2016-02-13T12:47:54Z'
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
               AND P.date = '2016-02-26T10:15:50Z'
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
               AND P.date = '2016-02-27T12:22:52Z'
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
             WHERE PE.fc = 'FNTGLN15P70G227F'
               AND P.date = '2016-03-02T08:42:29Z'
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
             WHERE PE.fc = 'LMBGNN74E19F750F'
               AND P.date = '2016-03-06T17:08:34Z'
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
               AND P.date = '2016-03-11T18:01:55Z'
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
               AND P.date = '2016-03-13T19:44:57Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Risonanza magnetica nucleare (RM) muscoloscheletrica' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2016-03-23T08:42:02Z'
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
               AND P.date = '2016-03-31T18:11:17Z'
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
               AND P.date = '2016-04-09T14:00:09Z'
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
             WHERE PE.fc = 'RNLGLI05A29D886O'
               AND P.date = '2016-04-13T12:38:59Z'
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
             WHERE PE.fc = 'RNLNDR56P30G426Q'
               AND P.date = '2016-04-13T16:23:30Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'MNCMRT73H26H891I') AS specialist, pr.date + interval '5 day' AS date, 'Result of Analisi mutazione del DNA con ibridazione sonde radiomarcate' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RSSGTN68C19G736G'
               AND P.date = '2016-04-18T07:04:44Z'
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
               AND P.date = '2016-04-25T15:14:20Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Ige specifiche allergologiche' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'RNLNDR56P30G426Q'
               AND P.date = '2016-04-30T17:37:56Z'
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
             WHERE PE.fc = 'RNAGNI70R23B712K'
               AND P.date = '2016-05-12T07:20:11Z'
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
               AND P.date = '2016-05-18T15:22:19Z'
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
               AND P.date = '2016-05-25T07:15:15Z'
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
             WHERE PE.fc = 'CLMGRL92A22C217L'
               AND P.date = '2016-05-31T11:44:24Z'
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
             WHERE PE.fc = 'DMCFNC97S08B266H'
               AND P.date = '2016-06-15T17:30:45Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'RLNMCL73H10E554H') AS specialist, pr.date + interval '5 day' AS date, 'Result of Beta tromboglobulina' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'MRNGNN77E10I805N'
               AND P.date = '2016-06-17T19:29:57Z'
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
               AND P.date = '2016-06-21T18:38:19Z'
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
               AND P.date = '2016-07-18T09:36:40Z'
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
               AND P.date = '2016-07-18T19:29:57Z'
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
               AND P.date = '2016-08-03T09:39:33Z'
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
               AND P.date = '2016-08-10T13:05:44Z'
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
             WHERE PE.fc = 'LMBMRA27T66D188J'
               AND P.date = '2016-08-26T13:39:37Z'
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
               AND P.date = '2016-08-27T18:37:01Z'
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
               AND P.date = '2016-08-28T09:37:06Z'
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
               AND P.date = '2016-08-29T09:37:59Z'
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
             WHERE PE.fc = 'RNLVNT35P64L083M'
               AND P.date = '2016-08-30T18:22:28Z'
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
               AND P.date = '2016-08-31T14:22:39Z'
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
             WHERE PE.fc = 'SPSTTL06M07G268F'
               AND P.date = '2016-09-16T14:03:38Z'
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
               AND P.date = '2016-09-20T07:46:30Z'
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
             WHERE PE.fc = 'RSSGTN68C19G736G'
               AND P.date = '2016-10-05T12:39:29Z'
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
               AND P.date = '2016-10-22T10:14:08Z'
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
               AND P.date = '2016-11-05T16:31:42Z'
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
             WHERE PE.fc = 'CSTPLA59P02H753S'
               AND P.date = '2016-11-17T14:02:53Z'
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
               AND P.date = '2016-11-22T18:32:28Z'
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
               AND P.date = '2016-12-03T16:21:30Z'
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
               AND P.date = '2016-12-09T13:30:31Z'
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
               AND P.date = '2016-12-12T13:32:09Z'
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
               AND P.date = '2016-12-20T14:05:59Z'
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
             WHERE PE.fc = 'GRCCRL00H03G455M'
               AND P.date = '2017-01-13T19:43:54Z'
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
               AND P.date = '2017-01-17T13:57:10Z'
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
               AND P.date = '2017-01-27T10:06:58Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'SLALSS57L67I377V'
               AND P.date = '2017-02-16T14:05:51Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'DMCCST73T47A520Y') AS specialist, pr.date + interval '5 day' AS date, 'Result of Colesterolo LDL' AS note
FROM pr;

WITH pr AS
         (
             SELECT P.id, P.date
             FROM follows F
                      INNER JOIN person PE on F.patient = PE.id
                      INNER JOIN prescription P on F.id = P.concerns
             WHERE PE.fc = 'BZZFNC49D15G340C'
               AND P.date = '2017-03-29T07:38:40Z'
         )
INSERT
INTO report(prescription, specialist, date, note)
SELECT pr.id AS prescription, (SELECT id FROM person WHERE fc = 'GRRGLI71H29M072L') AS specialist, pr.date + interval '5 day' AS date, 'Result of Deossicortisolo' AS note
FROM pr;