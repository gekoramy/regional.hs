<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="person" scope="request" type="dunder.mifflin.persistance.pojos.Person"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistance.pojos.ExamPrescription>"/>

<html>
<head>
    <title>Dashboard</title>
</head>

<body>

<h3>Paziente</h3>
<a href="${pageContext.request.contextPath}/patient/profile">
    <img src="${avatar}"  alt="pic" width="40" height="40"/>
</a>

<a href="${pageContext.request.contextPath}/patient/medicines">farmaci</a>

<table>
    <thead>
    <tr>
        <th>Data Prescrizione</th>
        <th>Nome</th>
        <th>Ricevuta</th>
        <th>QR code</th>
    </tr>
    </thead>
    <c:forEach items="${exams}" var="it">
        <fmt:parseDate value="${it.date()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
        <fmt:formatDate value="${tmp}" type="date" pattern="yyyy/MM/dd" var="out"/>
        <tr>
            <td>${out}</td>
            <td>${it.exam().name()}</td>
            <td>x</td>
            <td>y</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
