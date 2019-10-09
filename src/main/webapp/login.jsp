<%@ page contentType="text/html;charset=UTF-8" %>

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

    <a href="${pageContext.request.contextPath}/recover">forgot password?</a>

    <input type="submit" value="submit">
</form>

</body>
</html>