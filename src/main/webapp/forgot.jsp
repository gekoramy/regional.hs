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

<jsp:include page="commons/notifications/success.jsp">
    <jsp:param name="n_id" value="token-200"/>
    <jsp:param name="n_body" value="Controlla l'email"/>
</jsp:include>

<jsp:include page="commons/notifications/error.jsp">
    <jsp:param name="n_id" value="token-404"/>
    <jsp:param name="n_body" value="Account inesistente"/>
</jsp:include>

<jsp:include page="commons/notifications/error.jsp">
    <jsp:param name="n_id" value="token-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile inviare l'email. Errore del server"/>
</jsp:include>

</body>
</html>
