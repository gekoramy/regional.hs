<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<html>
<head>
    <%@ include file="./commons/meta.jsp" %>
    <%@ include file="./commons/base.jsp" %>
    <%@ include file="./commons/scripts.jsp" %>

    <title>Ripristina password</title>
</head>
<body>

<div id="token-200" class="notification top-fix with-icon success dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-check-circle"></use>
        </svg>
        Controlla l'email
    </h5>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<div id="token-404" class="notification top-fix with-icon error dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close-circle"></use>
        </svg>
        Errore
    </h5>
    <p>Non è stato possibile inviare l'email</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>

<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/token" class="container">

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
