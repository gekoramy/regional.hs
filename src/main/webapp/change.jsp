<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="token" scope="request" type="java.lang.String"/>

<html>
<head>
    <title>Change password</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/change">
    <input type="hidden" name="token" value="${token}">
    <label>
        New password
        <input type="password" name="password">
    </label>
    <label>
        Check
        <input type="password">
    </label>
    <input type="submit" value="submit">
</form>

</body>
</html>
