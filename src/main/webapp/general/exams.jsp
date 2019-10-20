<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean id="general" scope="request" type="dunder.mifflin.persistence.pojos.General"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="patient" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean id="tickets" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Ticket>"/>
<jsp:useBean id="reports" scope="request" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

<html>
<head>
    <title>Storico</title>

    <script src="${pageContext.request.contextPath}/assets/script/strings.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#filter").keyup(function () {
                $.getJSON(
                    "${pageContext.request.contextPath}/api/exams",
                    {
                        pattern: $("#filter").val()
                    },
                    function (result) {
                        $("#items")
                            .empty()
                            .append(
                                `
                                <input type="hidden" name="patient" value="${patient.id()}">
                                `
                            );

                        $.each(result, function (i, it) {
                            $("#items")
                                .append(
                                    `
                                    <div>
                                    <label>
                                        {name}
                                        <input type="submit" name="exam" value="{id}">
                                    </label>
                                    </div>
                                    `.formatUnicorn(it)
                                );
                        });
                    });
            });
        });
    </script>
</head>

<body>

<c:if test="${not empty result}">
    <div>
        <c:choose>
            <c:when test="${result.action().equals('/general/prescribe/exam')}">
                <c:choose>
                    <c:when test="${200 == result.code()}">
                        Esame prescritto
                    </c:when>

                    <c:when test="${206 == result.code()}">
                        Esame prescritto, ma non è stato possibile notificare il paziente
                    </c:when>

                    <c:otherwise>
                        Non è stato possibile prescrivere l'esame
                    </c:otherwise>
                </c:choose>
            </c:when>
        </c:choose>
    </div>
</c:if>

<h3>Medico generale</h3>
<a href="${pageContext.request.contextPath}/general/patients">
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

<form method="get" action="${pageContext.request.contextPath}/general/medicines">
    <input type="submit" name="patient" value="${patient.id()}"/>
</form>

<label>
    Filtra
    <input type="text" id="filter" placeholder="esame">
</label>
<form method="post" action="${pageContext.request.contextPath}/general/prescribe/exam" id="items"></form>

<table>
    <thead>
    <tr>
        <th>Data Prescrizione</th>
        <th>Nome</th>
        <th>Ricevuta</th>
        <th>Risultati</th>
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
        </tr>
    </c:forEach>
</table>

</body>
</html>
