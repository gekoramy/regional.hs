<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="specialist" scope="request" type="dunder.mifflin.persistence.pojos.Specialist"/>
<jsp:useBean id="avatar" scope="request" type="java.lang.String"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>

    <title>Persone</title>
    <script>
        $(document).ready(() => {
                peoplePage(
                    "${pageContext.request.contextPath}/api/people",
                    $("#filter"),
                    $("#items"),
                    "patient"
                );
            }
        );
    </script>
</head>

<body>

<%@include file="../commons/header.jsp" %>

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

<form accept-charset="UTF-8" method="get" action="${pageContext.request.contextPath}/specialist/medicines" class="container">
    <div id="items" class="row"></div>
</form>

<%@include file="../commons/footer.jsp" %>

</body>
</html>