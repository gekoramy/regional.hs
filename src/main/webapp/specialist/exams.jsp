<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean id="specialist" scope="request" type="dunder.mifflin.persistence.pojos.Specialist"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="patient" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="exams" scope="request" type="java.util.List<dunder.mifflin.persistence.pojos.ExamPrescription>"/>
<jsp:useBean id="qualified" scope="request" type="java.util.Set<java.lang.Long>"/>
<jsp:useBean id="tickets" scope="request"
             type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.ExamTicket>"/>
<jsp:useBean id="reports" scope="request"
             type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.Report>"/>

<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = '../assets/bootstrap-italia/fonts'</script>

    <script src="../assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

    <title>Storico</title>
    <c:if test="${not empty result}">
        <div>
            <c:choose>
                <c:when test="${200 == result.code()}">
                    <c:choose>
                        <c:when test="${result.action().equals('/specialist/cash')}">
                            <script>
                                $(document).ready(function () {
                                    notificationShow('token-200-in');
                                });
                            </script>
                        </c:when>

                        <c:when test="${result.action().equals('/specialist/publish')}">
                            <script>
                                $(document).ready(function () {
                                    notificationShow('token-200-pu');
                                });
                            </script>
                        </c:when>
                    </c:choose>
                </c:when>

                <c:when test="${206 == result.code()}">
                    <c:choose>
                        <c:when test="${result.action().equals('/specialist/cash')}">
                            <script>
                                $(document).ready(function () {
                                    notificationShow('token-206-in');
                                });
                            </script>
                        </c:when>

                        <c:when test="${result.action().equals('/specialist/publish')}">
                            <script>
                                $(document).ready(function () {
                                    notificationShow('token-206-pu');
                                });
                            </script>
                        </c:when>
                    </c:choose>
                </c:when>

                <c:otherwise>
                    <c:choose>
                        <c:when test="${result.action().equals('/specialist/cash')}">
                            <script>
                                $(document).ready(function () {
                                    notificationShow('token-500-in');
                                });
                            </script>
                        </c:when>

                        <c:when test="${result.action().equals('/specialist/publish')}">
                            <script>
                                $(document).ready(function () {
                                    notificationShow('token-500-pu');
                                });
                            </script>
                        </c:when>
                    </c:choose>
                </c:otherwise>
            </c:choose>
        </div>
    </c:if>
</head>

<body>

<div class="notification top-fix with-icon success" role="alert" aria-labelledby="token-200-title"
     id="token-200-in">
    <h5 id="token-200-title-in">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Incassato
    </h5>
</div>

<div class="notification top-fix with-icon success" role="alert" aria-labelledby="token-200-title"
     id="token-200-pu">
    <h5 id="token-200-title-pu">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Pubblicato
    </h5>
</div>

<div class="notification top-fix with-icon warning" role="alert" aria-labelledby="token-200-title"
     id="token-206-in">
    <h5 id="token-206-title-in">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Incassato, ma non è stato possibile notificare il paziente
    </h5>
</div>

<div class="notification top-fix with-icon warning" role="alert" aria-labelledby="token-200-title"
     id="token-206-pu">
    <h5 id="token-206-title-pu">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Pubblicato, ma non è stato possibile notificare il paziente
    </h5>
</div>

<div class="notification top-fix with-icon error" role="alert" aria-labelledby="token-500-title"
     id="token-500-in">
    <h5 id="token-500-title-in">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Non è stato possibile incassare
    </h5>
</div>

<div class="notification top-fix with-icon error" role="alert" aria-labelledby="token-500-title"
     id="token-500-pu">
    <h5 id="token-500-title-pu">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Non è stato possibile pubblicare l'anamnesi
    </h5>
</div>

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
                <c:choose>
                    <c:when test="${reports.containsKey(it.id())}">
                        <td></td>
                        <td></td>
                    </c:when>

                    <c:when test="${not tickets.containsKey(it.id())}">
                        <td>
                            <form method="post" action="${pageContext.request.contextPath}/specialist/cash">
                                <label>
                                    <input type="hidden" name="prescription" value="${it.id()}">
                                    <input type="hidden" name="patient" value="${patient.id()}">
                                    <input type="submit" value="incassa">
                                </label>
                            </form>
                        </td>
                        <td></td>
                    </c:when>

                    <c:when test="${tickets.get(it.id()).responsible().equals(specialist.id())}">
                        <td></td>
                        <td>
                            <form method="post" action="${pageContext.request.contextPath}/specialist/publish">
                                <label>
                                    Anamnesi
                                    <input type="hidden" name="prescription" value="${it.id()}">
                                    <input type="hidden" name="patient" value="${patient.id()}">
                                    <input type="text" name="note" minlength="50">
                                    <input type="submit" value="pubblica">
                                </label>
                            </form>
                        </td>
                    </c:when>
                </c:choose>
            </c:if>
        </tr>
    </c:forEach>
</table>

</body>
</html>
