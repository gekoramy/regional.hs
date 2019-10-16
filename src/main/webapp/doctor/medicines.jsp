<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="doctor" scope="request" type="dunder.mifflin.persistence.pojos.HsDoctor"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="patient" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="medicines" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.MedicinePrescription>"/>
<jsp:useBean id="tickets" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Ticket>"/>

<html>
<head>
    <title>Storico</title>
</head>

<body>

<h3>Medico Servizio Sanitario</h3>
<a href="${pageContext.request.contextPath}/doctor/people">
    <img src="${avatar}" alt="pic" width="40" height="40"/>
</a>

<table>
    <thead>
    <tr>
        <th>Data di nascita</th>
        <th>Nome</th>
        <th>Cognome</th>
        <th>Codice fiscale</th>
        <th>Email</th>
    </tr>
    </thead>
    <fmt:parseDate value="${patient.birthday()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
    <fmt:formatDate value="${tmp}" type="date" pattern="yyyy/MM/dd" var="out"/>
    <tr>
        <td>${out}</td>
        <td>${patient.name()}</td>
        <td>${patient.surname()}</td>
        <td>${patient.fc()}</td>
        <td>${patient.email()}</td>
    </tr>
</table>

<form method="get" action="${pageContext.request.contextPath}/doctor/exams">
    <input type="submit" name="patient" value="${patient.id()}"/>
</form>

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
