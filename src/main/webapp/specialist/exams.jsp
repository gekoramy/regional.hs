<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="specialist" scope="request" type="dunder.mifflin.persistance.pojos.Specialist"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="patient" scope="request" type="dunder.mifflin.persistance.pojos.Person"/>
<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistance.pojos.ExamPrescription>"/>
<jsp:useBean id="qualified" scope="request" type="java.util.Set<dunder.mifflin.persistance.pojos.SpExam>"/>
<jsp:useBean id="tickets" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistance.pojos.Ticket>"/>
<jsp:useBean id="reports" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistance.pojos.Report>"/>

<html>
<head>
    <title>Storico</title>
</head>

<body>

<h3>Specialista</h3>
<a href="${pageContext.request.contextPath}/specialist/people">
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

<form method="get" action="${pageContext.request.contextPath}/specialist/medicines">
    <input type="submit" name="patient" value="${patient.id()}"/>
</form>

<table>
    <thead>
    <tr>
        <th>Data Prescrizione</th>
        <th>Nome</th>
        <th>Ricevuta</th>
        <th>Risultati</th>
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
            <td>
                <c:if test="${not reports.containsKey(it.id())}">
                    <form method="post" action="${pageContext.request.contextPath}/specialist/publish">
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
        </tr>
    </c:forEach>
</table>

</body>
</html>
