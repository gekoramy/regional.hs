<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="general" scope="request" type="dunder.mifflin.persistence.pojos.General"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>

<html>
<head>
    <title>Pazienti</title>

    <script src="${pageContext.request.contextPath}/assets/script/strings.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#filter").keyup(function () {
                $.getJSON(
                    "${pageContext.request.contextPath}/api/patients",
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
                                <th>Visit</th>
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
                                    <td><input type="submit" name="patient" title="visita" value="{id}"/></td>
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

<h3>Medico generale</h3>
<a href="${pageContext.request.contextPath}/general/patients">
    <img src="${avatar}" alt="pic" width="40" height="40"/>
</a>

<label>
    Filtro
    <input type="text" id="filter" placeholder="filtro">
</label>

<form method="get" action="${pageContext.request.contextPath}/general/medicines">
    <table id="items"></table>
</form>

</body>
</html>
