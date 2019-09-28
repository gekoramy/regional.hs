INSERT INTO person(email, password, name, surname, gender, birthday, birthplace, fc, residence)
VALUES
    ( 'giovanni.serra@dominio.com'
    , '$2a$10$AuB6x6bzkAgv/DkSvncXN.Jw55055WnvbWPMIe5DeYmBNQpiEgCvW'
    , 'Giovanni'
    , 'Serra'
    , true
    , '19090321'
    , (SELECT C.id FROM city C WHERE C.name = 'Ledro')
    , 'SRRGNN09C21M313Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Ala')
    ),
    ( 'gabriele.colombo@dominio.com'
    , '$2a$10$RiZ/HqyuCy0480k3mv/ZoO.iQ.r5osKOMFHk0ntKssvv4n8QxEXU2'
    , 'Gabriele'
    , 'Colombo'
    , true
    , '19920122'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelnovo del Friuli')
    , 'CLMGRL92A22C217L'
    , (SELECT C.id FROM city C WHERE C.name = 'Taio')
    ),
    ( 'agnese.rossi@dominio.com'
    , '$2a$10$DTiJkPCEdjH8G4/OxRD6fuGn6x9n5FzEe7Vyo5YXmHY8VTOzQZ9CO'
    , 'Agnese'
    , 'Rossi'
    , false
    , '20000822'
    , (SELECT C.id FROM city C WHERE C.name = 'Ceraso')
    , 'RSSGNS00M62C485O'
    , (SELECT C.id FROM city C WHERE C.name = 'Valfloriana')
    ),
    ( 'davide.negri@dominio.com'
    , '$2a$10$NfORCM.Fbd0eKqbF6pUomObSJGWznsxz6rrMGpydUaIQPYKKiLTAC'
    , 'Davide'
    , 'Negri'
    , true
    , '19340909'
    , (SELECT C.id FROM city C WHERE C.name = 'Piana di Monte Verna')
    , 'NGRDVD34P09G541E'
    , (SELECT C.id FROM city C WHERE C.name = 'Naturno')
    ),
    ( 'sergio.ruggiero@dominio.com'
    , '$2a$10$YADWHTpNX8gUc2CZJM82r.nMeeqaRMV6WHEnxSLYMU/wKk0Zz17cK'
    , 'Sergio'
    , 'Ruggiero'
    , true
    , '19730606'
    , (SELECT C.id FROM city C WHERE C.name = 'Imer')
    , 'RGGSRG73H06E288T'
    , (SELECT C.id FROM city C WHERE C.name = 'Cermes')
    ),
    ( 'golia.ruggiero@dominio.com'
    , '$2a$10$vWLN3xdTgpb2TQc3mHX.buZ2PCb60iP1V3Hx.jj.UYcgqjuhTt2ja'
    , 'Golia'
    , 'Ruggiero'
    , true
    , '19340603'
    , (SELECT C.id FROM city C WHERE C.name = 'Moraro')
    , 'RGGGLO34H03F710I'
    , (SELECT C.id FROM city C WHERE C.name = 'Villabassa')
    ),
    ( 'agata.ferrari@dominio.com'
    , '$2a$10$XZVt6mRxLc9EyYAZnQHSB.AB2Z60KdsvQmR3yK8/HTPC8tHXv9O8a'
    , 'Agata'
    , 'Ferrari'
    , false
    , '19460414'
    , (SELECT C.id FROM city C WHERE C.name = 'Buja')
    , 'FRRGTA46D54B259W'
    , (SELECT C.id FROM city C WHERE C.name = 'Verano')
    ),
    ( 'alfonso.parisi@dominio.com'
    , '$2a$10$UzClhLdUXAaayahPMwRP0eDU2627HaD07610oED8NWoHrIKr3nBpi'
    , 'Alfonso'
    , 'Parisi'
    , true
    , '19760704'
    , (SELECT C.id FROM city C WHERE C.name = 'Croviana')
    , 'PRSLNS76L04D188R'
    , (SELECT C.id FROM city C WHERE C.name = 'Carisolo')
    ),
    ( 'agostino.rinaldi@dominio.com'
    , '$2a$10$XwqhHfgtNdUgVPwARiZxFe5tfQmBH2.vzfXa55.K.CxxqEUkr82G2'
    , 'Agostino'
    , 'Rinaldi'
    , true
    , '19610409'
    , (SELECT C.id FROM city C WHERE C.name = 'Lillianes')
    , 'RNLGTN61D09E587O'
    , (SELECT C.id FROM city C WHERE C.name = 'Molveno')
    ),
    ( 'alfonso.romano@dominio.com'
    , '$2a$10$FhLAtnNjw5d18LYRtckFKu8wmXqMUp1aMVl0g99rWB0NkEp7xzDVy'
    , 'Alfonso'
    , 'Romano'
    , true
    , '19270407'
    , (SELECT C.id FROM city C WHERE C.name = 'Mortegliano')
    , 'RMNLNS27D07F756L'
    , (SELECT C.id FROM city C WHERE C.name = 'Pellizzano')
    ),
    ( 'giona.pellegrini@dominio.com'
    , '$2a$10$gZM7fAUg3ultyQehaY7fUeDZ7nTX8s0XlFHCYJbWlwi5/7pMxZVxK'
    , 'Giona'
    , 'Pellegrini'
    , true
    , '19821012'
    , (SELECT C.id FROM city C WHERE C.name = 'Celle di Bulgheria')
    , 'PLLGNI82R12C444H'
    , (SELECT C.id FROM city C WHERE C.name = 'Monguelfo-Tesido')
    ),
    ( 'umberto.gatti@dominio.com'
    , '$2a$10$LL42muX1Ckf6QjluNRf49OTuArv2sJdFiSb8u1pO/qtekfBKxtqKG'
    , 'Umberto'
    , 'Gatti'
    , true
    , '19340312'
    , (SELECT C.id FROM city C WHERE C.name = 'Mercato San Severino')
    , 'GTTMRT34C12F138G'
    , (SELECT C.id FROM city C WHERE C.name = 'Rodengo')
    ),
    ( 'piero.de.luca@dominio.com'
    , '$2a$10$Zb.3MYUXUiSoN4eAFGaOdO1XEwsiYKucdvm1vPF2YlI/.5HvyEjwO'
    , 'Piero'
    , 'De Luca'
    , true
    , '19640919'
    , (SELECT C.id FROM city C WHERE C.name = 'Baronissi')
    , 'DLCPRI64P19A674Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Daone')
    ),
    ( 'giorgio.pretti@dominio.com'
    , '$2a$10$uPJ6dp.yvkzBKJzUIAKlO.28zTmNQ37jG9RKLbLUhilQwCUw1m6zi'
    , 'Giorgio'
    , 'Pretti'
    , true
    , '19120418'
    , (SELECT C.id FROM city C WHERE C.name = 'Marano di Napoli')
    , 'PRTGRG12D18E906T'
    , (SELECT C.id FROM city C WHERE C.name = 'Vermiglio')
    ),
    ( 'arianna.guerra@dominio.com'
    , '$2a$10$gBvdjq.9.UDcBFMZv.vDpegdaynD151N0AoQ1xBuGHqITXMYWqTKe'
    , 'Arianna'
    , 'Guerra'
    , false
    , '19700702'
    , (SELECT C.id FROM city C WHERE C.name = 'Nanno')
    , 'GRRRNN70L42F837I'
    , (SELECT C.id FROM city C WHERE C.name = 'Fiave')
    ),
    ( 'patrizia.moretti@dominio.com'
    , '$2a$10$7OwNjYAHs95MQ.Ryvt72jemZ0/Feo73aEc6OIKZfvFUOYBcPyWhMq'
    , 'Patrizia'
    , 'Moretti'
    , false
    , '19321116'
    , (SELECT C.id FROM city C WHERE C.name = 'San Potito Ultra')
    , 'MRTPRZ32S56I129N'
    , (SELECT C.id FROM city C WHERE C.name = 'Marebbe')
    ),
    ( 'daniela.donati@dominio.com'
    , '$2a$10$t4Tz0zj5xL/uXPz/e1ae2OCW/BX52frBQOpcNNfu3Auih6V31Gpn6'
    , 'Daniela'
    , 'Donati'
    , false
    , '19780307'
    , (SELECT C.id FROM city C WHERE C.name = 'Candida')
    , 'DNTDNL78C47B590N'
    , (SELECT C.id FROM city C WHERE C.name = 'Braies')
    ),
    ( 'franco.parisi@dominio.com'
    , '$2a$10$1QZU1EuPkQDxln6nJpLOVuFIYXkKYVjToyWz/uVvtx1KQooOU0uja'
    , 'Franco'
    , 'Parisi'
    , true
    , '19331014'
    , (SELECT C.id FROM city C WHERE C.name = 'Cardito')
    , 'PRSFNC33R14B759B'
    , (SELECT C.id FROM city C WHERE C.name = 'Imer')
    ),
    ( 'claudia.costa@dominio.com'
    , '$2a$10$tNaSt7RoRWytfN/6Rhs1feYC0dvDcpbVr5xXxag9Cwafh42FrZnTa'
    , 'Claudia'
    , 'Costa'
    , false
    , '19120207'
    , (SELECT C.id FROM city C WHERE C.name = 'Angri')
    , 'CSTCLD12B47A294O'
    , (SELECT C.id FROM city C WHERE C.name = 'Vallarsa')
    ),
    ( 'sara.negri@dominio.com'
    , '$2a$10$sCbc2WXsLg6xSny317YHneNxHESrsVWIT.hX3B8.QkDzF8Q.bPgAy'
    , 'Sara'
    , 'Negri'
    , false
    , '19810710'
    , (SELECT C.id FROM city C WHERE C.name = 'San Potito Sannitico')
    , 'NGRSRA81L50I130Y'
    , (SELECT C.id FROM city C WHERE C.name = 'Molveno')
    ),
    ( 'cristina.donati@dominio.com'
    , '$2a$10$4ayyUytZggNK7Ks7V0QR2uIKexou8KjF5NGrX9jTitX7GTSOLpxR6'
    , 'Cristina'
    , 'Donati'
    , false
    , '19701205'
    , (SELECT C.id FROM city C WHERE C.name = 'Portico di Caserta')
    , 'DNTCST70T45G903T'
    , (SELECT C.id FROM city C WHERE C.name = 'Castello Tesino')
    ),
    ( 'giovanni.marino@dominio.com'
    , '$2a$10$IwP1HiTO/XOgdDXw/CR8kePscIpbP4lSYalXtyeUc.moSmeS0KqEm'
    , 'Giovanni'
    , 'Marino'
    , true
    , '19770510'
    , (SELECT C.id FROM city C WHERE C.name = 'Solofra')
    , 'MRNGNN77E10I805N'
    , (SELECT C.id FROM city C WHERE C.name = 'Ragoli')
    ),
    ( 'nadia.colombo@dominio.com'
    , '$2a$10$rFIEZ2kyQtj3ry8jGfVyf.i9hASpRolw6Kg4y2pXXPjLnjRDFuIzK'
    , 'Nadia'
    , 'Colombo'
    , false
    , '19870306'
    , (SELECT C.id FROM city C WHERE C.name = 'Pordenone')
    , 'CLMNDA87C46G888A'
    , (SELECT C.id FROM city C WHERE C.name = 'Scena')
    ),
    ( 'ginevra.caruso@dominio.com'
    , '$2a$10$HQ45JVX0osmB0rrwPietmeuRulzT6PEYf0eC5uNH9ESEKoqFYX9Zq'
    , 'Ginevra'
    , 'Caruso'
    , false
    , '19271016'
    , (SELECT C.id FROM city C WHERE C.name = 'San Leonardo in Passiria')
    , 'CRSGVR27R56H952P'
    , (SELECT C.id FROM city C WHERE C.name = 'Martello')
    ),
    ( 'martina.monaco@dominio.com'
    , '$2a$10$2dFuVmjIFf4XBSXwK8/asuAIC9wAF/gndth3jo54j7X3kPaNp5bHC'
    , 'Martina'
    , 'Monaco'
    , false
    , '19251028'
    , (SELECT C.id FROM city C WHERE C.name = 'Castello di Cisterna')
    , 'MNCMTN25R68C188R'
    , (SELECT C.id FROM city C WHERE C.name = 'Ponte Gardena')
    ),
    ( 'ilaria.ricci@dominio.com'
    , '$2a$10$ZfpSb2tkUuqXtIFiGWRCG.IiicoVMKhM5DaPi3wmIlnOcUhPZ5KpO'
    , 'Ilaria'
    , 'Ricci'
    , false
    , '19251127'
    , (SELECT C.id FROM city C WHERE C.name = 'Ton')
    , 'RCCLRI25S67L200A'
    , (SELECT C.id FROM city C WHERE C.name = 'Ronzo-Chienis')
    ),
    ( 'giuseppe.greco@dominio.com'
    , '$2a$10$zu26J6m6DEeL1gbkbnMlvOh.OWwSw25VIM1Vy./zk1DTUek.f1w1G'
    , 'Giuseppe'
    , 'Greco'
    , true
    , '19850704'
    , (SELECT C.id FROM city C WHERE C.name = 'Challand-Saint-Anselme')
    , 'GRCGPP85L04C593Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Imer')
    ),
    ( 'gianni.bonetti@dominio.com'
    , '$2a$10$CBgfgQ8wk55.JguE7qXJQ.dmiAxwCt6Y5cQ1dhlcfjK1uzLZ4s9bO'
    , 'Gianni'
    , 'Bonetti'
    , true
    , '19491220'
    , (SELECT C.id FROM city C WHERE C.name = 'Teora')
    , 'BNTGNN49T20L102N'
    , (SELECT C.id FROM city C WHERE C.name = 'Roncone')
    ),
    ( 'gaia.neri@dominio.com'
    , '$2a$10$ukJr6Cou6suOvy4yTV.IjeFfRfP7rVzd9E/SRU2bBF2C8Gqm7KIqy'
    , 'Gaia'
    , 'Neri'
    , false
    , '19060220'
    , (SELECT C.id FROM city C WHERE C.name = 'Emarese')
    , 'NREGAI06B60D402O'
    , (SELECT C.id FROM city C WHERE C.name = 'Canal San Bovo')
    ),
    ( 'attilio.grassi@dominio.com'
    , '$2a$10$cTfWfjElUyK8LJH88hbpNuuxINz9./QVlaHiRAhIQzlxEQZz9g4Ii'
    , 'Attilio'
    , 'Grassi'
    , true
    , '19180305'
    , (SELECT C.id FROM city C WHERE C.name = 'Codroipo')
    , 'GRSTTL18C05C817X'
    , (SELECT C.id FROM city C WHERE C.name = 'Vermiglio')
    ),
    ( 'agnese.gallo@dominio.com'
    , '$2a$10$kZMkQyIW5Vth0/C7qF3SaOPrma3jHDuoh43AeYUCDdjc6pkfyXMhW'
    , 'Agnese'
    , 'Gallo'
    , false
    , '19770214'
    , (SELECT C.id FROM city C WHERE C.name = 'Acerno')
    , 'GLLGNS77B54A023S'
    , (SELECT C.id FROM city C WHERE C.name = 'Torcegno')
    ),
    ( 'agnese.monaco@dominio.com'
    , '$2a$10$ocvu0KsiAG.cYuPBm3zOH.4qA1qU9LnHJ/zki2se5WDEbWgT.2j1q'
    , 'Agnese'
    , 'Monaco'
    , false
    , '19590604'
    , (SELECT C.id FROM city C WHERE C.name = 'San Mauro La Bruca')
    , 'MNCGNS59H44I032T'
    , (SELECT C.id FROM city C WHERE C.name = 'Carisolo')
    ),
    ( 'giuliana.guerra@dominio.com'
    , '$2a$10$YgHKQgz7sZJlFJ1bdZdJp.FHxsiipPDzBIq/jnruECbu.az4cxxSG'
    , 'Giuliana'
    , 'Guerra'
    , false
    , '19921028'
    , (SELECT C.id FROM city C WHERE C.name = 'Futani')
    , 'GRRGLN92R68D832T'
    , (SELECT C.id FROM city C WHERE C.name = 'Tenno')
    ),
    ( 'ginevra.marino@dominio.com'
    , '$2a$10$7Sr4.Y3l30IjU5b1VMcOOure5F0AQM6FpMwhafx6ZjDvTwgRMc/nK'
    , 'Ginevra'
    , 'Marino'
    , false
    , '19161208'
    , (SELECT C.id FROM city C WHERE C.name = 'Villa Santina')
    , 'MRNGVR16T48L909C'
    , (SELECT C.id FROM city C WHERE C.name = 'Predazzo')
    ),
    ( 'giacomo.parisi@dominio.com'
    , '$2a$10$Q71EhMLRl5nfhAiS0FsJbupUUnjVqSjAEuEad5sCd8/gB/p7PFXdy'
    , 'Giacomo'
    , 'Parisi'
    , true
    , '19520118'
    , (SELECT C.id FROM city C WHERE C.name = 'Colle Sannita')
    , 'PRSGCM52A18C846B'
    , (SELECT C.id FROM city C WHERE C.name = 'Nave San Rocco')
    ),
    ( 'marcello.rossi@dominio.com'
    , '$2a$10$pEuvmfhXEdfaILi7OLv.t.Ef.NSw1UA6kOaSHYlLBLk4ccmUcjdjO'
    , 'Marcello'
    , 'Rossi'
    , true
    , '19720926'
    , (SELECT C.id FROM city C WHERE C.name = 'San Martino Valle Caudina')
    , 'RSSMCL72P26I016A'
    , (SELECT C.id FROM city C WHERE C.name = 'Terlano')
    ),
    ( 'paola.bianchi@dominio.com'
    , '$2a$10$d0hW3x2hbQGrWdfkwPQkH.E4nJPvL8ugHbBbOwBdEcOnTRwp658.q'
    , 'Paola'
    , 'Bianchi'
    , false
    , '19450709'
    , (SELECT C.id FROM city C WHERE C.name = 'Pieve Tesino')
    , 'BNCPLA45L49G656R'
    , (SELECT C.id FROM city C WHERE C.name = 'Scena')
    ),
    ( 'paolo.colombo@dominio.com'
    , '$2a$10$qBQoMvmQqouv66if8p.gQ.Z6u4/ThZ6990Gsok9KuOStCxYji0eXK'
    , 'Paolo'
    , 'Colombo'
    , true
    , '19830510'
    , (SELECT C.id FROM city C WHERE C.name = 'Calvizzano')
    , 'CLMPLA83E10B452C'
    , (SELECT C.id FROM city C WHERE C.name = 'Ronchi Valsugana')
    ),
    ( 'paolo.costa@dominio.com'
    , '$2a$10$Unpd0nPsvPo7jpmvonGZOebKskTjOA0v39nI7/a0QH4s5GQjhKJNK'
    , 'Paolo'
    , 'Costa'
    , true
    , '19590902'
    , (SELECT C.id FROM city C WHERE C.name = 'Samone')
    , 'CSTPLA59P02H753S'
    , (SELECT C.id FROM city C WHERE C.name = 'Meltina')
    ),
    ( 'silvia.monaco@dominio.com'
    , '$2a$10$yDa9DVXUYoZihcqMW65x6.nyDpp4TbN6ZsjHwN1doVzLooz4SKjyS'
    , 'Silvia'
    , 'Monaco'
    , false
    , '19341031'
    , (SELECT C.id FROM city C WHERE C.name = 'Andreis')
    , 'MNCSLV34R71A283V'
    , (SELECT C.id FROM city C WHERE C.name = 'Barbiano')
    ),
    ( 'franco.bazzanella@dominio.com'
    , '$2a$10$DlpuRUvrsMJVMQAsu3oNK.109l4.dmsd92fUDq2krGJQ/AgmNEvy6'
    , 'Franco'
    , 'Bazzanella'
    , true
    , '19490415'
    , (SELECT C.id FROM city C WHERE C.name = 'Parolise')
    , 'BZZFNC49D15G340C'
    , (SELECT C.id FROM city C WHERE C.name = 'Nomi')
    ),
    ( 'arianna.conte@dominio.com'
    , '$2a$10$s/YZCqVFHu/VkUIEJT5.xuL1KxFBDTwmRGkr4gIGIlg/hwIGbN//i'
    , 'Arianna'
    , 'Conte'
    , false
    , '19381221'
    , (SELECT C.id FROM city C WHERE C.name = 'Gragnano')
    , 'CNTRNN38T61E131U'
    , (SELECT C.id FROM city C WHERE C.name = 'Besenello')
    ),
    ( 'giulio.gatti@dominio.com'
    , '$2a$10$e8vzZCubmZFNxUPJjqlUY..JsQAG/NVrVbF76TmVVcvRys.gslxYW'
    , 'Giulio'
    , 'Gatti'
    , true
    , '19660728'
    , (SELECT C.id FROM city C WHERE C.name = 'Cles')
    , 'GTTGLI66L28C794T'
    , (SELECT C.id FROM city C WHERE C.name = 'San Candido')
    ),
    ( 'arianna.felce@dominio.com'
    , '$2a$10$qd6aQRg0RAVNiLA5DMkSpu3dfmt3vnmd62.JsH2Hl8kPbvlO6FFG.'
    , 'Arianna'
    , 'Felce'
    , false
    , '19070409'
    , (SELECT C.id FROM city C WHERE C.name = 'Cairano')
    , 'FLCRNN07D49B367U'
    , (SELECT C.id FROM city C WHERE C.name = 'Silandro')
    ),
    ( 'francesca.guerra@dominio.com'
    , '$2a$10$uFGJUK.TGXQoc5eu2765seVSqQAwQtK8Cb/PqgIQnG3eMV.6TTLc6'
    , 'Francesca'
    , 'Guerra'
    , false
    , '19710302'
    , (SELECT C.id FROM city C WHERE C.name = 'Trasaghis')
    , 'GRRFNC71C42L335D'
    , (SELECT C.id FROM city C WHERE C.name = 'Carano')
    ),
    ( 'alessia.rinaldi@dominio.com'
    , '$2a$10$ojmPqZraZQC2f3Ooy2Ntb.RiQcL/xgCqE3QLM5ml0UFSXma2QXbEu'
    , 'Alessia'
    , 'Rinaldi'
    , false
    , '19481108'
    , (SELECT C.id FROM city C WHERE C.name = 'San Lupo')
    , 'RNLLSS48S48H973E'
    , (SELECT C.id FROM city C WHERE C.name = 'Lavis')
    ),
    ( 'luigi.barbieri@dominio.com'
    , '$2a$10$3jtXHHf2SNlP9aWgj5Xrc.tTxa2wZRc3rw8OZ7vgqqZzBpzgLDKsO'
    , 'Luigi'
    , 'Barbieri'
    , true
    , '19701130'
    , (SELECT C.id FROM city C WHERE C.name = 'Quadrelle')
    , 'BRBLGU70S30H097A'
    , (SELECT C.id FROM city C WHERE C.name = 'Lavis')
    ),
    ( 'giorgio.conte@dominio.com'
    , '$2a$10$pdIDoTLZ0EckmpZJ71Vonuzdab0bAr8ZgTukRe1KqNSewZYbGsRVe'
    , 'Giorgio'
    , 'Conte'
    , true
    , '19620815'
    , (SELECT C.id FROM city C WHERE C.name = 'Positano')
    , 'CNTGRG62M15G932G'
    , (SELECT C.id FROM city C WHERE C.name = 'Vermiglio')
    ),
    ( 'patrizia.orlando@dominio.com'
    , '$2a$10$l/bH/HG6Bq67ZrVyDQMHbOVTEjvNUWhg52iNF/eHBhCzBidoevGEi'
    , 'Patrizia'
    , 'Orlando'
    , false
    , '19300226'
    , (SELECT C.id FROM city C WHERE C.name = 'Novi Velia')
    , 'RLNPRZ30B66F967I'
    , (SELECT C.id FROM city C WHERE C.name = 'Sant''Orsola Terme')
    ),
    ( 'alessandro.donati@dominio.com'
    , '$2a$10$GWqFvfZRHwCdW47BYxGf1ujdIWeKrjo95n1ADsWTX9p8ekxFILpWu'
    , 'Alessandro'
    , 'Donati'
    , true
    , '19370330'
    , (SELECT C.id FROM city C WHERE C.name = 'Dambel')
    , 'DNTLSN37C30D246Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Telve di Sopra')
    ),
    ( 'aldo.felce@dominio.com'
    , '$2a$10$lYouCpFz7Hy3EWYIUmNOk.PVmQVQXMH7zrVI7JuckmVLSR2vWv7ka'
    , 'Aldo'
    , 'Felce'
    , true
    , '19691218'
    , (SELECT C.id FROM city C WHERE C.name = 'Latisana')
    , 'FLCLDA69T18E473C'
    , (SELECT C.id FROM city C WHERE C.name = 'Capriana')
    ),
    ( 'paola.moretti@dominio.com'
    , '$2a$10$y08s0RCjkg7UogaP241f/.6DspN/DLiNp/vGj3eZCTvAhWX7Z31Ym'
    , 'Paola'
    , 'Moretti'
    , false
    , '19240530'
    , (SELECT C.id FROM city C WHERE C.name = 'Monrupino')
    , 'MRTPLA24E70F378C'
    , (SELECT C.id FROM city C WHERE C.name = 'Chiusa')
    ),
    ( 'agostino.rossi@dominio.com'
    , '$2a$10$2rUPL/PxdwQirnX8wvHMXu6AGBeB429tBJfPNt/HBYbgI4n/Fgcfe'
    , 'Agostino'
    , 'Rossi'
    , true
    , '19680319'
    , (SELECT C.id FROM city C WHERE C.name = 'Taipana')
    , 'RSSGTN68C19G736G'
    , (SELECT C.id FROM city C WHERE C.name = 'Massimeno')
    ),
    ( 'iole.ruggiero@dominio.com'
    , '$2a$10$0aO9LiWovRVB4eRaKHCyveySxNdQsRwhYFDiejGZ9mo.NhGlike5e'
    , 'Iole'
    , 'Ruggiero'
    , false
    , '19230103'
    , (SELECT C.id FROM city C WHERE C.name = 'Calvi')
    , 'RGGLIO23A43B444M'
    , (SELECT C.id FROM city C WHERE C.name = 'Vigo Rendena')
    ),
    ( 'alfonso.barbieri@dominio.com'
    , '$2a$10$QRdGpySglh3p9FbuE3BC4.idtq2.6S4EYBV1RJVhQZeasNagt4vmm'
    , 'Alfonso'
    , 'Barbieri'
    , true
    , '19571010'
    , (SELECT C.id FROM city C WHERE C.name = 'San Giovanni al Natisone')
    , 'BRBLNS57R10H906J'
    , (SELECT C.id FROM city C WHERE C.name = 'Spiazzo')
    ),
    ( 'simonetta.rossi@dominio.com'
    , '$2a$10$YDmnF9cY6vlzxQDKXUYy2Oc0c/xuWuAP4XovJgzOSVCGS9.s4KQGu'
    , 'Simonetta'
    , 'Rossi'
    , false
    , '19980517'
    , (SELECT C.id FROM city C WHERE C.name = 'Etroubles')
    , 'RSSSNT98E57D444Y'
    , (SELECT C.id FROM city C WHERE C.name = 'Lagundo')
    ),
    ( 'piero.moretti@dominio.com'
    , '$2a$10$A8n55NBtY7SEI2GmKFIB.OcdTXehYQgSibrqVeYJgHuDwjz/IIVtm'
    , 'Piero'
    , 'Moretti'
    , true
    , '19170616'
    , (SELECT C.id FROM city C WHERE C.name = 'Sassano')
    , 'MRTPRI17H16I451M'
    , (SELECT C.id FROM city C WHERE C.name = 'Calceranica al Lago')
    ),
    ( 'federica.grasso@dominio.com'
    , '$2a$10$CKSS5XfixJNDf/LFkLIgZue2UXFP1bVYUtSN.eqsWrjp40rQLhCXq'
    , 'Federica'
    , 'Grasso'
    , false
    , '19720318'
    , (SELECT C.id FROM city C WHERE C.name = 'Vermiglio')
    , 'GRSFRC72C58L769G'
    , (SELECT C.id FROM city C WHERE C.name = 'Bleggio Superiore')
    ),
    ( 'simonetta.costa@dominio.com'
    , '$2a$10$qbicZfPMxnfBb6jGFS5Bo.MhPZO0IEo7gX8AjGD2cSFJEAmc0pA8W'
    , 'Simonetta'
    , 'Costa'
    , false
    , '19961201'
    , (SELECT C.id FROM city C WHERE C.name = 'Pontelandolfo')
    , 'CSTSNT96T41G848F'
    , (SELECT C.id FROM city C WHERE C.name = 'Lasa')
    ),
    ( 'felice.barbieri@dominio.com'
    , '$2a$10$mZ9OkTS.7dgLm4YJA5g.qeCiazsiLMQAEhNggxS7yUFxw80kNTUeq'
    , 'Felice'
    , 'Barbieri'
    , true
    , '19510323'
    , (SELECT C.id FROM city C WHERE C.name = 'Castel Morrone')
    , 'BRBFLC51C23C211M'
    , (SELECT C.id FROM city C WHERE C.name = 'Terento')
    ),
    ( 'giulio.negri@dominio.com'
    , '$2a$10$Ku1OLEegulYJTJEZ45jLFOyiXHvhV85LKhqPGobPBZQ3Y4/sCLM0q'
    , 'Giulio'
    , 'Negri'
    , true
    , '19860716'
    , (SELECT C.id FROM city C WHERE C.name = 'San Pietro al Natisone')
    , 'NGRGLI86L16I092Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Santa Cristina Valgardena')
    ),
    ( 'nadia.sala@dominio.com'
    , '$2a$10$XyCyfCocNaAkEQbKo8u5sO9ZuxgZYiUCoHG5aVFMsX3CkO77JP3Ry'
    , 'Nadia'
    , 'Sala'
    , false
    , '19250125'
    , (SELECT C.id FROM city C WHERE C.name = 'San Pietro Infine')
    , 'SLANDA25A65I113M'
    , (SELECT C.id FROM city C WHERE C.name = 'Senales')
    ),
    ( 'giovanni.lombardi@dominio.com'
    , '$2a$10$/kGEeXRmCqbDDiAEZAMMV.MRScA9vKHRkmc1XpnA/keCJlPaLwqtG'
    , 'Giovanni'
    , 'Lombardi'
    , true
    , '19740519'
    , (SELECT C.id FROM city C WHERE C.name = 'Morsano al Tagliamento')
    , 'LMBGNN74E19F750F'
    , (SELECT C.id FROM city C WHERE C.name = 'Valfloriana')
    ),
    ( 'maria.coppola@dominio.com'
    , '$2a$10$xtYaz/34ZETIbaJzrBzc6ORwMz1o5BU4PD9yRb8MPvvw2eaHP9i4e'
    , 'Maria'
    , 'Coppola'
    , false
    , '19240821'
    , (SELECT C.id FROM city C WHERE C.name = 'Nogaredo')
    , 'CPPMRA24M61F920B'
    , (SELECT C.id FROM city C WHERE C.name = 'Andriano')
    ),
    ( 'francesco.pretti@dominio.com'
    , '$2a$10$blS2rADREl0jBjQV0i1ABu3j7REZNquMFf8zP8ovcCdCsSuDOCaZ6'
    , 'Francesco'
    , 'Pretti'
    , true
    , '19230508'
    , (SELECT C.id FROM city C WHERE C.name = 'Cimolais')
    , 'PRTFNC23E08C699O'
    , (SELECT C.id FROM city C WHERE C.name = 'Cortina sulla Strada del Vino')
    ),
    ( 'andrea.moretti@dominio.com'
    , '$2a$10$gP.Jvgy6nCaMFfJ677O4tuaEF7Q6zIEBIbmqk6iBbKgHZOd.WgC1S'
    , 'Andrea'
    , 'Moretti'
    , true
    , '19130310'
    , (SELECT C.id FROM city C WHERE C.name = 'Treppo Carnico')
    , 'MRTNDR13C10L381S'
    , (SELECT C.id FROM city C WHERE C.name = 'Lauregno')
    ),
    ( 'aurora.portizio@dominio.com'
    , '$2a$10$3KagKs9d1YSwuX.59i4Gcuj6DA7i.xh5XXAurq7U4D45hDlDihg1K'
    , 'Aurora'
    , 'Portizio'
    , false
    , '19860730'
    , (SELECT C.id FROM city C WHERE C.name = 'Villabassa')
    , 'PRTRRA86L70L914I'
    , (SELECT C.id FROM city C WHERE C.name = 'Cavedine')
    ),
    ( 'felice.neri@dominio.com'
    , '$2a$10$H3S3x7Bu8yh9IgxfZ6WQEOvty5PsT1PDP62ZzvZ74XvNBhdm4MLpK'
    , 'Felice'
    , 'Neri'
    , true
    , '19560822'
    , (SELECT C.id FROM city C WHERE C.name = 'Cavizzana')
    , 'NREFLC56M22C400J'
    , (SELECT C.id FROM city C WHERE C.name = 'Terres')
    ),
    ( 'daniela.pretti@dominio.com'
    , '$2a$10$xbg/cn2U4E13abJ.52ieT.Ldz7CSWIrw0zEw67my5rzHBgzEHFtru'
    , 'Daniela'
    , 'Pretti'
    , false
    , '19670306'
    , (SELECT C.id FROM city C WHERE C.name = 'Sarnonico')
    , 'PRTDNL67C46I439Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Panchi‡')
    ),
    ( 'eleonora.ruggiero@dominio.com'
    , '$2a$10$6XTLnPss5hKCj6kPbOWIXuM7fvMNXcCC6UNbgPI2EjlCmwI9.00Qy'
    , 'Eleonora'
    , 'Ruggiero'
    , false
    , '19980125'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelnovo del Friuli')
    , 'RGGLNR98A65C217V'
    , (SELECT C.id FROM city C WHERE C.name = 'Fai della Paganella')
    ),
    ( 'luca.pellegrini@dominio.com'
    , '$2a$10$MNjJfVABXDhxZ1R7YHm9.O6dkcR8p2NEvFFG78H5B0aDfaFFUNl0q'
    , 'Luca'
    , 'Pellegrini'
    , true
    , '19670217'
    , (SELECT C.id FROM city C WHERE C.name = 'Sesto al Reghena')
    , 'PLLLCU67B17I686K'
    , (SELECT C.id FROM city C WHERE C.name = 'Rifiano')
    ),
    ( 'simone.conti@dominio.com'
    , '$2a$10$dGXHRi6U8f4jgRJligoGeuH2Pyp.DRQd.zfFgK1G9bcE8PBRFcHxC'
    , 'Simone'
    , 'Conti'
    , true
    , '19060328'
    , (SELECT C.id FROM city C WHERE C.name = 'Torcegno')
    , 'CNTSMN06C28L211B'
    , (SELECT C.id FROM city C WHERE C.name = 'Drena')
    ),
    ( 'agata.pretti@dominio.com'
    , '$2a$10$di6D1Gk9fE2BikaItgBcI.BTmcucoiRUbu8BEh7T7yk2IN1mPH.Km'
    , 'Agata'
    , 'Pretti'
    , false
    , '19900412'
    , (SELECT C.id FROM city C WHERE C.name = 'Torre del Greco')
    , 'PRTGTA90D52L259E'
    , (SELECT C.id FROM city C WHERE C.name = 'Cunevo')
    ),
    ( 'maria.costa@dominio.com'
    , '$2a$10$6CZGW7zmmrU/AJY8FH16R.00ApyE0PX6a4bqKRDQEpJBCpQr5lszq'
    , 'Maria'
    , 'Costa'
    , false
    , '19230412'
    , (SELECT C.id FROM city C WHERE C.name = 'Alife')
    , 'CSTMRA23D52A200K'
    , (SELECT C.id FROM city C WHERE C.name = 'Nova Ponente')
    ),
    ( 'golia.coppola@dominio.com'
    , '$2a$10$I.2Zu1ibZHPaNuF/GHMd4OW9bqnSFU2As4PTB6wBN2lxXisRJ8i7q'
    , 'Golia'
    , 'Coppola'
    , true
    , '19680920'
    , (SELECT C.id FROM city C WHERE C.name = 'Pastorano')
    , 'CPPGLO68P20G364A'
    , (SELECT C.id FROM city C WHERE C.name = 'Cinte Tesino')
    ),
    ( 'carlo.gatti@dominio.com'
    , '$2a$10$QQ3betwfWkKYOzpWxn7BROR53.HCWzwyZzT3LO190ngkDdXTEqXr.'
    , 'Carlo'
    , 'Gatti'
    , true
    , '19140109'
    , (SELECT C.id FROM city C WHERE C.name = 'Preore')
    , 'GTTCRL14A09H039X'
    , (SELECT C.id FROM city C WHERE C.name = 'Villa Agnedo')
    ),
    ( 'carlo.orlando@dominio.com'
    , '$2a$10$MLeCkufiLtNq1SY.jcFkpODmg/Z0WcCoaXiw6z3E1blgHmZQIOHKC'
    , 'Carlo'
    , 'Orlando'
    , true
    , '19190629'
    , (SELECT C.id FROM city C WHERE C.name = 'Cavedine')
    , 'RLNCRL19H29C393E'
    , (SELECT C.id FROM city C WHERE C.name = 'Canazei')
    ),
    ( 'marcello.dangelo@dominio.com'
    , '$2a$10$fIAx3y9/PVeoTXJ9R.OlwuUGRAbITpE/C2QY7RsKRQOZx/MNpzk2O'
    , 'Marcello'
    , 'D''Angelo'
    , true
    , '19330918'
    , (SELECT C.id FROM city C WHERE C.name = 'Mondragone')
    , 'DNGMCL33P18F352O'
    , (SELECT C.id FROM city C WHERE C.name = 'Vadena')
    ),
    ( 'sergio.colombo@dominio.com'
    , '$2a$10$1tcV42fdKtsHllYIrhuPDujLJnZHxwKn/V3VYC25/RPxnj19fQ1Da'
    , 'Sergio'
    , 'Colombo'
    , true
    , '19680326'
    , (SELECT C.id FROM city C WHERE C.name = 'Acerno')
    , 'CLMSRG68C26A023R'
    , (SELECT C.id FROM city C WHERE C.name = 'Roncegno Terme')
    ),
    ( 'valentina.rinaldi@dominio.com'
    , '$2a$10$VhO773btwVyh9dffJSxjy.SsDAe1D8I3TsWaKnl7yYQAwJDTE650u'
    , 'Valentina'
    , 'Rinaldi'
    , false
    , '19350924'
    , (SELECT C.id FROM city C WHERE C.name = 'Teano')
    , 'RNLVNT35P64L083M'
    , (SELECT C.id FROM city C WHERE C.name = 'Dro')
    ),
    ( 'sergio.serra@dominio.com'
    , '$2a$10$zLUt0ZQ3B9E.OipzXCiJHeF2biw884GQmOdJkm9B5RJSInuNDzN0.'
    , 'Sergio'
    , 'Serra'
    , true
    , '19831117'
    , (SELECT C.id FROM city C WHERE C.name = 'Apice')
    , 'SRRSRG83S17A328T'
    , (SELECT C.id FROM city C WHERE C.name = 'Fondo')
    ),
    ( 'giacomo.barbieri@dominio.com'
    , '$2a$10$D2OZcmEFSkG8ChuUmEJRnOiHauLyyTxBzVSlqMI908bNzuZJcoMfq'
    , 'Giacomo'
    , 'Barbieri'
    , true
    , '19930520'
    , (SELECT C.id FROM city C WHERE C.name = 'Siano')
    , 'BRBGCM93E20I720A'
    , (SELECT C.id FROM city C WHERE C.name = 'Lasino')
    ),
    ( 'attilio.esposito@dominio.com'
    , '$2a$10$2RAyWbVMLKlPETj.LQurzugwiJ/GWUqbq8Kvcx2DlWLy2oXmdoWMm'
    , 'Attilio'
    , 'Esposito'
    , true
    , '19060807'
    , (SELECT C.id FROM city C WHERE C.name = 'Palazzolo dello Stella')
    , 'SPSTTL06M07G268F'
    , (SELECT C.id FROM city C WHERE C.name = 'San Candido')
    ),
    ( 'paolo.moretti@dominio.com'
    , '$2a$10$jJGrGct2RdTJHSx/3Vi4Cei.u59CYemG8XueNdZrMfWFCJqYQDrx.'
    , 'Paolo'
    , 'Moretti'
    , true
    , '19761219'
    , (SELECT C.id FROM city C WHERE C.name = 'Felitto')
    , 'MRTPLA76T19D527G'
    , (SELECT C.id FROM city C WHERE C.name = 'Castel Condino')
    ),
    ( 'gaia.pellizari@dominio.com'
    , '$2a$10$3prRsN2CEMaPTvB.vVWUDuTugOH3mwPJgW9KVVLlSLvCW24k62vdK'
    , 'Gaia'
    , 'Pellizari'
    , false
    , '19880312'
    , (SELECT C.id FROM city C WHERE C.name = 'Santa Maria a Vico')
    , 'PLLGAI88C52I233U'
    , (SELECT C.id FROM city C WHERE C.name = 'San Candido')
    ),
    ( 'simonetta.monaco@dominio.com'
    , '$2a$10$DjH.r5K4VZ7GNdUVPVUbAeGCdxAtUHA5kPVldRG173ppJUwf5GzDK'
    , 'Simonetta'
    , 'Monaco'
    , false
    , '19741011'
    , (SELECT C.id FROM city C WHERE C.name = 'Drena')
    , 'MNCSNT74R51D365A'
    , (SELECT C.id FROM city C WHERE C.name = 'Parcines')
    ),
    ( 'claudia.romano@dominio.com'
    , '$2a$10$ZfuvV2ERhKsrt6ZHnSYsGOa306w6BRqPbVkdkplYBjbrUBIdj89Ne'
    , 'Claudia'
    , 'Romano'
    , false
    , '19191206'
    , (SELECT C.id FROM city C WHERE C.name = 'Bucciano')
    , 'RMNCLD19T46B239R'
    , (SELECT C.id FROM city C WHERE C.name = 'Calceranica al Lago')
    ),
    ( 'simone.gallo@dominio.com'
    , '$2a$10$w6d2fci2SxJo7iTL4S694eJVt9z9qkMxrbRjE051FHsbcUXCqxUJ6'
    , 'Simone'
    , 'Gallo'
    , true
    , '19880503'
    , (SELECT C.id FROM city C WHERE C.name = 'San Marco dei Cavoti')
    , 'GLLSMN88E03H984L'
    , (SELECT C.id FROM city C WHERE C.name = 'Val di Vizze')
    ),
    ( 'aurora.ricci@dominio.com'
    , '$2a$10$xTzfrCWLr9cDKA1IoQUrzeW8rDk2GG.e4D9P35fv9x0Cilk50nyAq'
    , 'Aurora'
    , 'Ricci'
    , false
    , '19960201'
    , (SELECT C.id FROM city C WHERE C.name = 'Padergnone')
    , 'RCCRRA96B41G214O'
    , (SELECT C.id FROM city C WHERE C.name = 'Pozza di Fassa')
    ),
    ( 'gabriele.portizio@dominio.com'
    , '$2a$10$BVH657yrLyu/twMihg8oRe2yU.G.6uDcUHJwOPn6UvPjBQgA9zO5.'
    , 'Gabriele'
    , 'Portizio'
    , true
    , '19760609'
    , (SELECT C.id FROM city C WHERE C.name = 'Fondo')
    , 'PRTGRL76H09D663V'
    , (SELECT C.id FROM city C WHERE C.name = 'Revu')
    ),
    ( 'luigi.neri@dominio.com'
    , '$2a$10$n.MxhLVkfbVkUjaNtVkc1u5u71y3ceoUU1GOnqEMclslwzpoXf94O'
    , 'Luigi'
    , 'Neri'
    , true
    , '19520217'
    , (SELECT C.id FROM city C WHERE C.name = 'Savogna')
    , 'NRELGU52B17I478M'
    , (SELECT C.id FROM city C WHERE C.name = 'Scurelle')
    ),
    ( 'alessia.costa@dominio.com'
    , '$2a$10$hLFsBulnpVvmxgwosMjsueeabbgbGaOeFdyCU4kvGSnSut7d0v.cu'
    , 'Alessia'
    , 'Costa'
    , false
    , '19150717'
    , (SELECT C.id FROM city C WHERE C.name = 'Brez')
    , 'CSTLSS15L57B165Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Scena')
    ),
    ( 'beatrice.damico@dominio.com'
    , '$2a$10$P7KJffMWTWgmRy6yctzaC.63QIdJfchJANmTwFmcWwnoamz.e/8Bq'
    , 'Beatrice'
    , 'D''Amico'
    , false
    , '19930922'
    , (SELECT C.id FROM city C WHERE C.name = 'Cunevo')
    , 'DMCBRC93P62D206S'
    , (SELECT C.id FROM city C WHERE C.name = 'Stelvio')
    ),
    ( 'alessandra.de.luca@dominio.com'
    , '$2a$10$LgZvEIMYFX7QHYzLciWh5uW9QxhRTt02GMMTdLqrHoXi.fuFQ/zRC'
    , 'Alessandra'
    , 'De Luca'
    , false
    , '19810201'
    , (SELECT C.id FROM city C WHERE C.name = 'Melito di Napoli')
    , 'DLCLSN81B41F111L'
    , (SELECT C.id FROM city C WHERE C.name = 'Ragoli')
    ),
    ( 'umberto.mancini@dominio.com'
    , '$2a$10$NWSWyGN7z5BfaZvDBDm69.F/G5LQzK8rgLqEFwfZmVhK2nxYfWRaO'
    , 'Umberto'
    , 'Mancini'
    , true
    , '19730626'
    , (SELECT C.id FROM city C WHERE C.name = 'San Giorgio della Richinvelda')
    , 'MNCMRT73H26H891I'
    , (SELECT C.id FROM city C WHERE C.name = 'Falzes')
    ),
    ( 'stefano.rossi@dominio.com'
    , '$2a$10$LyGbLyVvqo.rNm1VgZQO..oxgnfrsnGNyedeTzPtVnI/xIL5IFqwG'
    , 'Stefano'
    , 'Rossi'
    , true
    , '19150630'
    , (SELECT C.id FROM city C WHERE C.name = 'Bellosguardo')
    , 'RSSSFN15H30A756P'
    , (SELECT C.id FROM city C WHERE C.name = 'Moena')
    ),
    ( 'attilio.ricci@dominio.com'
    , '$2a$10$C2im7EPKCoht7XqAlFndreXlDRmn.D8NFPaK2w8LLDyVdU/Sq2noW'
    , 'Attilio'
    , 'Ricci'
    , true
    , '19270727'
    , (SELECT C.id FROM city C WHERE C.name = 'Lestizza')
    , 'RCCTTL27L27E553T'
    , (SELECT C.id FROM city C WHERE C.name = 'Fondo')
    ),
    ( 'alessia.conte@dominio.com'
    , '$2a$10$Xl4uuMjETo04Y3VBsZcmm./k3khjYzonc3AilE.hxzrRYkDvntXDO'
    , 'Alessia'
    , 'Conte'
    , false
    , '19920224'
    , (SELECT C.id FROM city C WHERE C.name = 'Villaricca')
    , 'CNTLSS92B64G309P'
    , (SELECT C.id FROM city C WHERE C.name = 'Nalles')
    ),
    ( 'arianna.bonetti@dominio.com'
    , '$2a$10$.gNhlbOp8If4MEgnZapIg.2PqHPKS1LB0LeIddTUrOpB//5XxGgUO'
    , 'Arianna'
    , 'Bonetti'
    , false
    , '19660808'
    , (SELECT C.id FROM city C WHERE C.name = 'Brez')
    , 'BNTRNN66M48B165D'
    , (SELECT C.id FROM city C WHERE C.name = 'Condino')
    ),
    ( 'daniela.de.luca@dominio.com'
    , '$2a$10$4gonDgqQk4jvi8HwYoaKnu3yTUuwEeYAcCCHIeQ9./p0Ka.Em2rI2'
    , 'Daniela'
    , 'De Luca'
    , false
    , '19380629'
    , (SELECT C.id FROM city C WHERE C.name = 'Santa Lucia di Serino')
    , 'DLCDNL38H69I219V'
    , (SELECT C.id FROM city C WHERE C.name = 'Brentonico')
    ),
    ( 'paola.portizio@dominio.com'
    , '$2a$10$yxFwJ6av7fnUOTEmUuoGXudBjnb.9oXjcl.AKhtCr0Cwqf84ugr7q'
    , 'Paola'
    , 'Portizio'
    , false
    , '19550802'
    , (SELECT C.id FROM city C WHERE C.name = 'Valva')
    , 'PRTPLA55M42L656O'
    , (SELECT C.id FROM city C WHERE C.name = 'Laion')
    ),
    ( 'valentina.guerra@dominio.com'
    , '$2a$10$tATGsWLfxM7gNA/PIRUrn.Zs7FtsZ/Lk0gu1dI8abEDiTXEU6SX1W'
    , 'Valentina'
    , 'Guerra'
    , false
    , '19680514'
    , (SELECT C.id FROM city C WHERE C.name = 'Lusciano')
    , 'GRRVNT68E54E754Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Pomarolo')
    ),
    ( 'alessia.sala@dominio.com'
    , '$2a$10$pJ76.cJjrFUSa3sWB3ahcO1ovu/jeAKKi5hrf4k.mjXexYsmm6Yte'
    , 'Alessia'
    , 'Sala'
    , false
    , '19570727'
    , (SELECT C.id FROM city C WHERE C.name = 'San Valentino Torio')
    , 'SLALSS57L67I377V'
    , (SELECT C.id FROM city C WHERE C.name = 'Magre sulla Strada del Vino')
    ),
    ( 'simonetta.coppola@dominio.com'
    , '$2a$10$eQU0bO8XY/q4hPYorNngre5gumHnKdruoWV7T51RjqUz5YHIt9rdy'
    , 'Simonetta'
    , 'Coppola'
    , false
    , '19280213'
    , (SELECT C.id FROM city C WHERE C.name = 'Rabbi')
    , 'CPPSNT28B53H146B'
    , (SELECT C.id FROM city C WHERE C.name = 'Fondo')
    ),
    ( 'aldo.boltri@dominio.com'
    , '$2a$10$OfLMU05gTJJKD11J/ZSUXu52slhL3gSh7SQu0EsPLwmeXxteicPra'
    , 'Aldo'
    , 'Boltri'
    , true
    , '19770703'
    , (SELECT C.id FROM city C WHERE C.name = 'Rocca San Felice')
    , 'BLTLDA77L03H438M'
    , (SELECT C.id FROM city C WHERE C.name = 'Villa Lagarina')
    ),
    ( 'giulia.ferraro@dominio.com'
    , '$2a$10$7yiUHHWt0aq8KcT7efiCn.04N4zE68wyYkMafn8N3Un3FNYUKJ1em'
    , 'Giulia'
    , 'Ferraro'
    , false
    , '19510423'
    , (SELECT C.id FROM city C WHERE C.name = 'Sassinoro')
    , 'FRRGLI51D63I455V'
    , (SELECT C.id FROM city C WHERE C.name = 'Tres')
    ),
    ( 'lucia.bianchi@dominio.com'
    , '$2a$10$w3sSuEg7pfIP9LVhkosGZ.DeYwVEnT6G3wLSFKYFQOPijWJCVOPKu'
    , 'Lucia'
    , 'Bianchi'
    , false
    , '19520806'
    , (SELECT C.id FROM city C WHERE C.name = 'Meta')
    , 'BNCLCU52M46F162S'
    , (SELECT C.id FROM city C WHERE C.name = 'Ossana')
    ),
    ( 'luigi.donati@dominio.com'
    , '$2a$10$syv1duKICH5UmFPWs0ivnemPxinLmbbDPxbA0kzFquFIEzPdwCPYq'
    , 'Luigi'
    , 'Donati'
    , true
    , '19451111'
    , (SELECT C.id FROM city C WHERE C.name = 'Chiusa')
    , 'DNTLGU45S11C653G'
    , (SELECT C.id FROM city C WHERE C.name = 'Terlano')
    ),
    ( 'silvia.portizio@dominio.com'
    , '$2a$10$a4tL5luTqzzI91Gx4TqSu.oelUc9861CQxiDk5LpCLe6IdHNzqqFG'
    , 'Silvia'
    , 'Portizio'
    , false
    , '19881216'
    , (SELECT C.id FROM city C WHERE C.name = 'Arpaia')
    , 'PRTSLV88T56A431U'
    , (SELECT C.id FROM city C WHERE C.name = 'Denno')
    ),
    ( 'sara.ruggiero@dominio.com'
    , '$2a$10$g36tfhg/V3iJRMvjCXWa2utWVdyBj4L.x4937A/gkKI2W5AwgQFaq'
    , 'Sara'
    , 'Ruggiero'
    , false
    , '19320713'
    , (SELECT C.id FROM city C WHERE C.name = 'Ronchis')
    , 'RGGSRA32L53H533G'
    , (SELECT C.id FROM city C WHERE C.name = 'Nave San Rocco')
    ),
    ( 'gaia.ricci@dominio.com'
    , '$2a$10$E4jyb0HAeueO8ihl9FsL9u/vkjuQr4sgr3rYu/UVxgaKfsyJbVnGG'
    , 'Gaia'
    , 'Ricci'
    , false
    , '20030522'
    , (SELECT C.id FROM city C WHERE C.name = 'Colliano')
    , 'RCCGAI03E62C879Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Val di Vizze')
    ),
    ( 'elisa.fontana@dominio.com'
    , '$2a$10$qaJnim/6t9XanMPiGpR5EuyhIbqqAGc6uBGOr4HKYzeFgkUluQ2cm'
    , 'Elisa'
    , 'Fontana'
    , false
    , '19900316'
    , (SELECT C.id FROM city C WHERE C.name = 'San Prisco')
    , 'FNTLSE90C56I131U'
    , (SELECT C.id FROM city C WHERE C.name = 'San Lorenzo in Banale')
    ),
    ( 'giuliana.caruso@dominio.com'
    , '$2a$10$R0gGftz/S85KKjGBmDQL1ef2sL0.PhNfXonAmaousRxdUfWbCtFPy'
    , 'Giuliana'
    , 'Caruso'
    , false
    , '19660506'
    , (SELECT C.id FROM city C WHERE C.name = 'Morgex')
    , 'CRSGLN66E46F726P'
    , (SELECT C.id FROM city C WHERE C.name = 'Vipiteno')
    ),
    ( 'simone.damico@dominio.com'
    , '$2a$10$xd25K7ZpLu7qyEDPJdiRZ.s21s06glIlAzAg.YlH3emaTGoNeoGMO'
    , 'Simone'
    , 'D''Amico'
    , true
    , '19530805'
    , (SELECT C.id FROM city C WHERE C.name = 'Fontanarosa')
    , 'DMCSMN53M05D671P'
    , (SELECT C.id FROM city C WHERE C.name = 'Villa Agnedo')
    ),
    ( 'gabriele.lombardi@dominio.com'
    , '$2a$10$F.rctwYJz3fU9OMdpbhVmuVjdpDX9oJ6n0B1THM4iDnz53E70Dq2a'
    , 'Gabriele'
    , 'Lombardi'
    , true
    , '19680803'
    , (SELECT C.id FROM city C WHERE C.name = 'Felitto')
    , 'LMBGRL68M03D527U'
    , (SELECT C.id FROM city C WHERE C.name = 'San Martino in Passiria')
    ),
    ( 'marcello.orlando@dominio.com'
    , '$2a$10$0uHa.w6kYtNpV5MaCOwz8Ov5nOHQeSIItsXdXSN1X4ITfnqg9wPRa'
    , 'Marcello'
    , 'Orlando'
    , true
    , '19730610'
    , (SELECT C.id FROM city C WHERE C.name = 'Letino')
    , 'RLNMCL73H10E554H'
    , (SELECT C.id FROM city C WHERE C.name = 'Daiano')
    ),
    ( 'martina.rana@dominio.com'
    , '$2a$10$P/APqugSKTkIedXHsBJoPuxPA9CWdy2YeVvTjD/KsJ3oRex2pb3ru'
    , 'Martina'
    , 'Rana'
    , false
    , '19311231'
    , (SELECT C.id FROM city C WHERE C.name = 'San Sebastiano al Vesuvio')
    , 'RNAMTN31T71I151Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Lavis')
    ),
    ( 'elisa.neri@dominio.com'
    , '$2a$10$3mhJ5DeSb6VR6wvRIOGr6u3n8T50Xf/gWq.nkC2TH0ZWPlfqVNBju'
    , 'Elisa'
    , 'Neri'
    , false
    , '19081217'
    , (SELECT C.id FROM city C WHERE C.name = 'Camerota')
    , 'NRELSE08T57B476U'
    , (SELECT C.id FROM city C WHERE C.name = 'Avelengo')
    ),
    ( 'arianna.gatti@dominio.com'
    , '$2a$10$6EGqyxCuPkow3Y0GgcfmzeumPhMATS.l0bvZrjXax4vH73LjFSnTi'
    , 'Arianna'
    , 'Gatti'
    , false
    , '19331218'
    , (SELECT C.id FROM city C WHERE C.name = 'Pinzano al Tagliamento')
    , 'GTTRNN33T58G680U'
    , (SELECT C.id FROM city C WHERE C.name = 'Plaus')
    ),
    ( 'arianna.orlando@dominio.com'
    , '$2a$10$LCA9.l0d2p9pjzu.Dh94i./.QasQZR44f/vNu8ysaPe9g.FPQJgZC'
    , 'Arianna'
    , 'Orlando'
    , false
    , '19230421'
    , (SELECT C.id FROM city C WHERE C.name = 'Montagne')
    , 'RLNRNN23D61F396Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Anterivo')
    ),
    ( 'laura.donati@dominio.com'
    , '$2a$10$gR9PPu7PEni4r4MpIYc5xuLICPjtCmOhTr.NII6CFM0zVdrq/XZmy'
    , 'Laura'
    , 'Donati'
    , false
    , '19170830'
    , (SELECT C.id FROM city C WHERE C.name = 'Mezzolombardo')
    , 'DNTLRA17M70F187M'
    , (SELECT C.id FROM city C WHERE C.name = 'Senales')
    ),
    ( 'stefano.gallo@dominio.com'
    , '$2a$10$XWan9.ocvo/MoU1P1HdbXOt1/Xlk8A5sQICEvkEkFJx8IyBTo836u'
    , 'Stefano'
    , 'Gallo'
    , true
    , '19470331'
    , (SELECT C.id FROM city C WHERE C.name = 'San Nicola la Strada')
    , 'GLLSFN47C31I056X'
    , (SELECT C.id FROM city C WHERE C.name = 'Vattaro')
    ),
    ( 'carlo.greco@dominio.com'
    , '$2a$10$KU5ZzlW5uz.tb8QejQ1SZeYHhQeoDpX.S9RbGi77ElAgTbs8QqaBO'
    , 'Carlo'
    , 'Greco'
    , true
    , '20000603'
    , (SELECT C.id FROM city C WHERE C.name = 'Perito')
    , 'GRCCRL00H03G455M'
    , (SELECT C.id FROM city C WHERE C.name = 'Fierozzo')
    ),
    ( 'giovanni.neri@dominio.com'
    , '$2a$10$GoPR2TiXbxmO6nuXpzacueceOcok99OWgrFTnvTqw20rNlOFC7y6K'
    , 'Giovanni'
    , 'Neri'
    , true
    , '19400717'
    , (SELECT C.id FROM city C WHERE C.name = 'Aversa')
    , 'NREGNN40L17A512F'
    , (SELECT C.id FROM city C WHERE C.name = 'Ton')
    ),
    ( 'susanna.grasso@dominio.com'
    , '$2a$10$gBKazC2DSWmVB.Es/PqMfOChLbU8kGLu/GwKPpXLmOtV4JWkTWsRq'
    , 'Susanna'
    , 'Grasso'
    , false
    , '20030925'
    , (SELECT C.id FROM city C WHERE C.name = 'Etroubles')
    , 'GRSSNN03P65D444Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Lisignago')
    ),
    ( 'giona.conti@dominio.com'
    , '$2a$10$dnGaDjRfgPMb8N5vwZAE4eLt3STyGpSM/Kwmwht9CzpwTqpamAU8G'
    , 'Giona'
    , 'Conti'
    , true
    , '19300122'
    , (SELECT C.id FROM city C WHERE C.name = 'Carano')
    , 'CNTGNI30A22B723E'
    , (SELECT C.id FROM city C WHERE C.name = 'Spormaggiore')
    ),
    ( 'alfonso.pellizari@dominio.com'
    , '$2a$10$HfUedp.fvlM.D7wicwCXwOn/HXuVAgKSp1JgfFeZ2NlW5EgTyZRmq'
    , 'Alfonso'
    , 'Pellizari'
    , true
    , '19810330'
    , (SELECT C.id FROM city C WHERE C.name = 'San Lorenzello')
    , 'PLLLNS81C30H955M'
    , (SELECT C.id FROM city C WHERE C.name = 'Bolbeno')
    ),
    ( 'beatrice.orlando@dominio.com'
    , '$2a$10$dBkSes7REUwvyt211mrnBOB2UKY4dc3c5Vr4qk1emty5j6XuF2ojq'
    , 'Beatrice'
    , 'Orlando'
    , false
    , '19950318'
    , (SELECT C.id FROM city C WHERE C.name = 'Vico Equense')
    , 'RLNBRC95C58L845W'
    , (SELECT C.id FROM city C WHERE C.name = 'Strembo')
    ),
    ( 'gabriele.greco@dominio.com'
    , '$2a$10$auyGGf19oRsB7MUm90dYQeFWZ2Sg05kmhmMfsIzHGC2qNXVHeDape'
    , 'Gabriele'
    , 'Greco'
    , true
    , '19061029'
    , (SELECT C.id FROM city C WHERE C.name = 'Trasaghis')
    , 'GRCGRL06R29L335E'
    , (SELECT C.id FROM city C WHERE C.name = 'Cloz')
    ),
    ( 'alessia.dangelo@dominio.com'
    , '$2a$10$XqlcOL/pJjg/KIwqJPjfC.yaYEHUQY8c.G62H3QvWw2ZwdYGD.Lva'
    , 'Alessia'
    , 'D''Angelo'
    , false
    , '19951220'
    , (SELECT C.id FROM city C WHERE C.name = 'Breguzzo')
    , 'DNGLSS95T60B135K'
    , (SELECT C.id FROM city C WHERE C.name = 'Lasino')
    ),
    ( 'aldo.dangelo@dominio.com'
    , '$2a$10$ADO6DA0adaHo0sOTBNJEFumoGjk6skI6f35Y68ExLkgRBIZpv1ln.'
    , 'Aldo'
    , 'D''Angelo'
    , true
    , '19970905'
    , (SELECT C.id FROM city C WHERE C.name = 'Cloz')
    , 'DNGLDA97P05C797M'
    , (SELECT C.id FROM city C WHERE C.name = 'Isera')
    ),
    ( 'federica.neri@dominio.com'
    , '$2a$10$ScggbcJ0PdU5Vg3rBc/reuN4rCE5l4IuIMYXNeEQkQikH6RPnycyK'
    , 'Federica'
    , 'Neri'
    , false
    , '19150920'
    , (SELECT C.id FROM city C WHERE C.name = 'Pagani')
    , 'NREFRC15P60G230N'
    , (SELECT C.id FROM city C WHERE C.name = 'Trodena nel parco naturale')
    ),
    ( 'franco.pellizari@dominio.com'
    , '$2a$10$6/SmRjk8rGnVp96szzZHd.NClZ7VWEYaI9NdGa3hd5v6gGwB.f8Mm'
    , 'Franco'
    , 'Pellizari'
    , true
    , '19220717'
    , (SELECT C.id FROM city C WHERE C.name = 'Verres')
    , 'PLLFNC22L17C282Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Bronzolo')
    ),
    ( 'silvia.masi@dominio.com'
    , '$2a$10$b0inqhgk0nXkonRKX5JTXu9ZtmhrJIQF.yvcUAhCRvt6fWIadeqDC'
    , 'Silvia'
    , 'Masi'
    , false
    , '19261130'
    , (SELECT C.id FROM city C WHERE C.name = 'Saint-Christophe')
    , 'MSASLV26S70H669E'
    , (SELECT C.id FROM city C WHERE C.name = 'Malosco')
    ),
    ( 'eleonora.conte@dominio.com'
    , '$2a$10$jD0IC3nwrWNaZ2Ybl.irDOSIcOWZEYekU7xzSJKXU23MH1.OqxyDC'
    , 'Eleonora'
    , 'Conte'
    , false
    , '19380913'
    , (SELECT C.id FROM city C WHERE C.name = 'Cetara')
    , 'CNTLNR38P53C584M'
    , (SELECT C.id FROM city C WHERE C.name = 'Tuenno')
    ),
    ( 'maria.lombardi@dominio.com'
    , '$2a$10$OMmDRq5299/ZfPz65wYFXOHPcJT/bOXg3REw.j8QqlZnVSl9qpetG'
    , 'Maria'
    , 'Lombardi'
    , false
    , '19271226'
    , (SELECT C.id FROM city C WHERE C.name = 'Croviana')
    , 'LMBMRA27T66D188J'
    , (SELECT C.id FROM city C WHERE C.name = 'Bleggio Superiore')
    ),
    ( 'simonetta.gatti@dominio.com'
    , '$2a$10$abZaxC1IbWXZfiJ/KCRK/u2SRV/yQ5RgUVusA0WZAkk3Xq.QfDDKu'
    , 'Simonetta'
    , 'Gatti'
    , false
    , '19700407'
    , (SELECT C.id FROM city C WHERE C.name = 'Sesto al Reghena')
    , 'GTTSNT70D47I686O'
    , (SELECT C.id FROM city C WHERE C.name = 'Bolzano')
    ),
    ( 'maria.barbieri@dominio.com'
    , '$2a$10$tcyyO5upFntg43Ap2TE/8egaaDN/3PBB3iAnwzGCP1zdUHeCkT3ZK'
    , 'Maria'
    , 'Barbieri'
    , false
    , '19270107'
    , (SELECT C.id FROM city C WHERE C.name = 'Campoformido')
    , 'BRBMRA27A47B536Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Prezzo')
    ),
    ( 'cristina.damico@dominio.com'
    , '$2a$10$6Hte8HU7OcZk5kHDebM12eLWTibLAmDyHSE0IzINPH.PJs1sQX0eS'
    , 'Cristina'
    , 'D''Amico'
    , false
    , '19731207'
    , (SELECT C.id FROM city C WHERE C.name = 'Avio')
    , 'DMCCST73T47A520Y'
    , (SELECT C.id FROM city C WHERE C.name = 'Nova Ponente')
    ),
    ( 'lucia.parisi@dominio.com'
    , '$2a$10$A05TQm39zcEZzGGSsYakF.W2Utb8fRtlW3CGw3CrkZeFes5p1fEzi'
    , 'Lucia'
    , 'Parisi'
    , false
    , '19440724'
    , (SELECT C.id FROM city C WHERE C.name = 'Teverola')
    , 'PRSLCU44L64L155Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Lauregno')
    ),
    ( 'giuseppe.rossi@dominio.com'
    , '$2a$10$8TGQ.CUBXq9I1FVS196zV.7Os4vhN88g9i60R7YwqnLTRLbZ8irJu'
    , 'Giuseppe'
    , 'Rossi'
    , true
    , '19520104'
    , (SELECT C.id FROM city C WHERE C.name = 'Montefusco')
    , 'RSSGPP52A04F512H'
    , (SELECT C.id FROM city C WHERE C.name = 'Martello')
    ),
    ( 'laura.ferrari@dominio.com'
    , '$2a$10$vqEYfEEZtln6Fa0n623yiek9.y1.lQBygpbUtwGFnB6PsH/PzlpoK'
    , 'Laura'
    , 'Ferrari'
    , false
    , '19550519'
    , (SELECT C.id FROM city C WHERE C.name = 'Resiutta')
    , 'FRRLRA55E59H244F'
    , (SELECT C.id FROM city C WHERE C.name = 'Rifiano')
    ),
    ( 'giuseppe.sala@dominio.com'
    , '$2a$10$bVAETsNffG7FG4QxQqV/ruGmlg2r.2OV6mD2Bn1733AGr4P9LaB1q'
    , 'Giuseppe'
    , 'Sala'
    , true
    , '19850702'
    , (SELECT C.id FROM city C WHERE C.name = 'Montjovet')
    , 'SLAGPP85L02F367M'
    , (SELECT C.id FROM city C WHERE C.name = 'Prezzo')
    ),
    ( 'gabriele.salvini@dominio.com'
    , '$2a$10$K5orZmAtRrKb5/QyGTlfy.zsPpbLDX7Twhhw1hkqyt5fLAg55.gfm'
    , 'Gabriele'
    , 'Salvini'
    , true
    , '19631008'
    , (SELECT C.id FROM city C WHERE C.name = 'Volturara Irpina')
    , 'SLVGRL63R08M130P'
    , (SELECT C.id FROM city C WHERE C.name = 'Denno')
    ),
    ( 'laura.ferraro@dominio.com'
    , '$2a$10$rfKPdjdiy6Vf..Mjni2v2uxy31MFJkQHXWwJIcZkNJneYiptFjmce'
    , 'Laura'
    , 'Ferraro'
    , false
    , '19661209'
    , (SELECT C.id FROM city C WHERE C.name = 'San Giorgio di Nogaro')
    , 'FRRLRA66T49H895J'
    , (SELECT C.id FROM city C WHERE C.name = 'Faver')
    ),
    ( 'cristina.bonetti@dominio.com'
    , '$2a$10$GC7l7RZbgGIEMkvjO/6t6eYT.nZZF8SU6Z6Zch2tacmuC0x7Ow6Ja'
    , 'Cristina'
    , 'Bonetti'
    , false
    , '19910523'
    , (SELECT C.id FROM city C WHERE C.name = 'Canazei')
    , 'BNTCST91E63B579Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Luserna')
    ),
    ( 'susanna.bazzanella@dominio.com'
    , '$2a$10$8uBj6y3ZqePBaOF3tTZSm.CGecBnHyt.t83dqRZLyKthz6RY2Kkeq'
    , 'Susanna'
    , 'Bazzanella'
    , false
    , '19551125'
    , (SELECT C.id FROM city C WHERE C.name = 'Fagagna')
    , 'BZZSNN55S65D461K'
    , (SELECT C.id FROM city C WHERE C.name = 'Santa Cristina Valgardena')
    ),
    ( 'paola.aranzulla@dominio.com'
    , '$2a$10$VOTRurTUfuuHX0acr9jaLe0GpKoix5FkTyGp0NPMcufok1D6Jsi8.'
    , 'Paola'
    , 'Aranzulla'
    , false
    , '20031028'
    , (SELECT C.id FROM city C WHERE C.name = 'Grumes')
    , 'RNZPLA03R68E222M'
    , (SELECT C.id FROM city C WHERE C.name = 'Falzes')
    ),
    ( 'francesca.damico@dominio.com'
    , '$2a$10$A7XrZDeomOXJ1/JyiT4LEeOElSyPw2CkrH4TqMqT7q2KIAy6RN7zq'
    , 'Francesca'
    , 'D''Amico'
    , false
    , '19300501'
    , (SELECT C.id FROM city C WHERE C.name = 'Forni Avoltri')
    , 'DMCFNC30E41D718H'
    , (SELECT C.id FROM city C WHERE C.name = 'Cunevo')
    ),
    ( 'marco.dangelo@dominio.com'
    , '$2a$10$6s3Jjm4I3UxGSJUNbyloi.Jw8.JZfbnSJWhJK.OmCfHFMBPM1yGXC'
    , 'Marco'
    , 'D''Angelo'
    , true
    , '19420315'
    , (SELECT C.id FROM city C WHERE C.name = 'Tres')
    , 'DNGMRC42C15L385W'
    , (SELECT C.id FROM city C WHERE C.name = 'Mezzano')
    ),
    ( 'franco.rinaldi@dominio.com'
    , '$2a$10$c7IOFgwreH3bo2Z3qn29jOiYmW2uQrSC2xAefBDY4a.qTdzvgoCLC'
    , 'Franco'
    , 'Rinaldi'
    , true
    , '19561017'
    , (SELECT C.id FROM city C WHERE C.name = 'Caivano')
    , 'RNLFNC56R17B371I'
    , (SELECT C.id FROM city C WHERE C.name = 'Cinte Tesino')
    ),
    ( 'agostino.negri@dominio.com'
    , '$2a$10$uOZUmxc0wf11mc0YNm7DGu6f9W2olfg/zR3x1IhlEW7lliSg/Wnyi'
    , 'Agostino'
    , 'Negri'
    , true
    , '19351221'
    , (SELECT C.id FROM city C WHERE C.name = 'San Valentino Torio')
    , 'NGRGTN35T21I377E'
    , (SELECT C.id FROM city C WHERE C.name = 'Scurelle')
    ),
    ( 'carlo.ferrari@dominio.com'
    , '$2a$10$weAShSBcXN0ReNSFkV4C2e3oYaiPM5XTWfRZjxpOtWjwHA.Vpwxbe'
    , 'Carlo'
    , 'Ferrari'
    , true
    , '20020409'
    , (SELECT C.id FROM city C WHERE C.name = 'Casoria')
    , 'FRRCRL02D09B990S'
    , (SELECT C.id FROM city C WHERE C.name = 'Samone')
    ),
    ( 'giovanni.rinaldi@dominio.com'
    , '$2a$10$4bS0py9z2mEPOHYAvriqveKhPMWQQBXKfTIiwuNNmKM5BoYTHIHY2'
    , 'Giovanni'
    , 'Rinaldi'
    , true
    , '19350608'
    , (SELECT C.id FROM city C WHERE C.name = 'San Potito Sannitico')
    , 'RNLGNN35H08I130U'
    , (SELECT C.id FROM city C WHERE C.name = 'Laces')
    ),
    ( 'gaia.sala@dominio.com'
    , '$2a$10$ZTxDNgsa57lnP8t0pRazQOCKiWkNCwaMPli3R3bgpLssKLmj9S2Gm'
    , 'Gaia'
    , 'Sala'
    , false
    , '19360403'
    , (SELECT C.id FROM city C WHERE C.name = 'Magnano in Riviera')
    , 'SLAGAI36D43E820S'
    , (SELECT C.id FROM city C WHERE C.name = 'Vallarsa')
    ),
    ( 'arianna.neri@dominio.com'
    , '$2a$10$OWr/xKxVai1IJ3xLpG1TCuPPuTZJAF9BxaZnJAGD6suCArjzH3t/6'
    , 'Arianna'
    , 'Neri'
    , false
    , '19480329'
    , (SELECT C.id FROM city C WHERE C.name = 'Terragnolo')
    , 'NRERNN48C69L121C'
    , (SELECT C.id FROM city C WHERE C.name = 'Avelengo')
    ),
    ( 'francesca.grasso@dominio.com'
    , '$2a$10$gqdVsidfOZ4kC7KuI0cg8.FACH2cpIPDKM04KkfrwZmXY/zVzlCZy'
    , 'Francesca'
    , 'Grasso'
    , false
    , '19220820'
    , (SELECT C.id FROM city C WHERE C.name = 'Grottolella')
    , 'GRSFNC22M60E214S'
    , (SELECT C.id FROM city C WHERE C.name = 'San Pancrazio')
    ),
    ( 'gaia.colombo@dominio.com'
    , '$2a$10$q0zdJ8ksuWNUHiisgN7nYuXO37Tl3ROpfR2T7m8AWDid4e4NEGKv.'
    , 'Gaia'
    , 'Colombo'
    , false
    , '19480601'
    , (SELECT C.id FROM city C WHERE C.name = 'Oyace')
    , 'CLMGAI48H41G012W'
    , (SELECT C.id FROM city C WHERE C.name = 'Caldaro sulla Strada del Vino')
    ),
    ( 'guido.rana@dominio.com'
    , '$2a$10$591rixt05Lm0XkJPE0dH0OZsnzDAYQB1AaP/YZNVK/gjNxMYfT9LS'
    , 'Guido'
    , 'Rana'
    , true
    , '19861019'
    , (SELECT C.id FROM city C WHERE C.name = 'Aviano')
    , 'RNAGDU86R19A516J'
    , (SELECT C.id FROM city C WHERE C.name = 'Ortisei')
    ),
    ( 'cristina.parisi@dominio.com'
    , '$2a$10$Y6ufyOIhyc6BrOuH8PaLzegC6OmA5mEUNcQq15s.WwwcRzTacNcPm'
    , 'Cristina'
    , 'Parisi'
    , false
    , '19830504'
    , (SELECT C.id FROM city C WHERE C.name = 'Avellino')
    , 'PRSCST83E44A509N'
    , (SELECT C.id FROM city C WHERE C.name = 'Ronzone')
    ),
    ( 'nadia.negri@dominio.com'
    , '$2a$10$gc3H3lJN8j7/wbihF0cxf.8zpUl0yVO.0DGzOz.tUg0jDrYpTpsuy'
    , 'Nadia'
    , 'Negri'
    , false
    , '19320228'
    , (SELECT C.id FROM city C WHERE C.name = 'Casola di Napoli')
    , 'NGRNDA32B68B980P'
    , (SELECT C.id FROM city C WHERE C.name = 'Dambel')
    ),
    ( 'giuliana.lombardi@dominio.com'
    , '$2a$10$K9KTS9tTcvgqKAvsua.AW.ECA8kjKtgxWS6L7c7cDJ7o2eDSoo/s6'
    , 'Giuliana'
    , 'Lombardi'
    , false
    , '19650905'
    , (SELECT C.id FROM city C WHERE C.name = 'Lignano Sabbiadoro')
    , 'LMBGLN65P45E584J'
    , (SELECT C.id FROM city C WHERE C.name = 'Terragnolo')
    ),
    ( 'francesca.negri@dominio.com'
    , '$2a$10$uSunB80bcYz47BtMJleyLedzgZA5Fa6Q1DQnab/9FhSuft9qRpJfC'
    , 'Francesca'
    , 'Negri'
    , false
    , '19420106'
    , (SELECT C.id FROM city C WHERE C.name = 'Cavizzana')
    , 'NGRFNC42A46C400A'
    , (SELECT C.id FROM city C WHERE C.name = 'Trento')
    ),
    ( 'gabriele.ferrari@dominio.com'
    , '$2a$10$Ynbw/nIuKd0rk6RskrlgyuavKcqDAVoRfi25PWBCoZQ.uVRmh4yNe'
    , 'Gabriele'
    , 'Ferrari'
    , true
    , '19390130'
    , (SELECT C.id FROM city C WHERE C.name = 'San Gregorio Matese')
    , 'FRRGRL39A30H939G'
    , (SELECT C.id FROM city C WHERE C.name = 'Meltina')
    ),
    ( 'tiziana.pretti@dominio.com'
    , '$2a$10$NH3x0T8gBN8OGr1Rbnv1oudk4E5u4IjFcLciY9GgEXXeklxK/TjQe'
    , 'Tiziana'
    , 'Pretti'
    , false
    , '19740111'
    , (SELECT C.id FROM city C WHERE C.name = 'San Tammaro')
    , 'PRTTZN74A51I261F'
    , (SELECT C.id FROM city C WHERE C.name = 'Torcegno')
    ),
    ( 'giuliana.fontana@dominio.com'
    , '$2a$10$IuC22CYPHFYLjJE7hrSDz.XfNqporl6jLwpPOJiu.u0cIAaPAWgYq'
    , 'Giuliana'
    , 'Fontana'
    , false
    , '19150930'
    , (SELECT C.id FROM city C WHERE C.name = 'Paduli')
    , 'FNTGLN15P70G227F'
    , (SELECT C.id FROM city C WHERE C.name = 'Cornedo all''Isarco')
    ),
    ( 'alfonso.pretti@dominio.com'
    , '$2a$10$UYcNlOb0.5vIr/FWlXuFOekzL/NUMZ4KPJ7kFosM6OtpmZyjuJd6e'
    , 'Alfonso'
    , 'Pretti'
    , true
    , '19630416'
    , (SELECT C.id FROM city C WHERE C.name = 'Capaccio')
    , 'PRTLNS63D16B644X'
    , (SELECT C.id FROM city C WHERE C.name = 'Lana')
    ),
    ( 'giulio.rinaldi@dominio.com'
    , '$2a$10$t1t5L5fJK7SV8BLu2tSXT.sovWXMNhB8JUDWJRZeTzBfUsBAERUE.'
    , 'Giulio'
    , 'Rinaldi'
    , true
    , '19050129'
    , (SELECT C.id FROM city C WHERE C.name = 'Galluccio')
    , 'RNLGLI05A29D886O'
    , (SELECT C.id FROM city C WHERE C.name = 'Cis')
    ),
    ( 'valentina.felce@dominio.com'
    , '$2a$10$6bHGdOsKLZpwK9w7cc8srOK7QxfGpHhSZ0DpiKIfKseC8G5JEZDiy'
    , 'Valentina'
    , 'Felce'
    , false
    , '19690701'
    , (SELECT C.id FROM city C WHERE C.name = 'Bonito')
    , 'FLCVNT69L41A975G'
    , (SELECT C.id FROM city C WHERE C.name = 'Peio')
    ),
    ( 'giuseppe.marino@dominio.com'
    , '$2a$10$Z1eHpis3KdHWGVC97T.ghukKXagazyuwbPkf6zEt/EoRCoR.TKDNy'
    , 'Giuseppe'
    , 'Marino'
    , true
    , '19161030'
    , (SELECT C.id FROM city C WHERE C.name = 'Badia')
    , 'MRNGPP16R30A538C'
    , (SELECT C.id FROM city C WHERE C.name = 'Pergine Valsugana')
    ),
    ( 'lucia.grasso@dominio.com'
    , '$2a$10$E4rpfc3sls/Hiv8fRC3yq.qlWRtqDVOp/tfJYIjW24ewEEQFyMNDa'
    , 'Lucia'
    , 'Grasso'
    , false
    , '19210707'
    , (SELECT C.id FROM city C WHERE C.name = 'Nusco')
    , 'GRSLCU21L47F988I'
    , (SELECT C.id FROM city C WHERE C.name = 'Mezzolombardo')
    ),
    ( 'giuliana.neri@dominio.com'
    , '$2a$10$qKA0r.rLuFbbNWKdCGZdVOf9tb1PBywVGOUbY3Ix1PNfKt81v49bO'
    , 'Giuliana'
    , 'Neri'
    , false
    , '19520531'
    , (SELECT C.id FROM city C WHERE C.name = 'Liveri')
    , 'NREGLN52E71E620S'
    , (SELECT C.id FROM city C WHERE C.name = 'Malosco')
    ),
    ( 'francesca.lombardi@dominio.com'
    , '$2a$10$dAX2Z.BV4Yf3y/muAOxWMeOqQdV9EidTIO4XBv/FtaGZ.ql72o8U6'
    , 'Francesca'
    , 'Lombardi'
    , false
    , '19510529'
    , (SELECT C.id FROM city C WHERE C.name = 'Roisan')
    , 'LMBFNC51E69H497F'
    , (SELECT C.id FROM city C WHERE C.name = 'Transacqua')
    ),
    ( 'nadia.fontana@dominio.com'
    , '$2a$10$Owt13NMjl1XobAIPZHGdEuehHuSm2SOwybVWRYFabyIH5Dh59H02W'
    , 'Nadia'
    , 'Fontana'
    , false
    , '19570624'
    , (SELECT C.id FROM city C WHERE C.name = 'Azzano Decimo')
    , 'FNTNDA57H64A530Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Cis')
    ),
    ( 'valentina.boltri@dominio.com'
    , '$2a$10$gF5DE/RGc49nX7WMvH2lwOc0XZnHv2PPcp6plMglx5eFoceu./SUq'
    , 'Valentina'
    , 'Boltri'
    , false
    , '19150205'
    , (SELECT C.id FROM city C WHERE C.name = 'Pieve Tesino')
    , 'BLTVNT15B45G656S'
    , (SELECT C.id FROM city C WHERE C.name = 'Sluderno')
    ),
    ( 'sara.moretti@dominio.com'
    , '$2a$10$cBaxTcYMrI.MP1WF3Dl4t.7/XUVGy7y/dOgT6gsu.HvUSmeWL/AOq'
    , 'Sara'
    , 'Moretti'
    , false
    , '19860611'
    , (SELECT C.id FROM city C WHERE C.name = 'Teor')
    , 'MRTSRA86H51L101D'
    , (SELECT C.id FROM city C WHERE C.name = 'Tesimo')
    ),
    ( 'franco.pretti@dominio.com'
    , '$2a$10$m97vVYHMP1hmLu5BcX0hmeDIxtgFUJ31JxTL6ABcHdS8/s/ynqk2u'
    , 'Franco'
    , 'Pretti'
    , true
    , '19470704'
    , (SELECT C.id FROM city C WHERE C.name = 'Alfano')
    , 'PRTFNC47L04A186J'
    , (SELECT C.id FROM city C WHERE C.name = 'Spiazzo')
    ),
    ( 'golia.aranzulla@dominio.com'
    , '$2a$10$KGt2Un/Ru5qzJxiAMoEqAONAtD.0RtkYjnT3okz4Vd8fTBcBA2sou'
    , 'Golia'
    , 'Aranzulla'
    , true
    , '19480127'
    , (SELECT C.id FROM city C WHERE C.name = 'Lapio')
    , 'RNZGLO48A27E448L'
    , (SELECT C.id FROM city C WHERE C.name = 'Bleggio Superiore')
    ),
    ( 'simone.rana@dominio.com'
    , '$2a$10$xYPtr4CGfJm1COAn3I/QtOxvrY57tsKsWcNv8sph/C9SrYZD0RylC'
    , 'Simone'
    , 'Rana'
    , true
    , '19140318'
    , (SELECT C.id FROM city C WHERE C.name = 'Ledro')
    , 'RNASMN14C18M313X'
    , (SELECT C.id FROM city C WHERE C.name = 'Ronzone')
    ),
    ( 'paolo.pellegrini@dominio.com'
    , '$2a$10$hoYHfXJbfXnBPphOIfYz0uopGceBjAk/um43cYOrFUduhTxbTUJYG'
    , 'Paolo'
    , 'Pellegrini'
    , true
    , '20020430'
    , (SELECT C.id FROM city C WHERE C.name = 'Trasaghis')
    , 'PLLPLA02D30L335H'
    , (SELECT C.id FROM city C WHERE C.name = 'Garniga Terme')
    ),
    ( 'silvia.ferrari@dominio.com'
    , '$2a$10$y513NB95oW2Xe1lGw3RdTO/4ekR6gzn7e.jX/PXOIWGPDUpHo0IbW'
    , 'Silvia'
    , 'Ferrari'
    , false
    , '19770618'
    , (SELECT C.id FROM city C WHERE C.name = 'Valsavarenche')
    , 'FRRSLV77H58L647L'
    , (SELECT C.id FROM city C WHERE C.name = 'Cloz')
    ),
    ( 'franco.guerra@dominio.com'
    , '$2a$10$T8/f.QwoAzi/DzvqOw4ee.xuSXqscfqn8DEiZZ.MMKEuxfDyfmP6a'
    , 'Franco'
    , 'Guerra'
    , true
    , '19381214'
    , (SELECT C.id FROM city C WHERE C.name = 'Sorrento')
    , 'GRRFNC38T14I862O'
    , (SELECT C.id FROM city C WHERE C.name = 'Bolzano')
    ),
    ( 'francesca.masi@dominio.com'
    , '$2a$10$E6MXR9MZfRND5QrUBOsE2OwBRfphnjUqBIy/EPeM3/Z4c4E/7ePp2'
    , 'Francesca'
    , 'Masi'
    , false
    , '19671108'
    , (SELECT C.id FROM city C WHERE C.name = 'Zungoli')
    , 'MSAFNC67S48M203P'
    , (SELECT C.id FROM city C WHERE C.name = 'Terlago')
    ),
    ( 'francesco.damico@dominio.com'
    , '$2a$10$A3rMpUtHbuQbRWDl7sGDy.IJ6UFAuHV8DIr/ZYCOZNiVJIvlCbcvu'
    , 'Francesco'
    , 'D''Amico'
    , true
    , '19971108'
    , (SELECT C.id FROM city C WHERE C.name = 'Buonabitacolo')
    , 'DMCFNC97S08B266H'
    , (SELECT C.id FROM city C WHERE C.name = 'Senales')
    ),
    ( 'paola.pellizari@dominio.com'
    , '$2a$10$mNo3IJdAmfCwWT3N1L/II.Pzfl7LWGXYGCDvoe3cCIeKcYXnZJL9a'
    , 'Paola'
    , 'Pellizari'
    , false
    , '19281210'
    , (SELECT C.id FROM city C WHERE C.name = 'Riardo')
    , 'PLLPLA28T50H268D'
    , (SELECT C.id FROM city C WHERE C.name = 'Lasino')
    ),
    ( 'marco.lombardi@dominio.com'
    , '$2a$10$tkKqf3xWU.i6ZMxBrIa8vuWxKXrJUmSwLoETe9LbA7ZZZesO4e2KG'
    , 'Marco'
    , 'Lombardi'
    , true
    , '19870920'
    , (SELECT C.id FROM city C WHERE C.name = 'Carife')
    , 'LMBMRC87P20B776G'
    , (SELECT C.id FROM city C WHERE C.name = 'Molveno')
    ),
    ( 'agata.grassi@dominio.com'
    , '$2a$10$uOTiYVtfBdQgomaffOor2.Z.fpTaxPhZEPPoQZqgksQnLyTQJQ4aS'
    , 'Agata'
    , 'Grassi'
    , false
    , '19790718'
    , (SELECT C.id FROM city C WHERE C.name = 'Bedollo')
    , 'GRSGTA79L58A730J'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelfondo')
    ),
    ( 'umberto.costa@dominio.com'
    , '$2a$10$lvVVXEnNarztvkqScVFV4.WeR4pSVHL2BmonYdeF092IP6XRxJdwC'
    , 'Umberto'
    , 'Costa'
    , true
    , '19320408'
    , (SELECT C.id FROM city C WHERE C.name = 'Lillianes')
    , 'CSTMRT32D08E587X'
    , (SELECT C.id FROM city C WHERE C.name = 'Male')
    ),
    ( 'guido.pellegrini@dominio.com'
    , '$2a$10$DtufyqDcC7VW6lcjBE.0WOutv/xgH8Dq12oYm1446x9fzArlm4Av6'
    , 'Guido'
    , 'Pellegrini'
    , true
    , '19730722'
    , (SELECT C.id FROM city C WHERE C.name = 'Rocchetta e Croce')
    , 'PLLGDU73L22H459U'
    , (SELECT C.id FROM city C WHERE C.name = 'Ronzone')
    ),
    ( 'giulio.guerra@dominio.com'
    , '$2a$10$awGb9zYguH34JzTS7bdNju8WtCaXfLqjjfynSwMyEPHMYyMzmEA7q'
    , 'Giulio'
    , 'Guerra'
    , true
    , '19710629'
    , (SELECT C.id FROM city C WHERE C.name = 'Visciano')
    , 'GRRGLI71H29M072L'
    , (SELECT C.id FROM city C WHERE C.name = 'Perca')
    ),
    ( 'sergio.greco@dominio.com'
    , '$2a$10$Xq6JmOhiqgb6BjEXi/.CyOMvOOOOhvHIp6XyR6gWI71w0gu04G5EC'
    , 'Sergio'
    , 'Greco'
    , true
    , '19820927'
    , (SELECT C.id FROM city C WHERE C.name = 'Ischia')
    , 'GRCSRG82P27E329Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Naturno')
    ),
    ( 'mirco.barbieri@dominio.com'
    , '$2a$10$aKMyQBCgAXZ3nb71DMCR0eNydXz0tfssPp1/3SYgzhEFowUJqbVCi'
    , 'Mirco'
    , 'Barbieri'
    , true
    , '19311103'
    , (SELECT C.id FROM city C WHERE C.name = 'Chiusano di San Domenico')
    , 'BRBMRC31S03C659F'
    , (SELECT C.id FROM city C WHERE C.name = 'Campitello di Fassa')
    ),
    ( 'laura.conti@dominio.com'
    , '$2a$10$wx50j8zShJvZJTK2tZ4uku5Dic7jXYcA8nTmODywQPoEtoWgAb.VO'
    , 'Laura'
    , 'Conti'
    , false
    , '19051015'
    , (SELECT C.id FROM city C WHERE C.name = 'Teor')
    , 'CNTLRA05R55L101Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelnuovo')
    ),
    ( 'laura.serra@dominio.com'
    , '$2a$10$3mNR2oRlfQ9rgtDZ.DdpD.nYkZXYeUax.ZnXJrojLNCVcG3CaWShq'
    , 'Laura'
    , 'Serra'
    , false
    , '19601104'
    , (SELECT C.id FROM city C WHERE C.name = 'Aiello del Friuli')
    , 'SRRLRA60S44A103Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelfondo')
    ),
    ( 'nadia.pellizari@dominio.com'
    , '$2a$10$Oboflr7Sj60g4rjl8L5LZuRmXMRrzQfDkk4ieYd3GcZftPxR.ABCG'
    , 'Nadia'
    , 'Pellizari'
    , false
    , '20020816'
    , (SELECT C.id FROM city C WHERE C.name = 'Bionaz')
    , 'PLLNDA02M56A877S'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelfondo')
    ),
    ( 'renato.fontana@dominio.com'
    , '$2a$10$cDwL0gsrImRS95BEFdIx.u8IxCkA0zof3afGLDWAN0NYLiGekShVC'
    , 'Renato'
    , 'Fontana'
    , true
    , '19430701'
    , (SELECT C.id FROM city C WHERE C.name = 'Ampezzo')
    , 'FNTRNT43L01A266I'
    , (SELECT C.id FROM city C WHERE C.name = 'Trambileno')
    ),
    ( 'stefania.rinaldi@dominio.com'
    , '$2a$10$5KvspNzKfRBu8hoeBqpUk.4tROhkzvQd7QJjA0XrxkHZpnYhcA4Zy'
    , 'Stefania'
    , 'Rinaldi'
    , false
    , '19790323'
    , (SELECT C.id FROM city C WHERE C.name = 'Trecase')
    , 'RNLSFN79C63M280J'
    , (SELECT C.id FROM city C WHERE C.name = 'Mezzocorona')
    ),
    ( 'felice.serra@dominio.com'
    , '$2a$10$EacqTy3JDsczJtJ4AtsEQ.m9JfWU4AzyZXg70Vv7frCGDfnzEDDy6'
    , 'Felice'
    , 'Serra'
    , true
    , '19810325'
    , (SELECT C.id FROM city C WHERE C.name = 'Fagagna')
    , 'SRRFLC81C25D461C'
    , (SELECT C.id FROM city C WHERE C.name = 'Ospedaletto')
    ),
    ( 'silvia.ruggiero@dominio.com'
    , '$2a$10$N7UsAI7oV9nGV9BI3771OuXQnHk.yFrY8IKw4gey.2M4zn0iKRpay'
    , 'Silvia'
    , 'Ruggiero'
    , false
    , '19050811'
    , (SELECT C.id FROM city C WHERE C.name = 'Ton')
    , 'RGGSLV05M51L200O'
    , (SELECT C.id FROM city C WHERE C.name = 'Campo di Trens')
    ),
    ( 'felice.conti@dominio.com'
    , '$2a$10$I0aUyRMHj2JBBzujQYAZ.uE9OFqcG37vlYBYP6LFEllRoSFXzUoOq'
    , 'Felice'
    , 'Conti'
    , true
    , '19111220'
    , (SELECT C.id FROM city C WHERE C.name = 'Bellosguardo')
    , 'CNTFLC11T20A756U'
    , (SELECT C.id FROM city C WHERE C.name = 'Brentonico')
    ),
    ( 'agostino.pellegrini@dominio.com'
    , '$2a$10$eeq.cA8pkUM87yPU1zXsFeNbDUTnxu2P40iLn9mE4g6af576601im'
    , 'Agostino'
    , 'Pellegrini'
    , true
    , '19420817'
    , (SELECT C.id FROM city C WHERE C.name = 'Faicchio')
    , 'PLLGTN42M17D469H'
    , (SELECT C.id FROM city C WHERE C.name = 'Dorsino')
    ),
    ( 'luigi.monaco@dominio.com'
    , '$2a$10$4P3qj/PVmUMWhdfO09AGLuwmLtuqyjJFU/Y22MPdcjdnfqh9Y769m'
    , 'Luigi'
    , 'Monaco'
    , true
    , '19371102'
    , (SELECT C.id FROM city C WHERE C.name = 'Scala')
    , 'MNCLGU37S02I485V'
    , (SELECT C.id FROM city C WHERE C.name = 'Imer')
    ),
    ( 'simonetta.esposito@dominio.com'
    , '$2a$10$Ud9mup4jp0FFrZNwRFfBjOmDrDAdh/IuwjTATFbeK8UMNAvvLJQt2'
    , 'Simonetta'
    , 'Esposito'
    , false
    , '19500316'
    , (SELECT C.id FROM city C WHERE C.name = 'Aiello del Friuli')
    , 'SPSSNT50C56A103L'
    , (SELECT C.id FROM city C WHERE C.name = 'Valle di Casies')
    ),
    ( 'anna.ferrari@dominio.com'
    , '$2a$10$07lgM9v2B.KFvE7YljS4V.D4uj3hEmubj13OaGte7U.AQnFsPmvoa'
    , 'Anna'
    , 'Ferrari'
    , false
    , '19920302'
    , (SELECT C.id FROM city C WHERE C.name = 'Verrayes')
    , 'FRRNNA92C42L783V'
    , (SELECT C.id FROM city C WHERE C.name = 'Brennero')
    ),
    ( 'golia.rossetti@dominio.com'
    , '$2a$10$MtugjCNwdValBo38bYeL3.28lReXzg4qbKjWJtYdm6dCtUs9cLZbO'
    , 'Golia'
    , 'Rossetti'
    , true
    , '19520117'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelnovo del Friuli')
    , 'RSSGLO52A17C217R'
    , (SELECT C.id FROM city C WHERE C.name = 'Sporminore')
    ),
    ( 'francesco.barbieri@dominio.com'
    , '$2a$10$wMos.Ia.RFQVhKbFgVJRjOekJ0As.Kj7sTItQrbNwDTv2qjItj85i'
    , 'Francesco'
    , 'Barbieri'
    , true
    , '19850801'
    , (SELECT C.id FROM city C WHERE C.name = 'Pontebba')
    , 'BRBFNC85M01G831K'
    , (SELECT C.id FROM city C WHERE C.name = 'Cagnu')
    ),
    ( 'golia.pellizari@dominio.com'
    , '$2a$10$v/GD6v7vqmidHFeMmqH9Fuukc93RNSU2mLxMQfEagtC.n.mAiqh4K'
    , 'Golia'
    , 'Pellizari'
    , true
    , '19780806'
    , (SELECT C.id FROM city C WHERE C.name = 'Novaledo')
    , 'PLLGLO78M06F947R'
    , (SELECT C.id FROM city C WHERE C.name = 'Civezzano')
    ),
    ( 'simonetta.salvini@dominio.com'
    , '$2a$10$y7gO8215FUBMJxQSpIekpuMez.a4/Z5t4N2o/2wCtYs7uuUfMPo2.'
    , 'Simonetta'
    , 'Salvini'
    , false
    , '19250426'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelnuovo di Conza')
    , 'SLVSNT25D66C235V'
    , (SELECT C.id FROM city C WHERE C.name = 'Pinzolo')
    ),
    ( 'alessandro.bazzanella@dominio.com'
    , '$2a$10$YJwn..QVwqDRCN.VwQk1KOqENh/FlhYjfQ.XYi36uneZ1RSN.oCxq'
    , 'Alessandro'
    , 'Bazzanella'
    , true
    , '19690723'
    , (SELECT C.id FROM city C WHERE C.name = 'Stella Cilento')
    , 'BZZLSN69L23G887P'
    , (SELECT C.id FROM city C WHERE C.name = 'Cimone')
    ),
    ( 'lucia.portizio@dominio.com'
    , '$2a$10$Ah5CPGN0H3y38o7kIyVDfudxeY5qpAghgyHSp3M76GnZkw6pWmY4.'
    , 'Lucia'
    , 'Portizio'
    , false
    , '19600221'
    , (SELECT C.id FROM city C WHERE C.name = 'Pontelatone')
    , 'PRTLCU60B61G849L'
    , (SELECT C.id FROM city C WHERE C.name = 'Terzolas')
    ),
    ( 'stella.lombardi@dominio.com'
    , '$2a$10$e5EwV5wkvHFLhvaxh1fQZup47vZD07g4/Jixk4qdf.JeDJ0xVzWIO'
    , 'Stella'
    , 'Lombardi'
    , false
    , '19160504'
    , (SELECT C.id FROM city C WHERE C.name = 'Saint-Denis')
    , 'LMBSLL16E44H670D'
    , (SELECT C.id FROM city C WHERE C.name = 'Preore')
    ),
    ( 'valentina.grassi@dominio.com'
    , '$2a$10$kXiyTTgByFuE/.AVqIN2.O7nEgx3Rnld5mgxozqlDsVaWkSRAWbXq'
    , 'Valentina'
    , 'Grassi'
    , false
    , '19400127'
    , (SELECT C.id FROM city C WHERE C.name = 'San Mango Piemonte')
    , 'GRSVNT40A67H977H'
    , (SELECT C.id FROM city C WHERE C.name = 'Capriana')
    ),
    ( 'francesca.aranzulla@dominio.com'
    , '$2a$10$4Yzf3egIvcXWldK/JcGl2eKbDpcrIwOvPJqNfetQvnX.s.MIuuqEe'
    , 'Francesca'
    , 'Aranzulla'
    , false
    , '19871117'
    , (SELECT C.id FROM city C WHERE C.name = 'San Marco dei Cavoti')
    , 'RNZFNC87S57H984U'
    , (SELECT C.id FROM city C WHERE C.name = 'Trambileno')
    ),
    ( 'gaia.bonetti@dominio.com'
    , '$2a$10$N/THNscLHjfR3b.JnnlusOWMPZr3AbMkF7rQOJ4KUuLRuHd/GAHT.'
    , 'Gaia'
    , 'Bonetti'
    , false
    , '19690718'
    , (SELECT C.id FROM city C WHERE C.name = 'Gragnano')
    , 'BNTGAI69L58E131X'
    , (SELECT C.id FROM city C WHERE C.name = 'Dro')
    ),
    ( 'francesco.neri@dominio.com'
    , '$2a$10$wTchHJAHDq5BMIZGoYHqT.gdNzEHFFDWpQqr6SWQxn11XzATDNrQu'
    , 'Francesco'
    , 'Neri'
    , true
    , '19151230'
    , (SELECT C.id FROM city C WHERE C.name = 'Dro')
    , 'NREFNC15T30D371J'
    , (SELECT C.id FROM city C WHERE C.name = 'Rovereto')
    ),
    ( 'susanna.esposito@dominio.com'
    , '$2a$10$scdRcnu9zxETWDEKAjYH9uguX772x2V4J.Wi3dAxNefFf3yYY./um'
    , 'Susanna'
    , 'Esposito'
    , false
    , '19341218'
    , (SELECT C.id FROM city C WHERE C.name = 'Grumes')
    , 'SPSSNN34T58E222Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Calavino')
    ),
    ( 'stefano.neri@dominio.com'
    , '$2a$10$GRjqg80r/iSbAngsf55M1O2YzFNiv68KjpfXv7/5bCkZUrmaK2c7.'
    , 'Stefano'
    , 'Neri'
    , true
    , '19580512'
    , (SELECT C.id FROM city C WHERE C.name = 'Roisan')
    , 'NRESFN58E12H497M'
    , (SELECT C.id FROM city C WHERE C.name = 'Sesto')
    ),
    ( 'susanna.salvini@dominio.com'
    , '$2a$10$ziSI4s9C/ypbFtWL7QTVJeq8c.FJKOCcuAl8n/ycO9vViRsNxBvrW'
    , 'Susanna'
    , 'Salvini'
    , false
    , '19370529'
    , (SELECT C.id FROM city C WHERE C.name = 'Bersone')
    , 'SLVSNN37E69A808Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Siror')
    ),
    ( 'arianna.rossetti@dominio.com'
    , '$2a$10$b21dx2Tw67OYcrteAHj9Ie40J73iUzbaAb4vR6z4wwxsrHctUWY5.'
    , 'Arianna'
    , 'Rossetti'
    , false
    , '19800216'
    , (SELECT C.id FROM city C WHERE C.name = 'Sassano')
    , 'RSSRNN80B56I451T'
    , (SELECT C.id FROM city C WHERE C.name = 'Fierozzo')
    ),
    ( 'stefania.pretti@dominio.com'
    , '$2a$10$jI37aiEehACDXcu88F9l8uMYQzgVDliMjyA9Bub33P2r48czDbW5a'
    , 'Stefania'
    , 'Pretti'
    , false
    , '19831108'
    , (SELECT C.id FROM city C WHERE C.name = 'Avella')
    , 'PRTSFN83S48A508L'
    , (SELECT C.id FROM city C WHERE C.name = 'Aldeno')
    ),
    ( 'aurora.dangelo@dominio.com'
    , '$2a$10$aJGNdpp8R1/2QH5j4J3n4eNJEbEQsJF0M5u6.h8sVcCypphKeyJKK'
    , 'Aurora'
    , 'D''Angelo'
    , false
    , '19760927'
    , (SELECT C.id FROM city C WHERE C.name = 'Gricignano di Aversa')
    , 'DNGRRA76P67E173X'
    , (SELECT C.id FROM city C WHERE C.name = 'Grigno')
    ),
    ( 'felice.gallo@dominio.com'
    , '$2a$10$20xYjwHswAaZoPea/LpjQ.cSOIRAeg4w9/6412TRIZTvBtQS.oXGu'
    , 'Felice'
    , 'Gallo'
    , true
    , '19590328'
    , (SELECT C.id FROM city C WHERE C.name = 'Omignano')
    , 'GLLFLC59C28G063F'
    , (SELECT C.id FROM city C WHERE C.name = 'Bocenago')
    ),
    ( 'gianni.colombo@dominio.com'
    , '$2a$10$R1bhSpgJOqxP.yi9YMZqHOEzRfcvTtQXHwEwOapAnovVVJAamuBf2'
    , 'Gianni'
    , 'Colombo'
    , true
    , '19530406'
    , (SELECT C.id FROM city C WHERE C.name = 'Valpelline')
    , 'CLMGNN53D06L643S'
    , (SELECT C.id FROM city C WHERE C.name = 'Grauno')
    ),
    ( 'gianni.costa@dominio.com'
    , '$2a$10$MliZp7BYwZN6kIzllyZzzO3XsgmbngCMg5Fv.XEDuRKC0wRYekqPi'
    , 'Gianni'
    , 'Costa'
    , true
    , '19371121'
    , (SELECT C.id FROM city C WHERE C.name = 'Fai della Paganella')
    , 'CSTGNN37S21D468L'
    , (SELECT C.id FROM city C WHERE C.name = 'Termeno sulla Strada del Vino')
    ),
    ( 'andrea.rinaldi@dominio.com'
    , '$2a$10$jCN1h1QDkX62v.CNZefJy.unVx1N8/mwD1xPeYcab/yHqPEn9s7Bi'
    , 'Andrea'
    , 'Rinaldi'
    , true
    , '19560930'
    , (SELECT C.id FROM city C WHERE C.name = 'Pellezzano')
    , 'RNLNDR56P30G426Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Vadena')
    ),
    ( 'iole.negri@dominio.com'
    , '$2a$10$Gygrd7X5ZZsdgWzmzyuVNeul1ph0yZIfjcvKwdNvSLy//AtaaJcxC'
    , 'Iole'
    , 'Negri'
    , false
    , '19190711'
    , (SELECT C.id FROM city C WHERE C.name = 'Pietrelcina')
    , 'NGRLIO19L51G631Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Daiano')
    ),
    ( 'claudia.rinaldi@dominio.com'
    , '$2a$10$A8zTQA/BOzMwvX9O1KCQ/uN1Xd2R9PA7MAZpx5o2kH2eqGn4AvSom'
    , 'Claudia'
    , 'Rinaldi'
    , false
    , '19570512'
    , (SELECT C.id FROM city C WHERE C.name = 'Benevento')
    , 'RNLCLD57E52A783B'
    , (SELECT C.id FROM city C WHERE C.name = 'Corvara in Badia')
    ),
    ( 'gianni.felce@dominio.com'
    , '$2a$10$ePScBAXXoSDDSyESw8CSluLCKNlBHbkSabgA0Bf3MzzUp.ZExotIq'
    , 'Gianni'
    , 'Felce'
    , true
    , '19180423'
    , (SELECT C.id FROM city C WHERE C.name = 'Quindici')
    , 'FLCGNN18D23H128Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Daiano')
    ),
    ( 'maria.ricci@dominio.com'
    , '$2a$10$a66fsPv/tj2sShQ5L4ep4OoXhb8bVW/DeJF5fgXJLnYO3h2KMk8im'
    , 'Maria'
    , 'Ricci'
    , false
    , '19431210'
    , (SELECT C.id FROM city C WHERE C.name = 'Castel Baronia')
    , 'RCCMRA43T50C058Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Valle di Casies')
    ),
    ( 'paola.pretti@dominio.com'
    , '$2a$10$oQO2zRh6SdRK8Ls.yhczJuNaaGvxlr9KkImhEDr.z55K6DebHIqbm'
    , 'Paola'
    , 'Pretti'
    , false
    , '19260116'
    , (SELECT C.id FROM city C WHERE C.name = 'Sparanise')
    , 'PRTPLA26A56I885D'
    , (SELECT C.id FROM city C WHERE C.name = 'Renon')
    ),
    ( 'luca.bonetti@dominio.com'
    , '$2a$10$elXAk4Ne70CC6GpPtKFrceBXwApLq5AZasdCXy3RFjkL4JkSNxZlO'
    , 'Luca'
    , 'Bonetti'
    , true
    , '19370427'
    , (SELECT C.id FROM city C WHERE C.name = 'Pellizzano')
    , 'BNTLCU37D27G428J'
    , (SELECT C.id FROM city C WHERE C.name = 'Amblar')
    ),
    ( 'mario.pellizari@dominio.com'
    , '$2a$10$fIEvHe/t9w81MlLwvPnyze8XcoVbfuFWAKfcOehuxE5zvt7GQvQXC'
    , 'Mario'
    , 'Pellizari'
    , true
    , '19970303'
    , (SELECT C.id FROM city C WHERE C.name = 'Molinara')
    , 'PLLMRA97C03F287J'
    , (SELECT C.id FROM city C WHERE C.name = 'Monguelfo-Tesido')
    ),
    ( 'ilaria.masi@dominio.com'
    , '$2a$10$ygcGQNq20FCuiqBWm3KVXeax9az26u2oxhq2cQsoy.mKOj0TPqwLy'
    , 'Ilaria'
    , 'Masi'
    , false
    , '19220216'
    , (SELECT C.id FROM city C WHERE C.name = 'Doues')
    , 'MSALRI22B56D356R'
    , (SELECT C.id FROM city C WHERE C.name = 'Roncegno Terme')
    ),
    ( 'giona.rana@dominio.com'
    , '$2a$10$w59iGhLtZD0JuS8k86OoU.HExliXFWAgx83tHsZt4lXHFpDtudJ6W'
    , 'Giona'
    , 'Rana'
    , true
    , '19701023'
    , (SELECT C.id FROM city C WHERE C.name = 'Capriva del Friuli')
    , 'RNAGNI70R23B712K'
    , (SELECT C.id FROM city C WHERE C.name = 'Vattaro')
    ),
    ( 'agostino.donati@dominio.com'
    , '$2a$10$Yoh6xKgfF0hKxIfg06JIoeyD3N5Q0e/EcTvaHQsrWnOdB/ZARqfAu'
    , 'Agostino'
    , 'Donati'
    , true
    , '19831027'
    , (SELECT C.id FROM city C WHERE C.name = 'Ovaro')
    , 'DNTGTN83R27G198U'
    , (SELECT C.id FROM city C WHERE C.name = 'Calliano')
    ),
    ( 'marco.masi@dominio.com'
    , '$2a$10$/tFX5v.7XWip9KKaWp8D..5EnjfwgEzFod9fK7y.efvhMa6flsg6i'
    , 'Marco'
    , 'Masi'
    , true
    , '19741228'
    , (SELECT C.id FROM city C WHERE C.name = 'Ruviano')
    , 'MSAMRC74T28H165L'
    , (SELECT C.id FROM city C WHERE C.name = 'Cinte Tesino')
    ),
    ( 'giona.neri@dominio.com'
    , '$2a$10$qSo1zwoaY0D3uipD/7lq6.IGiU0IzY359j1Z/kCmUoTQ/g0IinB0e'
    , 'Giona'
    , 'Neri'
    , true
    , '19200730'
    , (SELECT C.id FROM city C WHERE C.name = 'Ragogna')
    , 'NREGNI20L30H161C'
    , (SELECT C.id FROM city C WHERE C.name = 'Cavedago')
    ),
    ( 'lucia.masi@dominio.com'
    , '$2a$10$BuAUom98mFNTNX20GhUza.RWRqmfTPwHf4mLKhcPo2MsAR5luI9ki'
    , 'Lucia'
    , 'Masi'
    , false
    , '19311010'
    , (SELECT C.id FROM city C WHERE C.name = 'San Bartolomeo in Galdo')
    , 'MSALCU31R50H764E'
    , (SELECT C.id FROM city C WHERE C.name = 'Lasa')
    ),
    ( 'alessia.salvini@dominio.com'
    , '$2a$10$nlvTdaGQBmWV922L2U7li.7Ehf6xhvxVt28fZQXg5OFMP7PXRDbVi'
    , 'Alessia'
    , 'Salvini'
    , false
    , '19090219'
    , (SELECT C.id FROM city C WHERE C.name = 'Agropoli')
    , 'SLVLSS09B59A091Q'
    , (SELECT C.id FROM city C WHERE C.name = 'Spiazzo')
    ),
    ( 'giona.orlando@dominio.com'
    , '$2a$10$BtOO7WjajZQ4Lv89MokxhO25HAFsdeU6So2DedGKDymIz57x/VvSi'
    , 'Giona'
    , 'Orlando'
    , true
    , '19431023'
    , (SELECT C.id FROM city C WHERE C.name = 'Montano Antilia')
    , 'RLNGNI43R23F426D'
    , (SELECT C.id FROM city C WHERE C.name = 'Renon')
    ),
    ( 'piero.guerra@dominio.com'
    , '$2a$10$WAYzkKERWPDK.S5c8Omowe6LMYP6jGfdFsKhxxSbXTkT1DQM4UxrG'
    , 'Piero'
    , 'Guerra'
    , true
    , '19261225'
    , (SELECT C.id FROM city C WHERE C.name = 'Francolise')
    , 'GRRPRI26T25D769C'
    , (SELECT C.id FROM city C WHERE C.name = 'Nanno')
    ),
    ( 'umberto.bonetti@dominio.com'
    , '$2a$10$axK3JpW4NbwBs.D7RKQaeeQGIUi5eDuRKtJsAnOZN0J8yL45GLL06'
    , 'Umberto'
    , 'Bonetti'
    , true
    , '19771231'
    , (SELECT C.id FROM city C WHERE C.name = 'Qualiano')
    , 'BNTMRT77T31H101K'
    , (SELECT C.id FROM city C WHERE C.name = 'Fai della Paganella')
    ),
    ( 'agata.esposito@dominio.com'
    , '$2a$10$nUTXnT8oUc43z/dguHZppepqA8G2jO8nQ2eaWBUdxGk/bu2XHs5OO'
    , 'Agata'
    , 'Esposito'
    , false
    , '20000903'
    , (SELECT C.id FROM city C WHERE C.name = 'Circello')
    , 'SPSGTA00P43C719L'
    , (SELECT C.id FROM city C WHERE C.name = 'Salorno')
    ),
    ( 'iole.neri@dominio.com'
    , '$2a$10$g4R48IRb0lqY85wGKAIjPuSLgqjoNuBEw6p5dbXQvQ715Uw/9UCiS'
    , 'Iole'
    , 'Neri'
    , false
    , '19391217'
    , (SELECT C.id FROM city C WHERE C.name = 'Giustino')
    , 'NRELIO39T57E065K'
    , (SELECT C.id FROM city C WHERE C.name = 'Villa Rendena')
    ),
    ( 'alfonso.moretti@dominio.com'
    , '$2a$10$k2aUwsm8POxR3V71No.2u.9SVt63J.hJDmiaPB3tK0ttGKGnvwOUK'
    , 'Alfonso'
    , 'Moretti'
    , true
    , '19860925'
    , (SELECT C.id FROM city C WHERE C.name = 'Campoformido')
    , 'MRTLNS86P25B536R'
    , (SELECT C.id FROM city C WHERE C.name = 'Campo di Trens')
    ),
    ( 'francesca.pellizari@dominio.com'
    , '$2a$10$NZr0x.10CABKAOHUsn9aYeev/vYREb44kEDiwWRJfyUholuLnleiO'
    , 'Francesca'
    , 'Pellizari'
    , false
    , '19681106'
    , (SELECT C.id FROM city C WHERE C.name = 'Gressan')
    , 'PLLFNC68S46E165S'
    , (SELECT C.id FROM city C WHERE C.name = 'Ziano di Fiemme')
    ),
    ( 'patrizia.gallo@dominio.com'
    , '$2a$10$aSmAJi80e2fprC3AGUCEsOUYJ2H4sWrz/Ekie94sXziW3Vvqhsic.'
    , 'Patrizia'
    , 'Gallo'
    , false
    , '19850718'
    , (SELECT C.id FROM city C WHERE C.name = 'Tramonti')
    , 'GLLPRZ85L58L323B'
    , (SELECT C.id FROM city C WHERE C.name = 'Vignola-Falesina')
    ),
    ( 'luigi.parisi@dominio.com'
    , '$2a$10$qhv6gJIpNChAcBb1hRIaVOweG.TREKoyAfqGnxGyGTGw2oJL9uBsG'
    , 'Luigi'
    , 'Parisi'
    , true
    , '19060825'
    , (SELECT C.id FROM city C WHERE C.name = 'Bicinicco')
    , 'PRSLGU06M25A855Z'
    , (SELECT C.id FROM city C WHERE C.name = 'Marlengo')
    ),
    ( 'martina.rossi@dominio.com'
    , '$2a$10$qa08L3ydDEOr/aJXP04M2ea5rVUDDJLElzKBH8SeIEqOUOOxvxYbm'
    , 'Martina'
    , 'Rossi'
    , false
    , '19340819'
    , (SELECT C.id FROM city C WHERE C.name = 'Sorbo Serpico')
    , 'RSSMTN34M59I843O'
    , (SELECT C.id FROM city C WHERE C.name = 'Martello')
    ),
    ( 'elisa.costa@dominio.com'
    , '$2a$10$sEXX5xFoGUDDQM8trP3xHu6cFZ5oziINT39oUqiBb6fWqzVzYrGim'
    , 'Elisa'
    , 'Costa'
    , false
    , '19951105'
    , (SELECT C.id FROM city C WHERE C.name = 'Contursi Terme')
    , 'CSTLSE95S45C974C'
    , (SELECT C.id FROM city C WHERE C.name = 'Daone')
    ),
    ( 'tiziana.boltri@dominio.com'
    , '$2a$10$rc0TxZ4YOJG1qWRrwEgr4uhVtrFwtZRxdZgebIOTH3PxGg7hBSjHy'
    , 'Tiziana'
    , 'Boltri'
    , false
    , '19851016'
    , (SELECT C.id FROM city C WHERE C.name = 'Monrupino')
    , 'BLTTZN85R56F378O'
    , (SELECT C.id FROM city C WHERE C.name = 'Romallo')
    ),
    ( 'stefania.serra@dominio.com'
    , '$2a$10$cGt76.0xOYlAeqmFKIqPT.ncupiU5NV5FM74ydgY/bEnYsF3X2Uk2'
    , 'Stefania'
    , 'Serra'
    , false
    , '19720429'
    , (SELECT C.id FROM city C WHERE C.name = 'Pratola Serra')
    , 'SRRSFN72D69H006B'
    , (SELECT C.id FROM city C WHERE C.name = 'Andriano')
    ),
    ( 'elisa.conti@dominio.com'
    , '$2a$10$gYdM76i8I0fVS.Wf3pYdGu/yfzriV4M.ejmziuQNxHmp5JAU9tEzG'
    , 'Elisa'
    , 'Conti'
    , false
    , '19460610'
    , (SELECT C.id FROM city C WHERE C.name = 'Lustra')
    , 'CNTLSE46H50E767L'
    , (SELECT C.id FROM city C WHERE C.name = 'Brunico')
    ),
    ( 'davide.grasso@dominio.com'
    , '$2a$10$WmHv0g7WJDdvA3lxf4FswOxfI7GMTunGy6dydRtK3wZbSyhqKWvBy'
    , 'Davide'
    , 'Grasso'
    , true
    , '19141219'
    , (SELECT C.id FROM city C WHERE C.name = 'Apollosa')
    , 'GRSDVD14T19A330H'
    , (SELECT C.id FROM city C WHERE C.name = 'Spera')
    ),
    ( 'alfonso.caruso@dominio.com'
    , '$2a$10$eeiyDGIDfiN5bWHlqWN31Osi8nObk3SzEN6V8EHkpiJE37/r1OGGS'
    , 'Alfonso'
    , 'Caruso'
    , true
    , '19271128'
    , (SELECT C.id FROM city C WHERE C.name = 'Castelpoto')
    , 'CRSLNS27S28C250L'
    , (SELECT C.id FROM city C WHERE C.name = 'Massimeno')
    ),
    ( 'aurora.romano@dominio.com'
    , '$2a$10$ezFBGLVekVBKlyhWpEtJ5OUzZbKCuZPamJ/u6wjxp5sy9Bd2nMjrC'
    , 'Aurora'
    , 'Romano'
    , false
    , '19870819'
    , (SELECT C.id FROM city C WHERE C.name = 'Casalnuovo di Napoli')
    , 'RMNRRA87M59B905O'
    , (SELECT C.id FROM city C WHERE C.name = 'Romallo')
    ),
    ( 'giovanni.costa@dominio.com'
    , '$2a$10$CyRHuJdmL9owt9cmZokHZO.wf78AuJ6bbPByuelhRWlD8BM/6nXci'
    , 'Giovanni'
    , 'Costa'
    , true
    , '19371229'
    , (SELECT C.id FROM city C WHERE C.name = 'Zuglio')
    , 'CSTGNN37T29M200P'
    , (SELECT C.id FROM city C WHERE C.name = 'Denno')
    )