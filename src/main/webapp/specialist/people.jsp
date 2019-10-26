<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="specialist" scope="request" type="dunder.mifflin.persistence.pojos.Specialist"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>

<html>
<head>
    <title>Persone</title>

    <link rel="stylesheet" href="../assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = '../assets/bootstrap-italia/fonts'</script>

    <script src="../assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/script/strings.js"></script>
    <script>
        const design = function () {
            $.getJSON(
                "${pageContext.request.contextPath}/api/people",
                {
                    name: $("#filter").val()
                },
                function (result) {
                    $("#items").empty();

                    $.each(result, function (i, it) {
                        $("#items")
                            .append(
                                `
                                    <div class="col-6 col-lg-3">
                                        <button type="submit" name="patient" value="{id}" class="bg-transparent border-0">
                                            <div class="avatar-wrapper avatar-extra-text">
                                                <div class="avatar size-xxl">
                                                    <img src="{avatar}" alt="{name} {surname}">
                                                </div>
                                                <div class="extra-text">
                                                    <h4>{name}</h4>
                                                    <h4>{surname}</h4>
                                                    <time datetime="{birthday}">{birthday}</time>
                                                </div>
                                            </div>
                                        </button>
                                    </div>
                                    `.formatUnicorn(it)
                            );
                    });
                });
        };

        $(document).ready(function () {
            design.call();
            $("#filter").keyup(design);
        });
    </script>
</head>

<body>

<div class="it-header-slim-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="it-header-slim-wrapper-content">
                    <span class="d-lg-block navbar-brand">Servizio Sanitario</span>
                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu2" role="button"
                               aria-expanded="false" aria-controls="menu2">
                                <span>Specialista</span>
                                <svg class="icon">
                                    <use xlink:href="../assets/bootstrap-italia/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu2">
                                <ul class="link-list">
                                    <li><a class="list-item active"
                                           href="${pageContext.request.contextPath}/specialist/people">Visita</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu1" role="button"
                               aria-expanded="false" aria-controls="menu1">
                                <span>Personale</span>
                                <svg class="icon">
                                    <use xlink:href="../assets/bootstrap-italia/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu1">
                                <ul class="link-list">
                                    <li><a class="list-item" href="${pageContext.request.contextPath}/patient/exams">Esami</a>
                                    </li>
                                    <li><a class="list-item"
                                           href="${pageContext.request.contextPath}/patient/medicines">Farmaci</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="it-header-slim-right-zone">
                        <a href="${pageContext.request.contextPath}/patient/profile"
                           class="btn btn-primary btn-icon btn-full">
                            <div class="avatar size-lg">
                                <img src="${avatar}" alt="avatar">
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">

    <div class="row" style="height: 3%"></div>

    <div class="row">
        <div class="col-12">
            <div class="form-group">
                <input type="search" class="autocomplete" placeholder="Cerca" id="filter">
                <span class="autocomplete-icon" aria-hidden="true">
                <svg class="icon icon-sm"><use xlink:href="../assets/bootstrap-italia/svg/sprite.svg#it-search"></use></svg>
            </span>
            </div>
        </div>
    </div>

</div>

<form method="get" action="${pageContext.request.contextPath}/specialist/medicines" class="container">
    <div id="items" class="row"></div>
</form>

</body>
</html>
