<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="qualification" type="dunder.mifflin.utils.Qualification"--%>
<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>
<%--@elvariable id="rsp" type="dunder.mifflin.persistence.pojos.Person"--%>

<jsp:useBean scope="request" id="doctor" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean scope="request" id="patient" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean scope="request" id="responsible" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Person>"/>

<jsp:useBean scope="request" id="avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="patient_avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="avatars" type="java.util.Map<java.lang.Long, java.lang.String>"/>

<jsp:useBean scope="request" id="birthplace_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="birthplace_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="birthplace_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="residence_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="residence_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="residence_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="qualified" type="java.util.Set<java.lang.Long>"/>
<jsp:useBean scope="request" id="exams" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean scope="request" id="tickets" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.ExamTicket>"/>
<jsp:useBean scope="request" id="reports" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Storico esami</title>

    <script>
        $(document).ready(() => $('[data-toggle="popover"]').popover('enable'))
    </script>
</head>

<body>

<%@include file="../commons/header.jsp" %>

<%@include file="partial/patient.jsp" %>

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

                                <c:when test="${qualified.contains(it.exam().id())}">

                                    <c:choose>

                                        <c:when test="${tickets.containsKey(it.id()) and tickets.get(it.id()).responsible() eq doctor.id()}">
                                            <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both"
                                                           pattern="yyyy-MM-dd'T'HH:mm"
                                                           var="tmp"/>
                                            <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short"
                                                            var="tck"/>

                                            <td class="align-middle text-left">${tck}</td>
                                            <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                                            <td class="align-middle text-center">
                                                <input type="button" class="btn btn-primary" value="Scrivi" data-toggle="modal"
                                                       data-target="#P${it.id()}">
                                            </td>
                                        </c:when>

                                        <c:when test="${tickets.containsKey(it.id())}">
                                            <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both"
                                                           pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                                            <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short"
                                                            var="tck"/>

                                            <td class="align-middle text-left">${tck}</td>
                                            <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                                            <td class="align-middle text-center">
                                                <span class="w-100 d-inline-block"
                                                      data-container="body"
                                                      data-toggle="popover"
                                                      data-trigger="hover"
                                                      data-placement="top"
                                                      data-content="Il medico responsabile deve ancora pubblicare il referto">
                                                    <input type="button" class="btn btn-primary btn-block" value="Scrivi" disabled
                                                           style="pointer-events: none;">
                                                </span>
                                            </td>
                                        </c:when>

                                        <c:otherwise>
                                            <td class="align-middle text-center" colspan="3">
                                                <input type="button" class="btn btn-primary btn-block" value="Incassa"
                                                       data-toggle="modal"
                                                       data-target="#C${it.id()}">
                                            </td>
                                        </c:otherwise>

                                    </c:choose>

                                </c:when>

                                <c:otherwise>

                                    <c:choose>

                                        <c:when test="${tickets.containsKey(it.id())}">
                                            <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both"
                                                           pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                                            <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short"
                                                            var="tck"/>

                                            <td class="align-middle text-left">${tck}</td>
                                            <td class="align-middle text-left">€${tickets.get(it.id()).amount()}</td>
                                            <td class="align-middle text-center">
                                                <span class="w-100 d-inline-block"
                                                      data-container="body"
                                                      data-toggle="popover"
                                                      data-trigger="hover"
                                                      data-placement="top"
                                                      data-content="Il medico responsabile deve ancora pubblicare il referto">
                                                    <input type="button" class="btn btn-primary btn-block" value="Scrivi" disabled
                                                           style="pointer-events: none;">
                                                </span>
                                            </td>
                                        </c:when>

                                        <c:otherwise>
                                            <td class="align-middle text-center" colspan="3">
                                                <span class="w-100 d-inline-block"
                                                      data-container="body"
                                                      data-toggle="popover"
                                                      data-trigger="hover"
                                                      data-placement="top"
                                                      data-content="Non sei qualificato a svolgere questo esame">
                                                    <input type="button" class="btn btn-primary btn-block" value="Incassa" disabled
                                                           style="pointer-events: none;">
                                                </span>
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
    </div>

</div>

<c:forEach items="${exams}" var="it">

    <c:if test="${not tickets.containsKey(it.id())}">
        <form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/doctor/cash">

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
                            Il prezzo del ticket è di
                            <code>
                                <c:choose>
                                    <c:when test="${qualification eq Qualification.HS_DOCTOR}">
                                        €11.00
                                    </c:when>

                                    <c:when test="${qualification eq Qualification.SPECIALIST}">
                                        €50.00
                                    </c:when>
                                </c:choose>
                            </code>
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
            <form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/doctor/publish">

                <div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="P${it.id()}">
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
                                <div class="row" style="height: 3%"></div>
                                <input type="hidden" name="prescription" value="${it.id()}">
                                <input type="hidden" name="patient" value="${patient.id()}">
                                <div class="form-group">
                                    <textarea id="PT${it.id()}" rows="10" name="note" placeholder="Anamnesi"></textarea>
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

<%@include file="../commons/footer.jsp" %>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="cash-200"/>
    <jsp:param name="n_body" value="Ticket incassato"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="cash-206"/>
    <jsp:param name="n_body" value="Ticket incassato, ma non &egrave; stato possibile notificare il paziente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="cash-401"/>
    <jsp:param name="n_body"
               value="Non &egrave; stato possibile incassare il ticket. Controlla di aver inserito i dati correttamente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="cash-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile incassare il ticket. Errore del server"/>
</jsp:include>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="publish-200"/>
    <jsp:param name="n_body" value="Referto pubblicato"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="publish-206"/>
    <jsp:param name="n_body" value="Referto pubblicato, ma non &egrave; stato possibile notificare il paziente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="publish-401"/>
    <jsp:param name="n_body"
               value="Non &egrave; stato possibile pubblicare il referto. Controlla di aver inserito i dati correttamente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="publish-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile pubblicare il referto. Errore del server"/>
</jsp:include>

</body>
</html>
