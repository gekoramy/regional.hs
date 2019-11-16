<%--@elvariable id="fallback" type="java.lang.String"--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <title>404</title>
</head>
<body>

<div style="background: #00AFF9 url(${pageContext.request.contextPath}/assets/img/error/404.gif) no-repeat bottom;"
     class="d-flex w-100 h-100 flex-column justify-content-between">

    <div class="p-4">
        <h1 style="font-size: 10rem;">404</h1>
    </div>
    <a href="${not empty fallback ? fallback : pageContext.request.contextPath}" style="font-size: 2rem;" class="btn btn-primary btn-lg btn-block">
        Torna in salvo
    </a>
</div>


</body>
</html>
