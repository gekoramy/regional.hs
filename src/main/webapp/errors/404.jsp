<%--@elvariable id="fallback" type="java.lang.String"--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>

    <title>404</title>

    <style>
        video {
            height: 100%;
            width: 200.9433962264150943396226415094339622641509433962264150943vh; /* 100 * 426 / 212 */
            min-height: 49.76525821596244131455399061032863849765258215962441314553vw; /* 100 * 212 / 426 */
            min-width: 100%;
            z-index: -1;

            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>

<div class="d-flex w-100 h-100 flex-column">

    <div class="flex-grow-1 overflow-hidden position-relative">
        <video autoplay loop muted playsinline src="${pageContext.request.contextPath}/assets/img/error/404.mp4" type="video/mp4">
        </video>
        <div class="p-4">
            <h1 class="white-color" style="font-size: 10rem;">404</h1>
        </div>
    </div>

    <a href="${not empty fallback ? fallback : pageContext.request.contextPath}" class="btn btn-primary btn-lg btn-block">
        Torna in salvo
    </a>
</div>

</body>
</html>
<c:remove var="fallback" scope="session"/>
