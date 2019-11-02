<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean id="person" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="residence" scope="request" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean id="general" scope="request" type="dunder.mifflin.persistence.pojos.General"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Profilo</title>

    <script>
        $(document).ready(function () {
            $("#filter").keyup(function () {
                $.getJSON(
                    "${pageContext.request.contextPath}/api/suitable",
                    {
                        name: $("#filter").val()
                    },
                    function (result) {
                        $("#items")
                            .empty()
                            .append(
                                `
                                <thead>
                                <tr>
                                <th>Data di nascita</th>
                                <th>Avatar</th>
                                <th>Nome</th>
                                <th>Cognome</th>
                                <th>Codice fiscale</th>
                                <th>Email</th>
                                <th>Choose</th>
                                </tr>
                                </thead>
                                `
                            );

                        $.each(result, function (i, it) {
                            $("#items")
                                .append(
                                    `
                                    <tr>
                                    <td>{birthday}</td>
                                    <td><img src="{avatar}" alt="pic" width="40" height="40"/></td>
                                    <td>{name}</td>
                                    <td>{surname}</td>
                                    <td>{fc}</td>
                                    <td>{email}</td>
                                    <td><input type="submit" name="purpose" value="{id}"/></td>
                                    </tr>
                                    `.formatUnicorn(it)
                                );
                        });
                    });
            });
        });
    </script>
</head>

<body>

<%@ include file="../commons/header.jsp" %>

<c:if test="${not empty result}">
    <div>
        <c:choose>
            <c:when test="${200 == result.code()}">
                <c:choose>
                    <c:when test="${result.action().equals('/patient/upload')}">
                        Avatar aggiornato
                    </c:when>
                    <c:when test="${result.action().equals('/patient/password')}">
                        Password aggiornata
                    </c:when>
                    <c:when test="${result.action().equals('/patient/general')}">
                        Medico generale aggiornato
                    </c:when>
                </c:choose>
            </c:when>

            <c:when test="${206 == result.code()}">
                <c:choose>
                    <c:when test="${result.action().equals('/patient/upload')}">
                        Avatar aggiornato, ma non è stato possibile notificarti via mail
                    </c:when>
                    <c:when test="${result.action().equals('/patient/password')}">
                        Password aggiornata, ma non è stato possibile notificarti via mail
                    </c:when>
                    <c:when test="${result.action().equals('/patient/general')}">
                        Medico generale aggiornato, ma non è stato possibile notificarti via mail
                    </c:when>
                </c:choose>
            </c:when>

            <c:otherwise>
                <c:choose>
                    <c:when test="${result.action().equals('/patient/upload')}">
                        Non è stato possibile aggiornare l'avatar...
                    </c:when>
                    <c:when test="${result.action().equals('/patient/password')}">
                        Non è stato possibile aggiornare la password...
                    </c:when>
                    <c:when test="${result.action().equals('/patient/general')}">
                        Non è stato possibile modificare il medico generale...
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </div>
</c:if>

<img src="${avatar}" alt="pic" width="160" height="160"/>

<br/> ${person.name()}
<br/> ${person.surname()}
<br/> ${person.fc()}
<br/> ${person.gender()}
<br/> ${person.email()}
<br/> ${person.birthday()}
<br/> ${person.birthplace()}
<br/> ${residence.name()}
<br/> ${general.name()}
<br/> ${general.surname()}
<br/>
<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/upload" enctype="multipart/form-data">
    <input type="file" name="avatar" accept="jpg">
    <input type="submit" value="upload">
</form>
<br/>
<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/password">
    <label>
        current
        <input type="password" name="current">
    </label>
    <label>
        new
        <input type="password" name="request">
    </label>
    <label>
        check
        <input type="password">
    </label>
    <input type="submit" value="change">
</form>
<br/>
<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/general">
    <h3>general</h3>
    <label>
        Filtro
        <input type="text" id="filter" placeholder="filtro">
    </label>
    <table id="items"></table>
</form>

</body>
</html>
