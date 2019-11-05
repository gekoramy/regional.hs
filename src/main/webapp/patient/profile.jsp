<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean id="person" scope="request" type="dunder.mifflin.persistence.pojos.Person"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>

<jsp:useBean id="general" scope="request" type="dunder.mifflin.persistence.pojos.General"/>
<jsp:useBean id="general_avatar" scope="request" type="java.lang.String"/>

<jsp:useBean scope="request" id="birthplace_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="birthplace_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="birthplace_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="residence_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="residence_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="residence_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="workplace_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="workplace_region" type="dunder.mifflin.persistence.pojos.Region"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Profilo</title>

    <script>
        $(document).ready(() => {
            $(window)
                .resize(() => {
                    if ($(window).width() <= 576)
                        $('#wrapper').addClass('size-sm');
                    else
                        $('#wrapper').removeClass('size-sm')
                })
                .resize();

            peopleModal(
                "${pageContext.request.contextPath}/api/suitable",
                $("#filter"),
                $("#items"),
                "purpose"
            );

            $('#request, #check').keyup(
                () => $('#submit').attr(
                    'disabled',
                    $('#request').val() !== $('#check').val()
                )
            );
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

    <!--info-->

    <div class="row px-3 px-md-0">
        <div class="col-lg-10 ">
            <div class="row">
                <div class="col-4 col-md-3">

                    <div id="wrapper" class="avatar-upload-wrapper">

                        <div class="avatar size-nice avatar-upload">
                            <img src="${avatar}" alt="${person.name()} ${person.surname()}">

                            <form method="post" action="${pageContext.request.contextPath}/patient/upload"
                                  class="upload-avatar-container m-0" enctype="multipart/form-data">
                                <input type="file" name="avatar" id="avatar" class="upload-avatar" onchange="form.submit()"/>
                                <label for="avatar">
                                    <svg class="icon icon-sm" aria-hidden="true">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-camera"></use>
                                    </svg>
                                    <span>
                                        Aggiorna<span class="sr-only"> foto dell'Avatar</span>
                                    </span>
                                </label>
                            </form>
                        </div>

                        <div class="avatar-upload-icon">
                            <svg class="icon icon-sm" aria-hidden="true">
                                <use xlink:href="${bootstrap}/svg/sprite.svg#it-camera"></use>
                            </svg>
                        </div>

                    </div>

                </div>
                <div class="col-8 col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Nome</small></p>
                            <p>${person.name()} ${person.surname()}</p>
                            <p class="text-muted mb-0"><small>Codice fiscale</small></p>
                            <p>${person.fc()}</p>
                            <p class="text-muted mb-0"><small>Data di nascita</small></p>
                            <p>${person.birthday()}</p>
                            <p class="text-muted mb-0"><small>Email</small></p>
                            <p>${person.email()}</p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Luogo di nascita</small></p>
                            <p>
                                ${birthplace_city.name()}<br>
                                ${birthplace_province.name()}<br>
                                ${birthplace_region.name()}
                            </p>

                            <p class="text-muted mb-0"><small>Residenza</small></p>
                            <p>
                                ${residence_city.name()}<br>
                                ${residence_province.name()}<br>
                                ${residence_region.name()}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr class="my-5">

    <!--general-->

    <div class="row px-3 px-md-0">
        <div class="col-lg-10">
            <div class="row">
                <div class="col-4 col-md-3">
                    <div class="avatar size-nice mb-3">
                        <img src="${general_avatar}" alt="${general.name()} ${general.surname()}">
                    </div>
                </div>
                <div class="col-8 col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Medico di base</small></p>
                            <p>${general.name()} ${general.surname()}</p>
                            <p class="text-muted mb-0"><small>Email</small></p>
                            <p>${general.email()}</p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-muted mb-0"><small>Servizio Sanitario</small></p>
                            <p>
                                ${workplace_province.name()}<br>
                                ${workplace_region.name()}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 align-self-end">
            <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#general">
                Cambia
            </button>
        </div>
    </div>

    <hr class="my-5">

    <!--password-->

    <div class="row px-3 px-md-0">
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
            <button type="button" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#password">
                Cambia
            </button>
        </div>
    </div>
</div>

<div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="general">
    <div class="modal-dialog modal-dialog-right w-100" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Medici disponibili</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <svg class="icon">
                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                    </svg>
                </button>
            </div>

            <div class="modal-body">

                <div class="container">
                    <div class="row mt-3">
                        <div class="col-12">
                            <div class="form-group">
                                <input type="search" class="autocomplete" placeholder="Cerca" id="filter">
                                <span class="autocomplete-icon" aria-hidden="true">
                                    <svg class="icon icon-sm">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-search"></use>
                                    </svg>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/general"
                      class="container">
                    <div id="items" class="row"></div>
                </form>

            </div>
        </div>
    </div>
</div>

<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/patient/password">

    <div class="modal fade" tabindex="-1" role="dialog" id="password">
        <div class="modal-dialog modal-dialog-right w-100" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Cambia password</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <svg class="icon">
                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                        </svg>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row">

                            <div class="col-12 mt-3">
                                <div class="form-group">
                                    <label for="current">Password attuale</label>
                                    <input type="password"
                                           id="current"
                                           name="current"
                                           class="form-control input-password"
                                           placeholder="Password">
                                    <span class="password-icon">
                                        <svg class="password-icon-visible icon icon-sm">
                                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-password-visible"></use>
                                        </svg>
                                        <svg class="password-icon-invisible icon icon-sm d-none">
                                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-password-invisible"></use>
                                        </svg>
                                    </span>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="form-group">
                                    <label for="request">Nuova password</label>
                                    <input type="password"
                                           id="request"
                                           name="request"
                                           class="form-control input-password input-password-strength-meter"
                                           data-enter-pass="Sicurezza della tua password"
                                           placeholder="Nuova">
                                    <span class="password-icon" aria-hidden="true">
                                        <svg class="password-icon-visible icon icon-sm">
                                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-password-visible"></use>
                                        </svg>
                                        <svg class="password-icon-invisible icon icon-sm d-none">
                                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-password-invisible"></use>
                                        </svg>
                                    </span>
                                </div>
                            </div>

                            <div class="col-12 mt-3">
                                <div class="form-group">
                                    <label for="check">Ripeti password</label>
                                    <input type="password"
                                           id="check"
                                           name="check"
                                           class="form-control input-password"
                                           placeholder="Controllo">
                                    <span class="password-icon" aria-hidden="true">
                                        <svg class="password-icon-visible icon icon-sm">
                                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-password-visible"></use>
                                        </svg>
                                        <svg class="password-icon-invisible icon icon-sm d-none">
                                            <use xlink:href="${bootstrap}/svg/sprite.svg#it-password-invisible"></use>
                                        </svg>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input id="submit" type="submit" class="btn btn-primary btn-sm" value="Cambia">
                </div>
            </div>
        </div>
    </div>

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
