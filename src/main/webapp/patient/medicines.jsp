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

    <title>Dashboard</title>
</head>

<body>

<%@ include file="../commons/header.jsp" %>

<table>
    <thead>
    <tr>
        <th>Data Prescrizione</th>
        <th>Nome</th>
        <th>Quantita</th>
        <th>Ricevuta</th>
        <th>QR code</th>
    </tr>
    </thead>
    <c:forEach items="${medicines}" var="it">
        <tr>
            <fmt:parseDate value="${it.date()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
            <fmt:formatDate value="${tmp}" type="date" pattern="yyyy/MM/dd" var="out"/>
            <td>${out}</td>
            <td>${it.medicine().name()}</td>
            <td>${it.quantity()}</td>
            <td>${tickets.get(it.id())}</td>
            <td><a href="${pageContext.request.contextPath}/qr?size=500&prescription=${it.id()}" target="_blank">qr</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
