<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="doctor" scope="request" type="dunder.mifflin.persistence.pojos.HsDoctor"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="patient" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean id="qualified" scope="request" type="java.util.Set<java.lang.Long>"/>
<jsp:useBean id="tickets" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Ticket>"/>
<jsp:useBean id="reports" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

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

<form method="get" action="${pageContext.request.contextPath}/doctor/medicines">
    <input type="submit" name="patient" value="${patient.id()}"/>
</form>

<table>
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
                <td>
                    <c:if test="${not tickets.containsKey(it.id())}">
                        <form method="post" action="${pageContext.request.contextPath}/doctor/cash">
                            <label>
                                <input type="hidden" name="prescription" value="${it.id()}">
                                <input type="hidden" name="patient" value="${patient.id()}">
                                <input type="submit" value="incassa">
                            </label>
                        </form>
                    </c:if>
                </td>
                <td>
                    <c:if test="${not reports.containsKey(it.id())}">
                        <form method="post" action="${pageContext.request.contextPath}/doctor/publish">
                            <label>
                                Anamnesi
                                <input type="hidden" name="prescription" value="${it.id()}">
                                <input type="hidden" name="patient" value="${patient.id()}">
                                <input type="text" name="note" minlength="50">
                                <input type="submit" value="pubblica">
                            </label>
                        </form>
                    </c:if>
                </td>
            </c:if>
        </tr>
    </c:forEach>
</table>

</body>
</html>
