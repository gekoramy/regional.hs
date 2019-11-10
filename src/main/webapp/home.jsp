<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@ include file="./commons/meta.jsp" %>
    <%@ include file="./commons/base.jsp" %>

    <title>Home</title>
</head>
<body>

<%@ include file="commons/header.jsp" %>

<div class="it-hero-wrapper it-dark it-overlay it-bottom-overlapping-content">
    <div class="img-responsive-wrapper">
        <div class="img-responsive">
            <div class="img-wrapper" style="opacity:0.75;">
                <img src="${pageContext.request.contextPath}/assets/img/home/doctors.jpeg" title="img title" alt="imagealt"/>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="it-hero-text-wrapper bg-dark">
                    <h1>Regional HS</h1>
                    <p class="d-none d-lg-block">Il servizio sanitario regionale fatto su misura per te</p>
                    <div class="it-btn-container">
                        <a class="btn btn-sm btn-secondary" href="${pageContext.request.contextPath}/login">Accedi al servizo</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <h5 class="card-title">
                            Quadro clinico
                        </h5>
                        <p class="card-text">
                            Il tuo quadro clinico <strong>a portata di mano</strong>, sempre e ovunque
                            <br>
                            <br>
                            Visualizza lo storico delle <strong>prescrizioni mediche</strong> e tutti i tuoi
                            <strong>referti</strong>,
                            organizzati e ordinati in una comoda tabella
                            <br>
                            <br>
                            Monitora lo stato dei <strong>ticket</strong> ed esporta la spesa in formato pdf
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <h5 class="card-title">
                            Gestione account
                        </h5>
                        <p class="card-text">
                            Aggiorna la tua <strong>foto profilo</strong> in ogni momento
                            <br>
                            <br>
                            Visualizza <strong>medici di base</strong> disponibili e cambia il tuo in pochi click
                            <br>
                            Senza lasciare il sito e senza bisogno di operatori
                            <br>
                            <br>
                            <a class="font-weight-bold text-decoration-none" href="${pageContext.request.contextPath}/forgot">
                                Password dimenticata?
                            </a>
                            Nessun problema
                            <br>
                            Resettare la password impiega solo <strong>pochi secondi</strong>,
                            il tutto garantendo la massima sicurezza
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <h5 class="card-title">
                            Costantemente aggiornato
                        </h5>
                        <p class="card-text">
                            <strong>Regional HS</strong> ti mantiene aggiornato in tempo reale notificando
                            via <strong>email</strong> nuove prescrizioni e referti
                            <br>
                            <br>
                            All'interno di questo sito trovi un'intera sezione dedicata a raccogliere
                            le <strong>informazioni sugli esami e i medicinali</strong> prescrivibili
                            <br>
                            Prova a darci un'occhiata
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section section-image" style="background-image: url('${pageContext.request.contextPath}/assets/img/home/team.gif')">
    <div class="section-content">
        <div class="container white-color">
            <div class="row">
                <div class="col-12">
                    <h4>Conosci il team di sviluppo</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-4 pr-0 pr-md-5 mb-3">
                    <strong>Regional HS</strong> è un progetto universitario, porzione d'esame per il corso
                    <strong>Introduzione alla programmazione Web</strong>
                    tenuto all'Università degli studi di Trento DISI
                </div>
                <div class="col-12 col-lg-4 pr-0 pr-md-5 mb-3">
                    Il gruppo di lavoro è composto da tre studenti:
                    <br>
                    - <a class="font-weight-bold text-decoration-none" href="https://github.com/Gabrielenones">Gabriele Nones</a>
                    <br>
                    - <a class="font-weight-bold text-decoration-none" href="https://github.com/gekoramy">Luca Mosetti</a>
                    <br>
                    - <a class="font-weight-bold text-decoration-none" href="https://github.com/raffaelepojer">Raffaele Pojer</a>
                    <br>
                </div>
                <div class="col-12 col-lg-4 pr-0 pr-md-5">
                    <strong>Regional HS</strong> si basa su database <strong>PostreSQL</strong>, <strong>JavaEE 8</strong>,
                    <strong>JQuery</strong> e il framework <strong>Bootstrap Italia</strong>
                    <br>
                    <br>
                    Punta ad essere <strong>mobile-first</strong>, senza limare alcuna funzionalità
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="commons/footer.jsp" %>

</body>
</html>
