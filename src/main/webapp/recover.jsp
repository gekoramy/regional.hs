<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="_404" type="java.lang.String"--%>

<html>
<head>
    <title>Recover password</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/recover">

    <c:if test="${not empty _404}">
        <h3>${_404} doesn't exists</h3>
    </c:if>

    <label>
        username
        <input type="text" name="username"/>
    </label>

    <input type="submit" value="submit">
</form>

</body>
</html>
