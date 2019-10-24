<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="wrong" type="java.lang.Boolean"--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <link rel="stylesheet" href="./assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = './assets/bootstrap-italia/fonts'</script>

    <script src="./assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

</head>
<body>


<form method="post" action="${pageContext.request.contextPath}/login">

    <div class="container h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <!--start card-->
            <div class="card-wrapper card-space">
                <div class="card card-bg card-big no-after">
                    <div class="card-body">

                        <div class="form-group">
                            <h3 class="card-title">Login</h3>
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control <c:if test="${not empty wrong}"> is-invalid </c:if>" name="password" id="password">
                        </div>
                        <div class="form-check">
                            <input id="remember" type="checkbox" name="remember">
                        </div>
                        <div class="it-card-footer">
                            <div class="row align-items-center">
                                <div class="col">
                                    <a class="card-signature" href="${pageContext.request.contextPath}/forgot">Password
                                        dimenticata?</a>
                                </div>
                                <div class="col d-flex justify-content-end">
                                    <input type="submit" class="btn btn-outline-primary btn-sm" value="Accedi">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end card-->
</form>

<%--    <label>--%>
<%--        username--%>
<%--        <input type="text" placeholder="username" name="username">--%>
<%--    </label>--%>

<%--    <label>--%>
<%--        password--%>
<%--        <input type="text" placeholder="password" name="password">--%>
<%--    </label>--%>

<%--    <label>--%>
<%--        remember me--%>
<%--        <input type="checkbox" name="remember">--%>
<%--    </label>--%>

<%--    <c:if test="${not empty wrong}">--%>
<%--        <div>sbagliasti vecchio mio</div>--%>
<%--    </c:if>--%>

<%--    <a href="${pageContext.request.contextPath}/forgot">forgot password?</a>--%>

<%--    <input type="submit" value="submit">--%>

</body>
</html>