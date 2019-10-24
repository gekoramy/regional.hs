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
                            <label for="1">Username</label>
                            <input type="text" class="form-control" id="1">
                        </div>
                        <div class="form-group">
                            <label for="2">Password</label>
                            <input type="text" class="form-control" id="2">
                        </div>
                        <div class="form-check">
                            <input id="checkbox1" type="checkbox">
                            <label for="checkbox1">Ricordami</label>
                        </div>
                        <div class="it-card-footer">
                            <div class="row">
                                <div class="col">
                                    <span class="card-signature">Password dimenticata?</span>
                                </div>
                                <div class="col align-items-end">
                                    <button class="btn btn-outline-primary btn-sm">Accedi</button>
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