<%@ page contentType="text/html;charset=UTF-8" %>

<%--@elvariable id="fallback" type="java.lang.String"--%>

<html>
<head>
    <title>401</title>
</head>
<body>

Non dovresti essere qui

<a href="${not empty fallback ? fallback : pageContext.request.contextPath}">
    Torna in salvo
</a>

</body>
</html>
