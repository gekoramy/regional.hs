<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="rsp" type="dunder.mifflin.persistence.pojos.Person"--%>

<jsp:useBean scope="request" id="person" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean scope="request" id="responsible" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Person>"/>

<jsp:useBean scope="request" id="avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="avatars" type="java.util.Map<java.lang.Long,java.lang.String>"/>

<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean id="tickets" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.ExamTicket>"/>
<jsp:useBean id="reports" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>

    <title>Storico esami</title>

    <script>
        $(document).ready(() => $('[data-toggle="popover"]').popover('enable'))
    </script>
</head>

<body>

<%@ include file="../commons/header.jsp" %>

<div class="container">

    <div class="row mt-3">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Prescrizione</th>
                        <th>Esame</th>
                        <th colspan="2" class="text-center">
                            Ticket
                        </th>
                        <th>Referto</th>
                        <th style="width: 60px">
                            <a href="${pageContext.request.contextPath}/pdf/exams" download
                               class="text-decoration-none font-weight-bold">
                                PDF
                            </a>
                        </th>
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
                                    <td></td>
                                </c:when>

                                <c:when test="${tickets.containsKey(it.id())}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm"
                                                   var="tmp"/>
                                    <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

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
                                    <td></td>
                                </c:when>

                                <c:otherwise>
                                    <td class="align-middle text-center" colspan="3">
                                        <span class="w-100 d-inline-block"
                                              data-container="body"
                                              data-toggle="popover"
                                              data-trigger="hover"
                                              data-placement="top"
                                              data-content="Per trovare medici qualificati a svolgere questo esame visita la sezione - info esami">
                                            <input type="button" class="btn btn-primary btn-block" value="Incassa" disabled
                                                 style="pointer-events: none;">
                                        </span>
                                    </td>
                                    <td></td>
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

<%@include file="../commons/footer.jsp" %>

</body>
</html>
