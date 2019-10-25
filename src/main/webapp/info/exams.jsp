<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Esami</title>

    <link rel="stylesheet" href="../assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = '../assets/bootstrap-italia/fonts'</script>

    <script src="../assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/script/strings.js"></script>

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
                            .empty();

                        $.each(result, function (i, it) {
                            $("#items")
                                .append(
                                    `
                                        <div class="col-12 col-lg-4 col-md-6">
                                            <div class="card-wrapper card-space">
                                                <div class="card card-bg card-big border-bottom-card">
                                                    <div class="card-body">
                                                        <div class="category-top">
                                                          <h5><span class="badge badge-pill {class}">{hs}</span></h5>
                                                        </div>
                                                        <h5 class="card-title">{name}</h5>
                                                        <p class="card-text">{info}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        `
                                        .formatUnicorn({
                                            name: it.name,
                                            info: it.info,
                                            class: it.hs === true ? 'badge-primary' : 'badge-secondary',
                                            hs: it.hs === true ? 'Servizio Sanitario' : 'Servizio Specialistico'
                                        })
                                );
                        });
                    });
            });
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
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu1" role="button"
                               aria-expanded="false" aria-controls="menu1">
                                <span>Prescrizioni</span>
                                <svg class="icon">
                                    <use xlink:href="../assets/bootstrap-italia/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu1">
                                <ul class="link-list">
                                    <li><a class="list-item" href="#">Esami</a></li>
                                    <li><a class="list-item active" href="#">Farmaci</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="it-header-slim-right-zone">
                        <a href="#" class="btn btn-primary btn-icon btn-full">
<%--                <span class="rounded-icon">--%>
<%--                  <svg class="icon icon-primary">--%>
<%--                    <use--%>
<%--                            xlink:href="../assets/bootstrap-italia/svg/sprite.svg#it-user"--%>
<%--                    ></use>--%>
<%--                  </svg>--%>
                    <div class="avatar size-lg">
                        <img src="../assets/img/avatar/avt.248871942052528259.jpg" alt="avatar">
                    </div>
<%--                </span>--%>
<%--                            <span class="d-none d-lg-block">Accedi all'area personale</span>--%>
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

    <div id="items" class="row"></div>
</div>

</body>
</html>
