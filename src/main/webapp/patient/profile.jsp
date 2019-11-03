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
<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/upload"
      enctype="multipart/form-data">
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

<%-- region upload --%>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="upload-200"/>
    <jsp:param name="n_body" value="Avatar aggiornato"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="upload-206"/>
    <jsp:param name="n_body" value="Avatar aggiornato, ma non &egrave; stato possibile notificarti via email"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="upload-401"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile aggiornare l'avatar. Prova con un altro formato"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="upload-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile aggiornare l'avatar. Errore del server"/>
</jsp:include>

<%-- endregion --%>

<%-- region password --%>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="password-200"/>
    <jsp:param name="n_body" value="Password aggiornata"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="password-206"/>
    <jsp:param name="n_body" value="Password aggiornata, ma non &egrave; stato possibile notificarti via email"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="password-401"/>
    <jsp:param name="n_body"
               value="Non &egrave; stato possibile aggiornare la password. Controlla di aver inserito i dati correttamente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="password-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile aggiornare la password. Errore del server"/>
</jsp:include>

<%-- endregion --%>

<%-- region general --%>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="general-200"/>
    <jsp:param name="n_body" value="Medico di base aggiornato"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="general-206"/>
    <jsp:param name="n_body" value="Medico di base aggiornato, ma non &egrave; stato possibile notificarti via email"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="general-401"/>
    <jsp:param name="n_body"
               value="Non &egrave; stato possibile aggiornare il medico di base. Controlla di aver inserito i dati correttamente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="general-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile aggiornare il medico di base. Errore del server"/>
</jsp:include>

<%-- endregion --%>

</body>
</html>
