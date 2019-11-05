<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="wrong" type="java.lang.String"--%>

<html>
<head>
    <%@ include file="./commons/meta.jsp" %>
    <%@ include file="./commons/base.jsp" %>

    <title>Login</title>

    <c:if test="${not empty wrong}">
        <script>
            $(document).ready(function () {
                notificationShow('wrong');
            });
        </script>
    </c:if>
</head>
<body>

<%@include file="./commons/cookiebar.jsp" %>

<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/login" class="container">
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

<jsp:include page="commons/notifications/error.jsp">
    <jsp:param name="n_id" value="wrong"/>
    <jsp:param name="n_body" value="Username o password sbagliati"/>
</jsp:include>

</body>
</html>
