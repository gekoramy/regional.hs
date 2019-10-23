INSERT INTO person(email, password, name, surname, gender, birthday, birthplace, fc, residence)
VALUES ( 'giovanni.bianchi@dominio.com'
       , '$2a$10$RMNpxU/M4AyCb5YPpmHzHOahe6i9pnzoc7QLBY5kp0iBI2G4kqweK'
       , 'Giovanni'
       , 'Bianchi'
       , true
       , '19610401'
       , (SELECT C.id FROM city C WHERE C.name = 'San Pancrazio')
       , 'BNCGNN61D01I066G'
       , (SELECT C.id FROM city C WHERE C.name = 'Trento')),
       ( 'sara.caruso@dominio.com'
       , '$2a$10$2g5m0Qzz68haf5bjr6GpKuuPUlm2g6haEuk3HgcEsPFoW4fqGJlWS'
       , 'Sara'
       , 'Caruso'
       , false
       , '19790201'
       , (SELECT C.id FROM city C WHERE C.name = 'Caposele')
       , 'CRSSRA79B41B674S'
       , (SELECT C.id FROM city C WHERE C.name = 'Bocenago')),
       ( 'marco.coppola@dominio.com'
       , '$2a$10$nhvzdcDLH1vxCBC6v6S3DOQuroZj1AGEbbHw1BtLJqKCte7dj1IGS'
       , 'Marco'
       , 'Coppola'
       , true
       , '19351206'
       , (SELECT C.id FROM city C WHERE C.name = 'Polcenigo')
       , 'CPPMRC35T06G780O'
       , (SELECT C.id FROM city C WHERE C.name = 'Lasino')),
       ( 'eleonora.damico@dominio.com'
       , '$2a$10$Tw/mKceznRaIRseKHMOnreLA3uqFX4R5zDsGzf/I.yp9ly.a5QkiW'
       , 'Eleonora'
       , 'D''Amico'
       , false
       , '19941130'
       , (SELECT C.id FROM city C WHERE C.name = 'Roccagloriosa')
       , 'DMCLNR94S70H412J'
       , (SELECT C.id FROM city C WHERE C.name = 'Male')),
       ( 'carlo.mancini@dominio.com'
       , '$2a$10$FyVjhjUDQtgIwBtzoiW4q.OIoGpdf7qc1hvU/NQRLlnViPQEpskK6'
       , 'Carlo'
       , 'Mancini'
       , true
       , '19460906'
       , (SELECT C.id FROM city C WHERE C.name = 'Terzigno')
       , 'MNCCRL46P06L142G'
       , (SELECT C.id FROM city C WHERE C.name = 'Drena')),
       ( 'sara.bolle@dominio.com'
       , '$2a$10$UJaC44heW8ir5c2R2iHpPuhN8MUpkMeps2RikOhQHScqjQ0071TLu'
       , 'Sara'
       , 'Bolle'
       , false
       , '19360102'
       , (SELECT C.id FROM city C WHERE C.name = 'Tufino')
       , 'BLLSRA36A42L460N'
       , (SELECT C.id FROM city C WHERE C.name = 'Villa Rendena')),
       ( 'mario.barbieri@dominio.com'
       , '$2a$10$4G80iyaGaqUNIWEuZZyFN.XpaLM9ZSDlSk7Xb3yOe9WQA6TVFWDce'
       , 'Mario'
       , 'Barbieri'
       , true
       , '19510521'
       , (SELECT C.id FROM city C WHERE C.name = 'Sparanise')
       , 'BRBMRA51E21I885G'
       , (SELECT C.id FROM city C WHERE C.name = 'Besenello')),
       ( 'mario.rossetti@dominio.com'
       , '$2a$10$MlC7IO.45DKXtL3QJS9ql.vCzVwGuHfmyKmyzzbZwfe7gif.wJGpu'
       , 'Mario'
       , 'Rossetti'
       , true
       , '19690806'
       , (SELECT C.id FROM city C WHERE C.name = 'Aquileia')
       , 'RSSMRA69M06A346L'
       , (SELECT C.id FROM city C WHERE C.name = 'Andalo')),
       ( 'silvia.colombo@dominio.com'
       , '$2a$10$TwJZ1tw.2QPwrt4q5vvakOMDcrVcsH9FuLUiZzkP53MPTap/EpHTG'
       , 'Silvia'
       , 'Colombo'
       , false
       , '19210313'
       , (SELECT C.id FROM city C WHERE C.name = 'Bellosguardo')
       , 'CLMSLV21C53A756H'
       , (SELECT C.id FROM city C WHERE C.name = 'Pieve Tesino')),
       ( 'francesca.ferrari@dominio.com'
       , '$2a$10$pFrzLHcAP34oxXKJOsiBAuZroY0Rci7vXBJJGl5ra1cNY8YNCXodS'
       , 'Francesca'
       , 'Ferrari'
       , false
       , '19900324'
       , (SELECT C.id FROM city C WHERE C.name = 'Arvier')
       , 'FRRFNC90C64A452V'
       , (SELECT C.id FROM city C WHERE C.name = 'Nago-Torbole')),
       ( 'maria.bonetti@dominio.com'
       , '$2a$10$FZdnOU8rnQq3hjnsP7kpTuNnOzwgCjjydzUmVc4N8FaJaTMgpXZO.'
       , 'Maria'
       , 'Bonetti'
       , false
       , '20031215'
       , (SELECT C.id FROM city C WHERE C.name = 'Giugliano in Campania')
       , 'BNTMRA03T55E054Y'
       , (SELECT C.id FROM city C WHERE C.name = 'Ruffre-Mendola')),
       ( 'alessandro.costa@dominio.com'
       , '$2a$10$8Zd7iP/ztKMtUU/8P/0ncu76VhApHyq250OhVua4PZOXb9nEiWJ7S'
       , 'Alessandro'
       , 'Costa'
       , true
       , '19991209'
       , (SELECT C.id FROM city C WHERE C.name = 'Centola')
       , 'CSTLSN99T09C470B'
       , (SELECT C.id FROM city C WHERE C.name = 'Ledro')),
       ( 'maria.sala@dominio.com'
       , '$2a$10$8hysQkKYoNtuAqLXkH1/tegxsHIDKFOmINVCZSNVrv0qd4X9b/ThC'
       , 'Maria'
       , 'Sala'
       , false
       , '19700710'
       , (SELECT C.id FROM city C WHERE C.name = 'Gioi')
       , 'SLAMRA70L50E037S'
       , (SELECT C.id FROM city C WHERE C.name = 'Cunevo')),
       ( 'golia.salvini@dominio.com'
       , '$2a$10$NG4FtDBad4yO..03OIeUzeIwc3k4jmOu20s3rxRtNbSdnhvJzPDx2'
       , 'Golia'
       , 'Salvini'
       , true
       , '19230909'
       , (SELECT C.id FROM city C WHERE C.name = 'Monte San Giacomo')
       , 'SLVGLO23P09F618Z'
       , (SELECT C.id FROM city C WHERE C.name = 'Strembo')),
       ( 'daniela.bazzanella@dominio.com'
       , '$2a$10$Ck2ZUH51DoEEUVeRqs4iw.y6xr4Gqt9sWerIm3uMMmVIT9rz3pY2e'
       , 'Daniela'
       , 'Bazzanella'
       , false
       , '19950428'
       , (SELECT C.id FROM city C WHERE C.name = 'Centola')
       , 'BZZDNL95D68C470D'
       , (SELECT C.id FROM city C WHERE C.name = 'Fai della Paganella')),
       ( 'ginevra.parisi@dominio.com'
       , '$2a$10$ZgCQ/BReIC2p1BJOjZ9oguKtsen2GtbajN14ydVzRhsmcghufd6Yi'
       , 'Ginevra'
       , 'Parisi'
       , false
       , '19540409'
       , (SELECT C.id FROM city C WHERE C.name = 'Condino')
       , 'PRSGVR54D49C953T'
       , (SELECT C.id FROM city C WHERE C.name = 'Besenello')),
       ( 'eleonora.gatti@dominio.com'
       , '$2a$10$mJ9Mobo1g0as7liB3.QFGumKlAzf5g/gLuac0QhAM/VA8Bh6clXVq'
       , 'Eleonora'
       , 'Gatti'
       , false
       , '19670122'
       , (SELECT C.id FROM city C WHERE C.name = 'Duino-Aurisina')
       , 'GTTLNR67A62D383Z'
       , (SELECT C.id FROM city C WHERE C.name = 'Dorsino')),
       ( 'davide.radoani@dominio.com'
       , '$2a$10$Hl5rF2htCRfi3uJilHvRie/7ygUWDMRFYISvwy2xEZlOzkocfpi/a'
       , 'Davide'
       , 'Radoani'
       , true
       , '19361107'
       , (SELECT C.id FROM city C WHERE C.name = 'Carzano')
       , 'RDNDVD36S07B856Z'
       , (SELECT C.id FROM city C WHERE C.name = 'Carisolo')),
       ( 'nadia.marino@dominio.com'
       , '$2a$10$/oZrjcz6r.Bp9htCjjg31uCR6K9HDrlHbScz/q/8xphkP6oolcjjO'
       , 'Nadia'
       , 'Marino'
       , false
       , '19430502'
       , (SELECT C.id FROM city C WHERE C.name = 'Camposano')
       , 'MRNNDA43E42B565I'
       , (SELECT C.id FROM city C WHERE C.name = 'Zuclo')),
       ( 'claudia.masi@dominio.com'
       , '$2a$10$EpX0XAyEQIYDKNUWG90axOSHo3.sb08MKGUhWK04H0H8.8FmA84rO'
       , 'Claudia'
       , 'Masi'
       , false
       , '19231025'
       , (SELECT C.id FROM city C WHERE C.name = 'Talmassons')
       , 'MSACLD23R65L039N'
       , (SELECT C.id FROM city C WHERE C.name = 'Telve di Sopra')),
       ( 'aldo.salvo@dominio.com'
       , '$2a$10$puBusfvnbLY/t.q.SL8EAuclojLo1/fNSFulxuUSiJC562DMwWBFi'
       , 'Aldo'
       , 'Salvo'
       , true
       , '19470111'
       , (SELECT C.id FROM city C WHERE C.name = 'Moschiano')
       , 'SLVLDA47A11F762Y'
       , (SELECT C.id FROM city C WHERE C.name = 'Carzano')),
       ( 'martina.ferraro@dominio.com'
       , '$2a$10$8Ufruz/Pvfo.qizjZ7zmT.A0BBnJv9L0VH3xh4o48zjJ7sUm3wybe'
       , 'Martina'
       , 'Ferraro'
       , false
       , '19561011'
       , (SELECT C.id FROM city C WHERE C.name = 'Raveo')
       , 'FRRMTN56R51H200S'
       , (SELECT C.id FROM city C WHERE C.name = 'Bondone')),
       ( 'alessandra.fontana@dominio.com'
       , '$2a$10$Av1u03ItzRzmhJ4NQW73ZOlElg6ZRlPqvA6FK81v3Ct3h2M2KP9Jm'
       , 'Alessandra'
       , 'Fontana'
       , false
       , '19551008'
       , (SELECT C.id FROM city C WHERE C.name = 'Colloredo di Monte Albano')
       , 'FNTLSN55R48C885L'
       , (SELECT C.id FROM city C WHERE C.name = 'Riva del Garda')),
       ( 'stefano.de.luca@dominio.com'
       , '$2a$10$jXuaWkJfamLYMkZ/xL8ClerwlrNl4KHWmL8EWInKqLVE8qHzZYhp.'
       , 'Stefano'
       , 'De Luca'
       , true
       , '20000819'
       , (SELECT C.id FROM city C WHERE C.name = 'Sarre')
       , 'DLCSFN00M19I442E'
       , (SELECT C.id FROM city C WHERE C.name = 'Villa Rendena')),
       ( 'umberto.negri@dominio.com'
       , '$2a$10$xsqazSMv.Y.It0pkNtCWmu6DNdCR.dIOc7HkmrdImSk36pwi7i8.S'
       , 'Umberto'
       , 'Negri'
       , true
       , '19480512'
       , (SELECT C.id FROM city C WHERE C.name = 'Pavia di Udine')
       , 'NGRMRT48E12G389R'
       , (SELECT C.id FROM city C WHERE C.name = 'Tesero')),
       ( 'attilio.guerra@dominio.com'
       , '$2a$10$v5V4rtwULc9ET/vVI2WwQur6M7DZ6W0Rmho4axvYx6lOjF.Cjo8Wi'
       , 'Attilio'
       , 'Guerra'
       , true
       , '19830301'
       , (SELECT C.id FROM city C WHERE C.name = 'Ponte')
       , 'GRRTTL83C01G827Z'
       , (SELECT C.id FROM city C WHERE C.name = 'Mezzolombardo')),
       ( 'giona.radoano@dominio.com'
       , '$2a$10$fSS.ekDBpqI6JZc22jc0lO6d/.Vra8VHeb5g.61QwSojb73pSzfcu'
       , 'Giona'
       , 'Radoano'
       , true
       , '19210208'
       , (SELECT C.id FROM city C WHERE C.name = 'Tufino')
       , 'RDNGNI21B08L460N'
       , (SELECT C.id FROM city C WHERE C.name = 'Ronchi Valsugana')),
       ( 'silvia.ruggiero@dominio.com'
       , '$2a$10$3KRLqLN2Lpa7AGdNoBadwu.rYF9hQx9YkykKgqv./c4cmxHheOvnS'
       , 'Silvia'
       , 'Ruggiero'
       , false
       , '20030110'
       , (SELECT C.id FROM city C WHERE C.name = 'Sala Consilina')
       , 'RGGSLV03A50H683Q'
       , (SELECT C.id FROM city C WHERE C.name = 'Pieve di Bono')),
       ( 'daniela.rana@dominio.com'
       , '$2a$10$DmhDlTjKAtDb9lqgtUJFu./aGekjgvuOVlHSZWY60u9afsqkyuRRe'
       , 'Daniela'
       , 'Rana'
       , false
       , '19930409'
       , (SELECT C.id FROM city C WHERE C.name = 'Somma Vesuviana')
       , 'RNADNL93D49I820M'
       , (SELECT C.id FROM city C WHERE C.name = 'Lasino')),
       ( 'giuliana.rossi@dominio.com'
       , '$2a$10$tEwB0U2fGCMeChroqm34eOhcZSd5SUrEoeG3vaa72TGQDAAx2qP2W'
       , 'Giuliana'
       , 'Rossi'
       , false
       , '19230530'
       , (SELECT C.id FROM city C WHERE C.name = 'Praso')
       , 'RSSGLN23E70G989M'
       , (SELECT C.id FROM city C WHERE C.name = 'Dare')),
       ( 'renato.narci@dominio.com'
       , '$2a$10$j1qeBiyVCCM0G8tg5PlZVufIWIYKUDeCAAzM5evXlEiBIUBDW1R/S'
       , 'Renato'
       , 'Narci'
       , true
       , '19350426'
       , (SELECT C.id FROM city C WHERE C.name = 'Torre Annunziata')
       , 'NRCRNT35D26L245L'
       , (SELECT C.id FROM city C WHERE C.name = 'Velturno')),
       ( 'eleonora.monaco@dominio.com'
       , '$2a$10$PjlFlauhXI0OHOvJiW2h2.AmpLj9hrVXr0EBHw58TXuU.Zf7AmQJe'
       , 'Eleonora'
       , 'Monaco'
       , false
       , '19560309'
       , (SELECT C.id FROM city C WHERE C.name = 'Flaibano')
       , 'MNCLNR56C49D630Z'
       , (SELECT C.id FROM city C WHERE C.name = 'Campo di Trens')),
       ( 'alessandro.grassi@dominio.com'
       , '$2a$10$rhCxapoYWctzxySlD7rvZ.fv/uU2lwJyjApCbwmYmENe6grkjeOky'
       , 'Alessandro'
       , 'Grassi'
       , true
       , '19831029'
       , (SELECT C.id FROM city C WHERE C.name = 'Angri')
       , 'GRSLSN83R29A294A'
       , (SELECT C.id FROM city C WHERE C.name = 'Naz-Sciaves')),
       ( 'federica.greco@dominio.com'
       , '$2a$10$67yF/WdgbXPShpCHt2btIOUNSCqrpKqIVp0/U1kZJoVd9tXqyEVGC'
       , 'Federica'
       , 'Greco'
       , false
       , '20030309'
       , (SELECT C.id FROM city C WHERE C.name = 'Serino')
       , 'GRCFRC03C49I630J'
       , (SELECT C.id FROM city C WHERE C.name = 'Sluderno')),
       ( 'iole.neri@dominio.com'
       , '$2a$10$imSDhseG9QQSUsLVvigbJu8PcgBNqlr1VNDPUYwj56z5g/ZHUgvwe'
       , 'Iole'
       , 'Neri'
       , false
       , '19451108'
       , (SELECT C.id FROM city C WHERE C.name = 'Volla')
       , 'NRELIO45S48M115J'
       , (SELECT C.id FROM city C WHERE C.name = 'Chiusa')),
       ( 'stefano.moretti@dominio.com'
       , '$2a$10$duZrs.67Vr4xfNw/btKQpO7TI9ZjQrduXOIby5THaYPFYVIrmuBBm'
       , 'Stefano'
       , 'Moretti'
       , true
       , '19530420'
       , (SELECT C.id FROM city C WHERE C.name = 'Fontanarosa')
       , 'MRTSFN53D20D671O'
       , (SELECT C.id FROM city C WHERE C.name = 'Sarentino')),
       ( 'laura.gallo@dominio.com'
       , '$2a$10$kLaZaPy..PscB0.uyO74kOUlHne2vRo2YuQQ6z.xDXfH3E7IcIlwa'
       , 'Laura'
       , 'Gallo'
       , false
       , '19600717'
       , (SELECT C.id FROM city C WHERE C.name = 'Circello')
       , 'GLLLRA60L57C719B'
       , (SELECT C.id FROM city C WHERE C.name = 'Avelengo')),
       ( 'carlo.ricci@dominio.com'
       , '$2a$10$EsOovhISBEEeloauFGjNUeO8NTM3yt.YNA9zAuEAewunGnSNi8Kn2'
       , 'Carlo'
       , 'Ricci'
       , true
       , '19641016'
       , (SELECT C.id FROM city C WHERE C.name = 'Bondone')
       , 'RCCCRL64R16A968V'
       , (SELECT C.id FROM city C WHERE C.name = 'Valle di Casies')),
       ( 'silvia.volpi@dominio.com'
       , '$2a$10$xK5uiT4s7h8ARx1DUe/RguYh48w.RDwMWAczhLLRsIdJVODM0yKue'
       , 'Silvia'
       , 'Volpi'
       , false
       , '19640710'
       , (SELECT C.id FROM city C WHERE C.name = 'Ronzo-Chienis')
       , 'VLPSLV64L50M303S'
       , (SELECT C.id FROM city C WHERE C.name = 'Villabassa')),
       ( 'giacomo.pretti@dominio.com'
       , '$2a$10$lnACs48VqzPaMj8C17XnRunUF570nUrKRw1NlcXEj/VES0/HXcFLG'
       , 'Giacomo'
       , 'Pretti'
       , true
       , '19890706'
       , (SELECT C.id FROM city C WHERE C.name = 'Carinola')
       , 'PRTGCM89L06B781A'
       , (SELECT C.id FROM city C WHERE C.name = 'Monguelfo-Tesido')),
       ( 'simonetta.serra@dominio.com'
       , '$2a$10$BZw/AbtlUVkDTsy.vd6ZH.5mrwuoi0D6RdxNAo7axr1EIKq6aT0rK'
       , 'Simonetta'
       , 'Serra'
       , false
       , '19611112'
       , (SELECT C.id FROM city C WHERE C.name = 'Santa Maria La Longa')
       , 'SRRSNT61S52I248M'
       , (SELECT C.id FROM city C WHERE C.name = 'Andriano')),
       ( 'marcello.donati@dominio.com'
       , '$2a$10$YEbEUeJAPNtTBCj15jgyJu51.z1dnBmg2IWSNFU57eVk29VLpa1/u'
       , 'Marcello'
       , 'Donati'
       , true
       , '19580108'
       , (SELECT C.id FROM city C WHERE C.name = 'San Marco Evangelista')
       , 'DNTMCL58A08F043Q'
       , (SELECT C.id FROM city C WHERE C.name = 'Corvara in Badia')),
       ( 'giorgio.moser@dominio.com'
       , '$2a$10$nGpsuDXCA/NMDsXOR739EuNFkOMOM60s0aPlrUdHglZWUmTXMsrKy'
       , 'Giorgio'
       , 'Moser'
       , true
       , '19491217'
       , (SELECT C.id FROM city C WHERE C.name = 'Lacco Ameno')
       , 'MSRGRG49T17E396T'
       , (SELECT C.id FROM city C WHERE C.name = 'Lana')),
       ( 'simone.pellegrini@dominio.com'
       , '$2a$10$i8UCSE.XAD0Fm8AmG45LmO2U8uXYd7MNRiAtBzOjfbCB6PlMSBZ9K'
       , 'Simone'
       , 'Pellegrini'
       , true
       , '19321102'
       , (SELECT C.id FROM city C WHERE C.name = 'Sparanise')
       , 'PLLSMN32S02I885L'
       , (SELECT C.id FROM city C WHERE C.name = 'Valle Aurina')),
       ( 'paola.lombardi@dominio.com'
       , '$2a$10$kJEWz/4x1N3RirRP24gotu4UH4nBuJ0ZImNAtm7dpmC43dHXvQ5ry'
       , 'Paola'
       , 'Lombardi'
       , false
       , '19410413'
       , (SELECT C.id FROM city C WHERE C.name = 'Sanza')
       , 'LMBPLA41D53I410F'
       , (SELECT C.id FROM city C WHERE C.name = 'Nalles')),
       ( 'ilaria.grasso@dominio.com'
       , '$2a$10$4aBXAcrq7q5XujAeRoQ.LO7QXbTuJ030xGBoueJ4dB7lbODExY5uK'
       , 'Ilaria'
       , 'Grasso'
       , false
       , '19900706'
       , (SELECT C.id FROM city C WHERE C.name = 'Bellona')
       , 'GRSLRI90L46A755U'
       , (SELECT C.id FROM city C WHERE C.name = 'Rasun Anterselva')),
       ( 'davide.romano@dominio.com'
       , '$2a$10$yUsDGp9IagpnxRZIYVzRSu6TCNdZaJM3o0F8LWdSsPavW/ijxe1km'
       , 'Davide'
       , 'Romano'
       , true
       , '19850503'
       , (SELECT C.id FROM city C WHERE C.name = 'Gignod')
       , 'RMNDVD85E03E029U'
       , (SELECT C.id FROM city C WHERE C.name = 'Campo di Trens')),
       ( 'martina.dangelo@dominio.com'
       , '$2a$10$Rw7BJeZ9lsxl.gsBJ8UxVeB.MEeK7USO6qwCPSJHZkLWxMXtWixQm'
       , 'Martina'
       , 'D''Angelo'
       , false
       , '19740801'
       , (SELECT C.id FROM city C WHERE C.name = 'Caivano')
       , 'DNGMTN74M41B371C'
       , (SELECT C.id FROM city C WHERE C.name = 'Ultimo')),
       ( 'daniela.rinaldi@dominio.com'
       , '$2a$10$BIX5QbpAZiGHgmu3RXbtF.hYIeGk8GSOeYedmiFR9o51BGEoGtIEa'
       , 'Daniela'
       , 'Rinaldi'
       , false
       , '20000518'
       , (SELECT C.id FROM city C WHERE C.name = 'Gignod')
       , 'RNLDNL00E58E029R'
       , (SELECT C.id FROM city C WHERE C.name = 'Falzes')),
       ( 'luigi.segata@dominio.com'
       , '$2a$10$3GjdI7MRXq7oDzt36XNkVu3W2GDr1HCh5uEriSGNI7Z5bikagdnse'
       , 'Luigi'
       , 'Segata'
       , true
       , '19331231'
       , (SELECT C.id FROM city C WHERE C.name = 'Valda')
       , 'SGTLGU33T31L550F'
       , (SELECT C.id FROM city C WHERE C.name = 'Valle Aurina'))