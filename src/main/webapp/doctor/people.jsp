<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="doctor" scope="request" type="dunder.mifflin.persistence.pojos.HsDoctor"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Persone</title>
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
                                <div class="col-11 col-md-6 col-lg-4 d-flex justify-content-center">
                                    <button type="submit" name="patient" value="{id}" class="bg-transparent border-0 avatar-wrapper avatar-extra-text">
                                        <div class="avatar size-xl">
                                            <img src="{avatar}" alt="{name} {surname}">
                                        </div>
                                        <div class="extra-text">
                                            <h4 class="text-left">{name} {surname}</h4>
                                            <code class="text-left">{fc}</code>
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

<%@include file="partial/header.jsp"%>

<div class="container">

    <div class="row mt-3">
        <div class="col-12">
            <div class="form-group">
                <input type="search" class="autocomplete" placeholder="Cerca" id="filter">
                <span class="autocomplete-icon" aria-hidden="true">
                <svg class="icon icon-sm"><use xlink:href="${bootstrap}/svg/sprite.svg#it-search"></use></svg>
            </span>
            </div>
        </div>
    </div>

</div>

<form accept-charset="UTF-8" method="get" action="${pageContext.request.contextPath}/doctor/medicines" class="container">
    <div id="items" class="row"></div>
</form>

</body>
</html>