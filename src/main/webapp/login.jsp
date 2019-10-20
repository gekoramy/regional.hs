<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="wrong" type="java.lang.Boolean"--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/login">

    <label>
        username
        <input type="text" placeholder="username" name="username">
    </label>

    <label>
        password
        <input type="text" placeholder="password" name="password">
    </label>

    <label>
        remember me
        <input type="checkbox" name="remember">
    </label>

    <c:if test="${not empty wrong}">
        <div>sbagliasti vecchio mio</div>
    </c:if>

    <a href="${pageContext.request.contextPath}/forgot">forgot password?</a>

    <input type="submit" value="submit">
</form>

</body>
</html>