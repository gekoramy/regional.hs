<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>

    <title>Cookie policy</title>
</head>
<body>

<%@ include file="../commons/header.jsp" %>

<div class="container">

    <div class="row justify-content-between">

        <div class="col-12 col-lg-6 mt-lg-3 px-3 pl-md-0 pr-lg-5">
            <div class="callout callout-more note">
                <div class="callout-title">
                    <svg class="icon">
                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-info-circle"></use>
                    </svg>
                    <span>
                        Cookie Policy
                    </span>
                </div>
                <p class="text-justify">
                    In questa sezione del sito, Dunder Mifflin - in qualità di <strong>Titolare del trattamento</strong>, desidera
                    fornire all'utente informazioni chiare riguardanti l'utilizzo di cookie.
                    <br>
                    <br>
                    Tali cookie, vengono utilizzati per far funzionare più efficientemente e migliorare la navigazione on-line
                    dell'utente. Previo esplicito consenso dell'utente, alcune tipologie di cookie potranno essere utilizzate per
                    personalizzare la propria esperienza sul sito.
                    <br>
                    <br>
                    I dati personali saranno conservati dal Titolare nel pieno rispetto dei principi di <strong>necessità,
                    minimizzazione, limitazione della conservazione</strong>, mediante l'adozione di misure tecniche e
                    organizzative adeguate al livello di rischio dei trattamenti, per un arco di tempo non superiore al
                    conseguimento delle finalità di cui sopra e comunque non oltre il periodo previsto dalla normativa
                    applicabile.
                </p>
            </div>
        </div>

        <div class="col-12 col-lg-6 mt-3 mt-lg-5">
            <div id="A" class="collapse-div w-100" role="tablist">

                <div class="collapse-header">
                    <button data-toggle="collapse" aria-expanded="false" data-target="#A1" aria-controls="A1">
                        Cosa sono i cookie?
                    </button>
                </div>
                <div id="A1" class="collapse" role="tabpanel"
                     data-parent="#A">
                    <div class="collapse-body">
                        I cookie sono piccoli file di testo che vengono immessi e memorizzati nei terminali da parte del sito
                        visualizzato dall'utente per poter essere ritrasmessi allo stesso sito alla visita successiva.
                        <br>
                        <br>
                        Queste informazioni possono rimanere nel sistema per la durata di una sessione (cioè fino a che non si
                        chiude il browser utilizzato per la navigazione sul web) o per lunghi periodi e possono contenere un
                        codice identificativo unico.
                    </div>
                </div>

                <div class="collapse-header">
                    <button data-toggle="collapse" aria-expanded="false" data-target="#A2" aria-controls="A2">
                        Cosa sono i cookie di terze parti?
                    </button>
                </div>
                <div id="A2" class="collapse" role="tabpanel" data-parent="#A">
                    <div class="collapse-body">
                        I cookie possono essere anche di "terze parti" quando vengono impostati da un sito web diverso da quello
                        che l'utente sta visitando. Questo perché su ogni sito possono essere presenti elementi che risiedono su
                        server diversi da quello del sito visitato, come ad esempio nel caso di immagini, suoni, specifici link a
                        pagine web di altri domini.
                        <br>
                        <br>
                        Tali cookie non sono indispensabili alla navigazione, pertanto in qualunque momento può esserne
                        disattivato l'utilizzo attraverso le apposite funzioni del browser.
                    </div>
                </div>

                <div class="collapse-header">
                    <button data-toggle="collapse" aria-expanded="false" data-target="#A3" aria-controls="A3">
                        Quali cookie sono utilizzati in questo sito?
                    </button>
                </div>
                <div id="A3" class="collapse" role="tabpanel" data-parent="#A">
                    <div class="collapse-body">
                        All'interno del nostro sito utilizziamo:
                        <br>
                        <br>
                        <ul>
                            <li>
                                <strong>Cookie non opzionali</strong>
                                <br>
                                <br>
                                Tra i cookie <strong>non opzionali</strong> vengono ricompresi i cookie tecnici ed i cookie
                                analitici di prima e di terza parte che non consentono l'identificazione dell'utente. I cookie
                                tecnici consentono di effettuare correttamente la navigazione o fornire un servizio richiesto.
                                Questi cookie non vengono utilizzati per scopi ulteriori. Senza il ricorso a tali cookie, alcune
                                operazioni non potrebbero essere compiute o sarebbero più complesse e/o meno sicure. I cookie
                                tecnici consentono di effettuare e mantenere l'identificazione dell'utente nell'ambito della
                                sessione risultando indispensabili. Pertanto, non viene richiesto il consenso per il loro
                                utilizzo. In questa categoria di cookie non opzionali sono ricompresi i cookie analitici di prima
                                e di terza parte che vengono utilizzati soltanto per raccogliere informazioni, in forma aggregata,
                                sul numero degli utenti e su come questi visitano il sito stesso; inoltre, consentono di elaborare
                                statistiche generali sul servizio. L'utilizzo di tali cookie non prevede la richiesta di consenso
                                in quanto sono stati adottati strumenti che non consentono l'identificazione dell'utente.
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="collapse-header">
                    <button data-toggle="collapse" aria-expanded="false" data-target="#A4" aria-controls="A4">
                        Elenco dei cookie non opzionali
                    </button>
                </div>
                <div id="A4" class="collapse" role="tabpanel" data-parent="#A">
                    <div class="collapse-body">
                        <code>JSESSIONID</code>
                        <br>
                        Utile all'identificazione univoca della sessione
                        <br>
                        Scade al termine della sessione di navigazione

                        <br>
                        <br>
                        <code>consent</code>
                        <br>
                        Raccoglie l'avvenuta lettura della cookie policy e il relativo consenso
                        <br>
                        Scade dopo 90 giorni

                    </div>
                </div>

                <div class="collapse-header">
                    <button data-toggle="collapse" aria-expanded="false" data-target="#A5" aria-controls="A5">
                        Ulteriori informazioni
                    </button>
                </div>
                <div id="A5" class="collapse" role="tabpanel" data-parent="#A">
                    <div class="collapse-body">
                        Ulteriori informazioni in ordine al trattamento dei dati personali e ai diritti riconosciuti agli
                        interessati possono essere reperiti nella <a href="${pageContext.request.contextPath}/policy/privacy">Privacy
                        Policy</a> e sul sito web del Garante per la protezione dei dati personali all'indirizzo <a
                            href="https://www.garanteprivacy.it" target="_blank">www.garanteprivacy.it</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<%@include file="../commons/footer.jsp" %>

</body>
</html>
