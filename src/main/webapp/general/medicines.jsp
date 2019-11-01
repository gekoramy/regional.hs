<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean scope="request" id="general" type="dunder.mifflin.persistence.pojos.General"/>
<jsp:useBean scope="request" id="patient" type="dunder.mifflin.persistence.pojos.Person"/>

<jsp:useBean scope="request" id="general_avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="patient_avatar" type="java.lang.String"/>

<jsp:useBean scope="request" id="birthplace_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="birthplace_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="birthplace_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="residence_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="residence_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="residence_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="medicines" type="java.util.List<dunder.mifflin.persistence.pojos.MedicinePrescription>"/>
<jsp:useBean scope="request" id="tickets" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.MedicineTicket>"/>

<jsp:useBean scope="request" id="options" type="java.util.List<dunder.mifflin.persistence.pojos.Medicine>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/header.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Storico farmaci</title>
</head>

<body>

<div class="it-header-slim-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="it-header-slim-wrapper-content">
                    <span class="d-lg-block navbar-brand">Servizio Sanitario</span>
                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu2" role="button"
                               aria-expanded="false" aria-controls="menu2">
                                <span>Generale</span>
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu2">
                                <ul class="link-list">
                                    <li><a class="list-item"
                                           href="${pageContext.request.contextPath}/general/patients">Visita</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu1" role="button"
                               aria-expanded="false" aria-controls="menu1">
                                <span>Personale</span>
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu1">
                                <ul class="link-list">
                                    <li><a class="list-item"
                                           href="${pageContext.request.contextPath}/patient/exams">Esami</a>
                                    </li>
                                    <li><a class="list-item"
                                           href="${pageContext.request.contextPath}/patient/medicines">Farmaci</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="it-header-slim-right-zone">
                        <a href="${pageContext.request.contextPath}/patient/profile" class="btn btn-primary btn-icon btn-full">
                            <div class="avatar size-lg">
                                <img src="${general_avatar}" alt="avatar">
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="it-header-slim-wrapper theme-light">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="it-header-slim-wrapper-content">
                    <span class="d-lg-block navbar-brand">${patient.name()} ${patient.surname()}</span>
                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu3" role="button"
                               aria-expanded="false" aria-controls="menu1">
                                <span>Paziente</span>
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu3">
                                <ul class="link-list">
                                    <li><a class="list-item"
                                           href="${pageContext.request.contextPath}/general/exams?patient=${patient.id()}">Esami</a>
                                    </li>
                                    <li><a class="list-item active"
                                           href="${pageContext.request.contextPath}/general/medicines?patient=${patient.id()}">Farmaci</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="it-header-slim-right-zone">
                        <a href="#" class="btn btn-primary btn-icon btn-full" data-toggle="modal" data-target="#patient">
                            <div class="avatar size-lg">
                                <img src="${patient_avatar}" alt="avatar">
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="patient">
    <div class="modal-dialog modal-dialog-right w-100" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">${patient.name()} ${patient.surname()}</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <svg class="icon">
                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                    </svg>
                </button>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card-wrapper">
                            <div class="card card-img no-after">
                                <div class="img-responsive-wrapper">
                                    <div class="img-responsive">
                                        <figure class="img-wrapper">
                                            <img src="${patient_avatar}" alt="${patient.name()} ${patient.surname()}">
                                        </figure>
                                    </div>
                                </div>
                                <div class="card-body p-0 pt-3">

                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.name()} ${patient.surname()}
                                                </p>
                                                <small class="text-muted">Nome</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.email()}
                                                </p>
                                                <small class="text-muted">Email</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.fc()}
                                                </p>
                                                <small class="text-muted">Codice Fiscale</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.birthday()}
                                                </p>
                                                <small class="text-muted">Nascita</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${birthplace_city.name()}<br>
                                                    ${birthplace_province.name()}<br>
                                                    ${birthplace_region.name()}
                                                </p>
                                                <small class="text-muted">Luogo nativo</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${residence_city.name()}<br>
                                                    ${residence_province.name()}<br>
                                                    ${residence_region.name()}
                                                </p>
                                                <small class="text-muted">Residenza</small>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-3">
    <div class="row">
        <div class="col-12">

            <div id="collapseDiv1-sc1" class="collapse-div collapse-background-active" role="tablist">
                <div class="collapse-header" id="heading1-sc1">
                    <button
                            data-toggle="collapse"
                            data-target="#collapse1-sc1"
                            aria-expanded="false"
                            aria-controls="collapse1-sc1">
                        Prescrivi un farmaco
                    </button>
                </div>
                <div id="collapse1-sc1" class="collapse" role="tabpanel" aria-labelledby="heading1-sc1">
                    <form class="collapse-body d-flex flex-column justify-content-end m-0" method="post"
                          action="${pageContext.request.contextPath}/general/prescribe/medicine">

                        <input type="hidden" name="patient" value="${patient.id()}">

                        <div class="row">

                            <div class="col-12 mt-3">
                                <div id="medicine" class="bootstrap-select-wrapper mt-3">
                                    <label>Farmaco</label>
                                    <select name="medicine"
                                            title="Scegli un farmaco"
                                            data-live-search="true"
                                            data-live-search-placeholder="Cerca faramaco"
                                            required>
                                        <c:forEach items="${options}" var="option">
                                            <option value="${option.id()}">${option.name()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12 mt-3">
                                <label for="quantity" class="input-number-label">Quantità</label>
                                <span class="input-number">
                                    <input type="number" id="quantity" name="quantity" value="1" min="1" max="4" step="1"
                                           required>
                                        <button class="input-number-add"></button>
                                        <button class="input-number-sub"></button>
                                    </span>
                            </div>

                            <div class="col-12 mt-3 text-right">
                                <input type="submit" class="btn btn-primary btn-block" value="Prescrivi">
                            </div>

                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="container mt-3">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive mt-3">
                <table class="table table-striped">

                    <thead>
                    <tr>
                        <th>Prescrizione</th>
                        <th>Farmaco</th>
                        <th class="text-center">Quantità</th>
                        <th class="text-center">QR</th>
                        <th colspan="2" class="text-center">Ticket</th>
                    </tr>
                    </thead>

                    <c:forEach items="${medicines}" var="it">
                        <fmt:parseDate value="${it.date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                        <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="out"/>

                        <tr>
                            <td class="align-middle">${out}</td>
                            <td class="align-middle">${it.medicine().name()}</td>
                            <td class="align-middle text-center">${it.quantity()}</td>
                            <td class="align-middle text-center">
                                <a href="${pageContext.request.contextPath}/qr?size=500&prescription=${it.id()}" target="_blank">
                                    <svg class="icon">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-camera"></use>
                                    </svg>
                                </a>
                            </td>

                            <c:choose>
                                <c:when test="${tickets.containsKey(it.id())}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm"
                                                   var="tmp"/>
                                    <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

                                    <td class="align-middle">${tck}</td>
                                    <td class="align-middle">€${tickets.get(it.id()).amount()}</td>
                                </c:when>

                                <c:otherwise>
                                    <td class="align-middle" colspan="2">
                                        <input type="button" class="btn btn-primary btn-block" value="Incassa" disabled>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>

<div id="medicine-200" class="notification with-icon success dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Farmaco prescritto
    </h5>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="medicine-206" class="notification with-icon warning dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-error"></use>
        </svg>
        Farmaco prescritto
    </h5>
    <p>Farmaco prescritto, ma non è stato possibile notificare il paziente</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="medicine-401" class="notification with-icon error dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Errore
    </h5>
    <p>Non è stato possibile prescrivere il farmaco. Controlla di aver inserito i dati correttamente</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="medicine-500" class="notification with-icon error dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Errore
    </h5>
    <p>Non è stato possibile prescrivere il farmaco</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

</body>
</html>
