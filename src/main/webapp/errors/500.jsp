<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%--@elvariable id="exception" type="java.lang.String"--%>

<html>
<head>
    <title>500</title>
</head>
<body>

Errore mio

<c:if test="${not empty exception}">
    Causa : ${exception}
</c:if>

</body>
</html>
