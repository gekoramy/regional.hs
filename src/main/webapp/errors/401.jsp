<%@ page contentType="text/html;charset=UTF-8" %>

<%--@elvariable id="fallback" type="java.lang.String"--%>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>

    <title>401</title>

    <style>
        video {
            height: 100%;
            width: 186.0465116279069767441860465116279069767441860465116279069vh; /* 100 * 480 / 258 */
            min-height: 53.75vw; /* 100 * 258 / 480 */
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
        <video autoplay loop muted playsinline src="${pageContext.request.contextPath}/assets/img/error/401.mp4" type="video/mp4">
        </video>
        <div class="p-4">
            <h1 class="white-color" style="font-size: 10rem;">401</h1>
        </div>
    </div>

    <a href="${not empty fallback ? fallback : pageContext.request.contextPath}" class="btn btn-primary btn-lg btn-block">
        Torna in salvo
    </a>
</div>

</body>
</html>
