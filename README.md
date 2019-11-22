# Regional HS

## Sviluppatori

|     #    |                |               @                  |
|:--------:|----------------|---------------------------------:|
| `193726` | Raffaele Pojer | raffaele.pojer@studenti.unitn.it |
| `195275` | Luca Mosetti   | luca.mosetti-1@studenti.unitn.it |
| `195497` | Gabriele Nones | nones.gabriele@studenti.unitn.it |

## Linguaggi

* SQL
* Java 11
* CSS
* ECMAScript 6

## Librerie / Framework

Java

* JavaEE 8 (Servlet / JSP / JSTL)
* Jooq
* Json-Simple
* Zxing
* iTextPdf
* poi-ooxml
* jbcrypt

Javascript

* jquery
* select2

CSS

* Bootstrap Italia

## Farlo partire

Il progetto necessita di

* Apache TomEE (Testata la versione webprofile 7.1.1)
* PostgreSQL (Testata la versione 11.5)
* Gradle (Testata la versione 5.6.2)

Crea 2 database:

* 1 sfruttato dall'applicazione web
* 1 sfruttato esclusivamente per i test

```
> psql

# CREATE DATABASE regional.hs
# CREATE DATABASE test-regional.hs
# \q
```

Popola entrambi con il medesimo dump

```
> psql "regional.hs" < dump.sql
> psql "test-regional.hs" < dump.sql
```

Completa le configurazioni necessarie ai test in `Database.java`

Quindi fai partire i test

```
> gradle clean test
```

Completa il file di configurazioni `resource.xml`

* account gmail utilizzato per l'invio delle email alle utenze
* email utilizzato per il debug, se configurato tutte le email da inviare alle utenze, vengono invece inoltrate all'email di debug
* account db

Quindi compila la web-application

```
> gradle clean build
```

Trovi il war in `build/libs/regional.hs.war`; spostalo all'interno della directory `[TomEE]/webapps`

[Avvia TomEE](http://tomee.apache.org/installing-tomee.html)

Visita quindi `http://localhost:8080/regional.hs/`

## Descrizione

Il progetto non è un gestionale prenotazioni

Non prevede di gestire appuntamenti e/o visite

Il progetto mira ad aiutare:
- i medici, per avere un quadro clinico completo del paziente in visita e nella registrazione di prescrizioni, di referti e di pagamenti
- i pazienti, nella visualizzazione dei propri dati personali e del proprio quadro clinico
- gli amministratori del servizio sanitario per le statistiche dei ticket

Il progetto distingue

5 tipi di utenze:

* paziente
* medico di base
* medico specialistico
* medico del servizio sanitario
* amministratore del servizio sanitario provinciale

2 tipi di prescrizioni

* prescrizione farmaco
* prescrizione esame

2 tipi di esami

* esame specialistico
* esame supportati dal servizio sanitario nazionale

### Funzionalità

Il paziente è in grado di:

* visualizzare lo storico delle prescrizioni dei farmaci, con annesso ticket
* visualizzare lo storico delle prescrizioni degli esami, con annesso ticket e referto medico
* esportare storico ticket in formato pdf
* generare QR code univoco per prescrizione farmaco
* aggiornare foto profilo
* cambiare password corrente
* cambiare medico di base
* ricevere aggiornamenti (quali nuove prescrizioni, ticket, referti, ...) via mail

Il medico di base è in grado di:

* medesime funzionalità del paziente
* visualizzare i dati personali del proprio parco pazienti
* visualizzare lo storico delle prescrizioni dei farmaci / esami dei singoli pazienti
* prescrivere un esame (specialistico o supportato dal servizio sanitario nazionale) tra quelli proposti
* prescrivere un farmaco tra quelli proposti

Il medico specialista è in grado di:

* medesime funzionalità del paziente
* visualizzare i dati personali di tutti i pazienti registrati
* visualizzare lo storico delle prescrizioni dei farmaci / esami dei singoli pazienti
* responsabilizzarsi della prescrizione `x`, per lo svolgimento di un esame specialistico per cui egli è qualificato, incassando il ticket dello stesso
* pubblicare il referto medico di un esame di cui è responsabile

Il medico del servizio sanitario è in grado di:

* medesime funzionalità del paziente
* visualizzare i dati personali di tutti i pazienti registrati
* visualizzare lo storico delle prescrizioni dei farmaci / esami dei singoli pazienti
* responsabilizzarsi della prescrizione `x`, per lo svolgimento di un esame supportato dal servizio sanitario nazionale per cui egli è qualificato, incassando il ticket dello stesso
* pubblicare il referto medico di un esame di cui è responsabile

L'amministratore del servizio sanitario è in grado di:

* medesime funzionalità del paziente
* esportare in formato xls l'intera lista di ticket (da farmaci / da esami) prescritti all'interno del servizio sanitario provinciale per cui lavora

## Popolazione

Il dump.sql prevede di popolare il db per:

* `  20` regioni italiane
* `  12` province (ricoprono interamente 4 regioni)
* `1176` città (ricoprono interamente 12 province)
* `1000` farmaci
* ` 192` esami, di cui
	* ` 133` supportati dal servizio sanitario nazionale
	* `  59` specialistici

* ` 50` avatar
* ` 50` utenze (ricoprono 2 province), di cui
	* `   5` medici di base 
	* `   4` medici del servizio sanitario
	* `   4` medici specialistici
	* `   2` amministratori

* `1960` prescrizioni mediche, di cui
	* `1279` prescrizioni per farmaci
	* ` 681` prescrizioni per esami

* `1830` ticket, di cui
	* `1250` ticket prescrizioni per farmaci
	* ` 580` ticket prescrizioni per esami

* ` 570` referti

## Database

Il progetto poggia le basi su uno schema db saldo

Per come è definito, lo schema esclude:

* qualsiasi forma di ridondanza, quindi di possibili inconsistenze
* il valore `NULL`

Lo schema da solo garantisce, tra le altre cose:

* generazione randomica di token con annessa scadenza
* un medico generale può seguire qualsiasi paziente, ad esclusione di se stesso
* un medico specialista può svolgere esclusivamente esami specialistici
* un medico del servizio sanitario può svolgere esclusivamente esami supportati dal servizio sanitario
* il referto di un esame può essere pubblicato esclusivamente in seguito al pagamento del suo stesso ticket

Al fine di evitare trigger specifici, l'applicazione deve garantire altri aspetti:

* le prescrizione mediche di un paziente posso essere registrare esclusivamente dall'attuale medico di base dello stesso
* solo il medico che ha incassato il prezzo del ticket può pubblicare un referto a riguardo
* un esame `x` può essere svolto esclusivamente da un medico qualificato per l'esame `x`
* un paziente residente nella provincia `x` può essere seguito esclusivamente da un medico di base che lavora nella medesima provincia `x`

Data la fondamentale necessità della consistenza dei dati, il progetto include più di 100 test che garantiscono la corretta interazione con il database

Tali test vanno a toccare svariate casistiche limite

## Architettura

In generale distinguiamo 3 tipi di servlet, designati a svolgere un unico compito:

* JSP, rappresentare visivamente il contenuto della request corrente
* Http Servlet - view, popolare la request con gli attributi richiesti, inoltrando il tutto a una JSP. Rispondono esclusivamente a richieste POST
* Http Servlet - action, svolgere l'azione richiesta dall'utente, popolare la session corrente con il risultato (riprende i status code di HTTP), quindi reindirizzare la request a una Http Servlet - view. Rispondono esclusivamente a richieste GET

Tutte le servlet rispettano questo standard, fatta eccezione per:

* login
* reset

## Gestione avatar

Il progetto permette all'utente di aggiornare la propria immagine profilo

Una volta aggiornata, l'immagine precedente viene eliminata

L'immagine caricata viene:

* tagliata in quadrato
* ridotta alla risoluzione prevista
* copiata in locale con un nome univoco generato randomicamente

## Gestione password dimenticata

Il progetto permette di resettare la password dimenticata

Avvenuta la richiesta, viene generato su db un token univoco casuale con timestamp di scadenza

Tale token viene recapitato all'interessato via email

L'utente può resettare la password visitando la pagina prevista entro e non oltre la scadenza del token

Il token viene eliminato nel momento in cui la richiesta di reset è andata a buon fine

Il database garantisce:

* token univoci e randomici
* ogni utente abbia al massimo 1 token (rendendo così inefficaci i precedenti)