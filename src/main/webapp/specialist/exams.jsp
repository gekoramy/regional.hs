<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>
<%--@elvariable id="rsp" type="dunder.mifflin.persistence.pojos.Person"--%>

<jsp:useBean scope="request" id="specialist" type="dunder.mifflin.persistence.pojos.Specialist"/>
<jsp:useBean scope="request" id="patient" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean scope="request" id="responsible" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Person>"/>
<jsp:useBean scope="request" id="avatars" type="java.util.Map<java.lang.Long, java.lang.String>"/>

<jsp:useBean scope="request" id="qualified" type="java.util.Set<java.lang.Long>"/>
<jsp:useBean scope="request" id="exams" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean scope="request" id="tickets" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.ExamTicket>"/>
<jsp:useBean scope="request" id="reports" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/header.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Storico</title>
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
                        <a href="${pageContext.request.contextPath}/patient/profile" class="btn btn-primary btn-icon btn-full">
                            <div class="avatar size-lg">
                                <img src="${avatars.get(specialist.id())}" alt="avatar">
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
                        <div class="btn btn-primary btn-icon btn-full">
                            <div class="avatar size-lg">
                                <img src="${avatars.get(patient.id())}" alt="avatar">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">

    <div class="row" style="height: 3%">
    </div>

    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Prescrizione</th>
                <th>Esame</th>
                <th colspan="2" class="text-center">Ticket</th>
                <th>Referto</th>
            </tr>
            </thead>

            <c:forEach items="${exams}" var="it">
                <fmt:parseDate value="${it.date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="out"/>

                <tr>
                    <td class="align-middle text-left">${out}</td>
                    <td class="align-middle text-left">${it.exam().name()}</td>

                    <c:choose>
                        <c:when test="${reports.containsKey(it.id())}">
                            <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm"
                                           var="tmp"/>
                            <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

                            <td class="align-middle text-left">${tck}</td>
                            <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                            <td class="align-middle text-center">
                                <a data-toggle="modal" href="#" data-target="#R${it.id()}">
                                    <svg class="icon">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-note"></use>
                                    </svg>
                                </a>
                            </td>
                        </c:when>

                        <c:when test="${qualified.contains(it.exam().id())}">

                            <c:choose>

                                <c:when test="${tickets.containsKey(it.id()) and tickets.get(it.id()).responsible() eq specialist.id()}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm"
                                                   var="tmp"/>
                                    <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

                                    <td class="align-middle text-left">${tck}</td>
                                    <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                                    <td class="align-middle text-center">
                                        <input type="button" class="btn btn-primary" value="Scrivi" data-toggle="modal"
                                               data-target="#P${it.id()}">
                                    </td>
                                </c:when>

                                <c:when test="${tickets.containsKey(it.id())}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                                    <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

                                    <td class="align-middle text-left">${tck}</td>
                                    <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                                    <td class="align-middle text-center">
                                        <input type="button" class="btn btn-primary" value="Scrivi" disabled>
                                    </td>
                                </c:when>

                                <c:otherwise>
                                    <td class="align-middle text-center" colspan="3">
                                        <input type="button" class="btn btn-primary btn-block" value="Incassa" data-toggle="modal"
                                               data-target="#C${it.id()}">
                                    </td>
                                </c:otherwise>

                            </c:choose>

                        </c:when>

                        <c:otherwise>

                            <c:choose>

                                <c:when test="${tickets.containsKey(it.id())}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                                    <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

                                    <td class="align-middle text-left">${tck}</td>
                                    <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                                    <td class="align-middle text-center">
                                        <input type="button" class="btn btn-primary" value="Scrivi" disabled>
                                    </td>
                                </c:when>

                                <c:otherwise>
                                    <td class="align-middle text-center" colspan="3">
                                        <input type="button" class="btn btn-primary btn-block" value="Incassa" disabled>
                                    </td>
                                </c:otherwise>

                            </c:choose>

                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>

<c:forEach items="${exams}" var="it">

    <c:if test="${not tickets.containsKey(it.id())}">
        <form method="post" action="${pageContext.request.contextPath}/specialist/cash">

            <div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="C${it.id()}">
                <div class="modal-dialog modal-dialog-right w-100" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Ticket ~ ${it.exam().name()}</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                                </svg>
                            </button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="prescription" value="${it.id()}">
                            <input type="hidden" name="patient" value="${patient.id()}">
                            Il prezzo del ticket è di <code>€50.00</code>
                        </div>
                        <div class="modal-footer">
                            <input class="btn btn-primary btn-sm" type="submit" value="Incassa">
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </c:if>

    <c:choose>
        <c:when test="${reports.containsKey(it.id())}">
            <c:set var="rsp" value="${responsible.get(tickets.get(it.id()).responsible())}"/>

            <fmt:parseDate value="${reports.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
            <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="rpt"/>

            <div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="R${it.id()}">
                <div class="modal-dialog modal-dialog-right w-100" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Referto ~ ${it.exam().name()}</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                                </svg>
                            </button>
                        </div>
                        <div class="modal-body">
                            <table>
                                <tr>
                                    <td>${rpt}</td>
                                </tr>
                                <tr>
                                    <td><p style="white-space: pre-wrap">${reports.get(it.id()).note()}</p></td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer justify-content-between">

                            <div class="link-list-wrapper">
                                <ul class="link-list avatar-group" style="margin: 0">
                                    <li>
                                        <div class="list-item">
                                            <div class="avatar size-md">
                                                <img src="${avatars.get(rsp.id())}" alt="${rsp.name()} ${rsp.surname()}">
                                            </div>
                                            <span>${rsp.name()} ${rsp.surname()}</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <button class="btn btn-primary btn-sm" data-dismiss="modal" type="button">Ok</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:when>

        <c:otherwise>
            <form method="post" action="${pageContext.request.contextPath}/specialist/publish">

                <div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="P${it.id()}">
                    <div class="modal-dialog modal-dialog-right w-100" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Report ~ ${it.exam().name()}</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <svg class="icon">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                                    </svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row" style="height: 3%"></div>
                                <input type="hidden" name="prescription" value="${it.id()}">
                                <input type="hidden" name="patient" value="${patient.id()}">
                                <div class="form-group">
                                    <textarea id="PT${it.id()}" rows="10" name="note"></textarea>
                                    <label for="PT${it.id()}">Anamnesi</label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input class="btn btn-primary btn-sm" type="submit" value="Pubblica">
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </c:otherwise>
    </c:choose>
</c:forEach>

<div id="cash-200" class="notification with-icon success dismissable" role="alert">
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

<div id="publish-200" class="notification with-icon success dismissable" role="alert">
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

<div id="cash-206" class="notification with-icon warning dismissable" role="alert">
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

<div id="publish-206" class="notification with-icon warning dismissable" role="alert">
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

<div id="cash-500" class="notification with-icon error dismissable" role="alert">
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

<div id="publish-500" class="notification with-icon error dismissable" role="alert">
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

</body>
</html>
