<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/header.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Farmaci</title>

    <script>

        const design = function () {
            $.getJSON(
                "${pageContext.request.contextPath}/api/medicines",
                {
                    pattern: $("#filter").val()
                },
                function (result) {
                    $("#items")
                        .empty();

                    $.each(result, function (i, it) {
                        $("#items")
                            .append(
                                `
                                <div class="col-12 col-lg-4 col-md-6">
                                        <div class="card-wrapper card-space">
                                            <div class="card card-bg card-big border-bottom-card">
                                                <div class="card-body">
                                                    <h5 class="card-title">{name}</h5>
                                                    <p class="card-text">{info}</p>
                                                </div>
                                            </div>
                                        </div>
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

                <svg class="icon icon-sm"><use xlink:href="${bootstrap}/svg/sprite.svg#it-search"></use></svg>
            </span>
            </div>
        </div>
    </div>

    <div id="items" class="row"></div>
</div>

</body>
</html>
