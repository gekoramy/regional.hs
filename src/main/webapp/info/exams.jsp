<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Esami</title>

    <script>
        $(document).ready(() => {

            const filter = $("#filter");
            const items = $("#items");

            filter
                .keyup(
                    () => $.getJSON(
                        "${pageContext.request.contextPath}/api/exams",
                        {
                            pattern: filter.val()
                        },
                        (result) => {

                            items.empty();

                            $.each(
                                result,
                                (i, it) => items.append(
                                    `
                                    <div class="card-wrapper card-space d-inline-block w-100">
                                        <div class="card card-bg border-bottom-card">
                                            <div class="card-body">
                                                <div class="head-tags mb-4">
                                                    <h5><span class="badge badge-pill {class}">{hs}</span></h5>
                                                    <ul class="avatar-group-stacked">
                                                        {qualified}
                                                    </ul>
                                                </div>
                                                <h5 class="card-title">{name}</h5>
                                                <p class="card-text">{info}</p>
                                            </div>
                                        </div>
                                    </div>
                                    `.formatUnicorn({
                                        name: it.name,
                                        info: it.info,
                                        class: it.hs === true ? 'badge-primary' : 'badge-secondary',
                                        hs: it.hs === true ? 'S.Sanitario' : 'S.Specialistico',
                                        qualified: it.qualified
                                            .map((p) =>
                                                `
                                                <li>
                                                    <div class="avatar size-md" data-container="body" data-toggle="popover"
                                                    data-trigger="hover" data-placement="bottom" data-html="true"
                                                    data-content="{name} {surname}">
                                                        <img src="{avatar}" alt="{name} {surname}">
                                                    </div>
                                                </li>
                                                `.formatUnicorn(p)
                                            ).join('\n')
                                    })
                                )
                            );

                            $('[data-toggle="popover"]').popover()
                        }
                    )
                )
                .keyup()
        });
    </script>

    <style>
        @media (min-width: 576px) {
            .card-columns {
                column-count: 1;
            }
        }

        @media (min-width: 768px) {
            .card-columns {
                column-count: 2;
            }
        }

        @media (min-width: 992px) {
            .card-columns {
                column-count: 3;
            }
        }
    </style>
</head>
<body>

<%@ include file="../commons/header.jsp" %>

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

    <div id="items" class="card-columns"></div>
</div>

<%@include file="../commons/footer.jsp" %>

</body>
</html>
