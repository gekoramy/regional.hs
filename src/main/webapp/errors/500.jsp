<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isErrorPage="true" %>

<%--@elvariable id="exception" type="java.lang.String"--%>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <title>500</title>
</head>

<body>
<div class="d-flex w-100 h-100 flex-column justify-content-between">

    <div class="text-white p-4 flex-grow-1"
         style="background: #00AFF9 url(${pageContext.request.contextPath}/assets/img/error/500.gif); background-size:cover; background-position:center center;">
        <h1 style="font-size: 10rem;">500</h1>
    </div>

    <div>
        <div class="container">
            <div class="collapse-div collapse-background-active" role="tablist">
                <div class="collapse-header">
                    <button
                            data-toggle="collapse"
                            data-target="#body"
                            aria-expanded="false"
                            aria-controls="body">
                        Exception
                    </button>
                </div>
                <div id="body" class="collapse" role="tabpanel">
                    <code class="m-3">${requestScope['javax.servlet.error.message']}</code>
                </div>
            </div>
        </div>
        <a href="${pageContext.request.contextPath}" style="font-size: 2rem;"
           class="btn btn-primary btn-lg btn-block">
            Torna in salvo
        </a>
    </div>
</div>


</body>

</html>
