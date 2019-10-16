<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="person" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>
<jsp:useBean id="residence" scope="request" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean id="general" scope="request" type="dunder.mifflin.persistence.pojos.General"/>

<html>
<head>
    <title>Profilo</title>

    <script src="${pageContext.request.contextPath}/assets/script/strings.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
<h3>Paziente</h3>
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
<form method="post" action="${pageContext.request.contextPath}/patient/upload" enctype="multipart/form-data">
    <input type="file" name="avatar" accept="jpg">
    <input type="submit" value="upload">
</form>
<br/>
<form method="post" action="${pageContext.request.contextPath}/patient/password">
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
<form method="post" action="${pageContext.request.contextPath}/patient/general">
    <h3>general</h3>
    <label>
        Filtro
        <input type="text" id="filter" placeholder="filtro">
    </label>
    <table id="items"></table>
</form>

</body>
</html>
