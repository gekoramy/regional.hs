<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Ripristina password</title>

    <link rel="stylesheet" href="./assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = './assets/bootstrap-italia/fonts'</script>

    <script src="./assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

    <c:if test="${not empty result}">
        <c:choose>
            <c:when test="${200 le result.code() and result.code() < 300}">
                <c:choose>
                    <c:when test="${result.action().equals('/token')}">
                        <script>
                            $(document).ready(function () {
                                notificationShow('token-200');
                            });
                        </script>
                    </c:when>
                </c:choose>
            </c:when>

            <c:otherwise>
                <c:choose>
                    <c:when test="${result.action().equals('/token')}">
                        <script>
                            $(document).ready(function () {
                                notificationShow('token-500');
                            });
                        </script>
                    </c:when>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:if>

</head>
<body>

<div class="notification top-fix with-icon success" role="alert" aria-labelledby="token-200-title"
     id="token-200">
    <h5 id="token-200-title">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Controlla l'email
    </h5>
</div>

<div class="notification top-fix with-icon error" role="alert" aria-labelledby="token-500-title"
     id="token-500">
    <h5 id="token-500-title">
        <svg class="icon">
            <use xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Non è vero, però ti dico comunque di checkare l'email
    </h5>
</div>


<form method="post" action="${pageContext.request.contextPath}/token" class="container">

    <div class="row" style="height: 15%"></div>
    <div class="row justify-content-center">
        <div class="col-12 col-md-10  col-lg-6">
            <div class="card-wrapper card-space">
                <div class="card card-bg card-big no-after">
                    <div class="card-body">
                        <div class="form-group">
                            <h3 class="card-title">Ripristina Password</h3>
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username">
                        </div>
                        <div class="it-card-footer justify-content-end">
                            <input type="submit" class="btn btn-primary btn-sm" value="Ripristina">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</form>

</body>
</html>
