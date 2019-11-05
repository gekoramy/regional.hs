<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Farmaci</title>

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
                                )
                            );
                        }
                    )
                )
                .keyup()
        });
    </script>
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

    <div id="items" class="row"></div>
</div>

</body>
</html>
