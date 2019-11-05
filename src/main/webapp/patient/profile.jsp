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

    <style>
        .size-nice {
            width: 80px;
            height: 80px;
        }

        .avatar.size-nice .icon {
            height: 40px;
            width: 40px
        }

        @media (min-width: 576px) {
            .size-nice {
                width: 128px;
                height: 128px;
            }

            .avatar.size-nice .icon {
                height: 62px;
                width: 62px
            }
        }
    </style>

</head>

<body>

<%@ include file="../commons/header.jsp" %>

<div class="container" style="margin-top: 50px;">

    <!--Informazioni e immagine profilo-->
    <div class="row px-3 px-md-0 justify-content-around">
        <div class="col-lg-10 ">
            <div class="row">
                <div class="col-4 col-md-3">
                    <div class="avatar size-nice mb-3">
                        <img src="${avatar}" alt="${person.name()} ${person.surname()}">
                    </div>
                </div>
                <div class="col-8 col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Nome</small></p>
                            <p>${person.name()} ${person.surname()}</p>
                            <p class="text-muted mb-0"><small>Codice fiscale</small></p>
                            <p>${person.fc()}</p>
                            <p class="text-muted mb-0"><small>Sesso</small></p>
                            <p>${person.gender()? "Maschio" : "Femmina"}</p>
                            <p class="text-muted mb-0"><small>Email</small></p>
                            <p>${person.email()}</p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Data di nascita</small></p>
                            <p>${person.birthday()}</p>
                            <p class="text-muted mb-0"><small>Provincia</small></p>
                            <p>${residence.name()}</p>
                            <p class="text-muted mb-0"><small>Luogo di nascita</small></p>
                            <p>${person.birthplace()}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 align-self-end">
            <button type="button" class="btn btn-primary btn-lg btn-block">Modifica</button>
        </div>
    </div>

    <hr class="my-5">

    <!--Medico di base-->

    <div class="row px-3 px-md-0 justify-content-around">
        <div class="col-lg-10">
            <div class="row">
                <div class="col-4 col-md-3">
                    <div class="avatar size-nice mb-3">
                        <img src="${avatar}" alt="${general.name()} ${general.surname()}">
                    </div>
                </div>
                <div class="col-8 col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Medico di base</small></p>
                            <p>${general.name()} ${general.surname()}</p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Email</small></p>
                            <p>${general.email()}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 align-self-end">
            <button type="button" class="btn btn-primary btn-lg btn-block">Modifica</button>
        </div>
    </div>

    <hr class="my-5">

    <!--Modifica Password-->

    <div class="row px-3 px-md-0 justify-content-around">
        <div class="col-lg-10">
            <div class="row ">
                <div class="col-4 col-md-3">
                    <div class="avatar size-nice mb-3">
                        <svg class="icon icon-secondary">
                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-locked"></use>
                        </svg>
                    </div>
                </div>
                <div class="col-8 col-md-9">
                    <p class="text-muted"><small>Password</small></p>
                    <p>**********</p>
                </div>
            </div>
        </div>
        <div class="col-lg-2 align-self-end">
            <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal"
                    data-target="#modalPassword">Modifica
            </button>
        </div>
    </div>
</div>

<%--<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/upload"--%>
<%--      enctype="multipart/form-data">--%>
<%--    <input type="file" name="avatar" accept="jpg">--%>
<%--    <input type="submit" value="upload">--%>
<%--</form>--%>
<%--<br/>--%>
<%--<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/password">--%>
<%--    <label>--%>
<%--        current--%>
<%--        <input type="password" name="current">--%>
<%--    </label>--%>
<%--    <label>--%>
<%--        new--%>
<%--        <input type="password" name="request">--%>
<%--    </label>--%>
<%--    <label>--%>
<%--        check--%>
<%--        <input type="password">--%>
<%--    </label>--%>
<%--    <input type="submit" value="change">--%>
<%--</form>--%>
<%--<br/>--%>
<%--<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/general">--%>
<%--    <h3>general</h3>--%>
<%--    <label>--%>
<%--        Filtro--%>
<%--        <input type="text" id="filter" placeholder="filtro">--%>
<%--    </label>--%>
<%--    <table id="items"></table>--%>
<%--</form>--%>

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
