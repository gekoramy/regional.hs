<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="wrong" type="java.lang.String"--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <link rel="stylesheet" href="./assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = './assets/bootstrap-italia/fonts'</script>

    <script src="./assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

    <c:if test="${not empty wrong}">
        <script>
            $(document).ready(function () {
                notificationShow('wrong');
            });
        </script>
    </c:if>

</head>
<body>


<div class="notification top-fix with-icon error" role="alert" id="wrong">
    <h5>
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Sbagliasti, vecchio mio
    </h5>
</div>

<form method="post" action="${pageContext.request.contextPath}/login"
      class="container">
    <div class="row" style="height: 15%"></div>
    <div class="row justify-content-center">
        <div class="col-12 col-md-10  col-lg-6">
            <div class="card-wrapper card-space">
                <div class="card card-bg card-big no-after">
                    <div class="card-body">
                        <div class="form-group">
                            <h3 class="card-title">Login</h3>
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username"
                                   value="<c:if test="${not empty wrong}">${wrong}</c:if>">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control"
                                   name="password" id="password">
                        </div>
                        <div class="toggles">
                            <label for="remember">
                                Ricordami
                                <input id="remember" type="checkbox" name="remember">
                                <span class="lever"></span>
                            </label>
                        </div>
                        <div class="it-card-footer justify-content-between">
                            <a href="${pageContext.request.contextPath}/forgot">
                                <span class="text">Password dimenticata?</span>
                            </a>
                            <input type="submit" class="btn btn-primary btn-sm" value="Accedi">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>