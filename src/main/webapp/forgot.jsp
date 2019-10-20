<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<html>
<head>
    <title>Recover password</title>
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/token">

    <c:if test="${not empty result}">
        <div>
            <c:choose>
                <c:when test="${200 le result.code() and result.code() < 300}">
                    <c:choose>
                        <c:when test="${result.action().equals('/token')}">
                            Checka l'email
                        </c:when>
                    </c:choose>
                </c:when>

                <c:otherwise>
                    <c:choose>
                        <c:when test="${result.action().equals('/token')}">
                            Non è vero, però ti dico comunque di checkare l'email
                        </c:when>
                    </c:choose>
                </c:otherwise>
            </c:choose>
        </div>
    </c:if>

    <label>
        username
        <input type="text" name="username"/>
    </label>

    <input type="submit" value="submit">
</form>

</body>
</html>
