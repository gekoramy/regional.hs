<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>
<%--@elvariable id="rsp" type="dunder.mifflin.persistence.pojos.Person"--%>

<jsp:useBean scope="request" id="general" type="dunder.mifflin.persistence.pojos.General"/>
<jsp:useBean scope="request" id="patient" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean scope="request" id="responsible" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Person>"/>

<jsp:useBean scope="request" id="avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="patient_avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="avatars" type="java.util.Map<java.lang.Long,java.lang.String>"/>

<jsp:useBean scope="request" id="birthplace_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="birthplace_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="birthplace_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="residence_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="residence_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="residence_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="exams" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean scope="request" id="reports" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>
<jsp:useBean scope="request" id="tickets" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.ExamTicket>"/>

<jsp:useBean scope="request" id="options" type="java.util.List<dunder.mifflin.persistence.pojos.Examination>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Storico esami</title>
</head>

<body>

<%@include file="partial/header.jsp"%>

<%@include file="partial/patient.jsp"%>

<div class="container">

    <div class="row mt-3">
        <div class="col-12">
            <div id="collapseDiv1-sc1" class="collapse-div collapse-background-active" role="tablist">
                <div class="collapse-header" id="heading1-sc1">
                    <button
                            data-toggle="collapse"
                            data-target="#collapse1-sc1"
                            aria-expanded="false"
                            aria-controls="collapse1-sc1">
                        Prescrivi un esame
                    </button>
                </div>
                <div id="collapse1-sc1" class="collapse" role="tabpanel" aria-labelledby="heading1-sc1">
                    <form accept-charset="UTF-8" class="collapse-body d-flex flex-column justify-content-end m-0" method="post"
                          action="${pageContext.request.contextPath}/general/prescribe/exam">

                        <input type="hidden" name="patient" value="${patient.id()}">

                        <div class="row">

                            <div class="col-12 mt-3">
                                <div id="medicine" class="bootstrap-select-wrapper mt-3">
                                    <label>Esame</label>
                                    <select name="exam"
                                            title="Scegli un esame"
                                            data-live-search="true"
                                            data-live-search-placeholder="Cerca esame"
                                            required>
                                        <c:forEach items="${options}" var="option">
                                            <option value="${option.id()}">${option.name()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
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

<div class="container">

    <div class="row mt-3">
        <div class="col-12">
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

                                <c:when test="${tickets.containsKey(it.id())}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm"
                                                   var="tmp"/>
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
                        </tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

</div>

<c:forEach items="${exams}" var="it">
    <c:if test="${reports.containsKey(it.id())}">
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
    </c:if>
</c:forEach>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="exam-200"/>
    <jsp:param name="n_body" value="Esame prescritto"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="exam-206"/>
    <jsp:param name="n_body" value="Esame prescritto, ma non &egrave; stato possibile notificare il paziente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="exam-401"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile prescrivere l'esame. Controlla di aver inserito i dati correttamente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="exam-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile prescrivere l'esame. Errore del server"/>
</jsp:include>

</body>
</html>
