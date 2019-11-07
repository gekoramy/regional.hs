<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="person" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="medicines" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.MedicinePrescription>"/>
<jsp:useBean id="tickets" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.MedicineTicket>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>

    <title>Storico farmaci</title>
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
                        <th>Farmaco</th>
                        <th class="text-center">Quantità</th>
                        <th class="text-center">QR</th>
                        <th colspan="2" class="text-center">Ticket</th>
                        <th style="width: 60px">
                            <a href="${pageContext.request.contextPath}/pdf/medicines" download
                               class="text-decoration-none font-weight-bold">
                                PDF
                            </a>
                        </th>
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

                            <td></td>
                        </tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

</div>

<%@include file="../commons/footer.jsp" %>

</body>
</html>
