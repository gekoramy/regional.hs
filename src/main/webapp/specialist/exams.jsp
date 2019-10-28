<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean id="specialist" scope="request" type="dunder.mifflin.persistence.pojos.Specialist"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="patient" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean id="qualified" scope="request" type="java.util.Set<java.lang.Long>"/>
<jsp:useBean id="tickets" scope="request"
             type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.ExamTicket>"/>
<jsp:useBean id="reports" scope="request"
             type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/header.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Storico</title>
</head>

<body>

<div id="cash-200" class="notification top-fix with-icon success dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Incassato
    </h5>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="publish-200" class="notification top-fix with-icon success dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Pubblicato
    </h5>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="cash-206" class="notification top-fix with-icon warning dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-error"></use>
        </svg>
        Incassato
    </h5>
    <p>Incassato, ma non è stato possibile notificare il paziente</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="publish-206" class="notification top-fix with-icon warning dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-error"></use>
        </svg>
        Pubblicato
    </h5>
    <p>Pubblicato, ma non è stato possibile notificare il paziente</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="cash-500" class="notification top-fix with-icon error dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Errore
    </h5>
    <p>Non è stato possibile incassare</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="publish-500" class="notification top-fix with-icon error dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Errore
    </h5>
    <p>Non è stato possibile pubblicare l'anamnesi</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

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
                                <span>Specialista</span>
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu2">
                                <ul class="link-list">
                                    <li><a class="list-item active"
                                           href="${pageContext.request.contextPath}/specialist/people">Visita</a></li>
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
                        <a href="${pageContext.request.contextPath}/patient/profile"
                           class="btn btn-primary btn-icon btn-full">
                            <div class="avatar size-lg">
                                <img src="${avatar}" alt="avatar">
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
                                    <li><a class="list-item active"
                                           href="${pageContext.request.contextPath}/specialist/exams?patient=${patient.id()}">Esami</a>
                                    </li>
                                    <li><a class="list-item"
                                           href="${pageContext.request.contextPath}/specialist/medicines?patient=${patient.id()}">Farmaci</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="it-header-slim-right-zone">
                        <a href="${pageContext.request.contextPath}/patient/profile"
                           class="btn btn-primary btn-icon btn-full">
                            <div class="avatar size-lg">
                                <img src="${avatar}" alt="avatar">
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12 col-lg-12">
        <div class="card-wrapper">
            <div class="card">
                <div class="card-body">
                    <div class="categoryicon-top">
                        <svg class="icon">
                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-file"></use>
                        </svg>
                        <span class="text">Info<br>Paziente</span>
                    </div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Data di nascita</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Cognome</th>
                            <th scope="col">Codice fiscale</th>
                            <th scope="col">Email</th>
                        </tr>
                        </thead>
                        <fmt:parseDate value="${patient.birthday()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
                        <fmt:formatDate value="${tmp}" type="date" pattern="yyyy/MM/dd" var="out"/>
                        <tbody>
                        <tr>
                            <td>${out}</td>
                            <td>${patient.name()}</td>
                            <td>${patient.surname()}</td>
                            <td>${patient.fc()}</td>
                            <td>${patient.email()}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">

        <c:forEach items="${exams}" var="it">
            <fmt:parseDate value="${it.date()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
            <fmt:formatDate value="${tmp}" type="date" pattern="yyyy/MM/dd" var="out"/>

            <div class="col-12 col-lg-6 col-md-6">
                <div class="card-wrapper card-space">
                    <div class="card card-bg card-big no-after">
                        <div class="card-body">
                            <div class="head-tags">
                                <span class="data">
                                    <p class="font-weight-bold">${out}</p>
                                </span>
                            </div>
                            <h5 class="card-title">${it.exam().name()}</h5>
                            <br>
                            <p class="font-weight-bold">Ricevuta: </p>${tickets.get(it.id())}<br>
                            <p class="font-weight-bold">Risultati: </p>${reports.get(it.id())}<br>

                            <c:if test="${qualified.contains(it.exam().id())}">
                                <c:choose>
                                    <c:when test="${reports.containsKey(it.id())}">
                                        ?
                                    </c:when>

                                    <c:when test="${not tickets.containsKey(it.id())}">

                                        <div class="it-card-footer">
                                            <form method="post"
                                                  action="${pageContext.request.contextPath}/specialist/cash">
                                                <input type="hidden" name="prescription" value="${it.id()}">
                                                <input type="hidden" name="patient" value="${patient.id()}">
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-outline-primary btn-sm"
                                                            value="incassa">Incassa
                                                    </button>
                                                </div>
                                            </form>
                                        </div>

                                    </c:when>

                                    <c:when test="${tickets.get(it.id()).responsible().equals(specialist.id())}">

                                        <div class="it-card-footer">
                                            <form method="post"
                                                  action="${pageContext.request.contextPath}/specialist/publish">
                                                <div class="form-group">
                                                    <input type="hidden" name="prescription" value="${it.id()}">
                                                    <input type="hidden" name="patient" value="${patient.id()}">
                                                    <label for="noteid">Amnesi</label>
                                                    <textarea type="text" name="note" minlength="1" class="form-control"
                                                              id="noteid"></textarea>
                                                </div>
                                                <button type="submit" class="btn btn-outline-primary btn-sm"
                                                        value="pubblica">Pubblica
                                                </button>
                                            </form>
                                        </div>

                                    </c:when>

                                </c:choose>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>

<%--<table>
    <thead>
    <tr>
        <th>Data Prescrizione</th>
        <th>Nome</th>
        <th>Ricevuta</th>
        <th>Risultati</th>
        <th>Incassa</th>
        <th>Prescrivi</th>
    </tr>
    </thead>
    <c:forEach items="${exams}" var="it">
        <fmt:parseDate value="${it.date()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
        <fmt:formatDate value="${tmp}" type="date" pattern="yyyy/MM/dd" var="out"/>
        <tr>
            <td>${out}</td>
            <td>${it.exam().name()}</td>
            <td>${tickets.get(it.id())}</td>
            <td>${reports.get(it.id())}</td>
            <c:if test="${qualified.contains(it.exam().id())}">
                <c:choose>
                    <c:when test="${reports.containsKey(it.id())}">
                        <td></td>
                        <td></td>
                    </c:when>

                    <c:when test="${not tickets.containsKey(it.id())}">
                        <td>
                            <form method="post" action="${pageContext.request.contextPath}/specialist/cash">
                                <label>
                                    <input type="hidden" name="prescription" value="${it.id()}">
                                    <input type="hidden" name="patient" value="${patient.id()}">
                                    <input type="submit" value="incassa">
                                </label>
                            </form>
                        </td>
                        <td></td>
                    </c:when>

                    <c:when test="${tickets.get(it.id()).responsible().equals(specialist.id())}">
                        <td></td>
                        <td>
                            <form method="post" action="${pageContext.request.contextPath}/specialist/publish">
                                <label>
                                    Anamnesi
                                    <input type="hidden" name="prescription" value="${it.id()}">
                                    <input type="hidden" name="patient" value="${patient.id()}">
                                    <input type="text" name="note" minlength="50">
                                    <input type="submit" value="pubblica">
                                </label>
                            </form>
                        </td>
                    </c:when>
                </c:choose>
            </c:if>
        </tr>
    </c:forEach>
</table>--%>

</body>
</html>
