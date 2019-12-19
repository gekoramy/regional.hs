<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isErrorPage="true" %>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>

    <title>500</title>

    <style>
        video {
            height: 100%;
            width: 177.1653543307086614173228346456692913385826771653543307086vh; /* 100 * 450 / 254 */
            min-height: 56.44444444444444444444444444444444444444444444444444444444vw; /* 100 * 254 / 450 */
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
        <video autoplay loop muted playsinline src="${pageContext.request.contextPath}/assets/img/error/500.mp4" type="video/mp4">
        </video>
        <div class="p-4">
            <h1 class="white-color" style="font-size: 10rem;">500</h1>
        </div>
    </div>

    <div>
        <c:if test="${not empty(requestScope['javax.servlet.error.message'])}">
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
                    <p class="m-3">${requestScope['javax.servlet.error.message']}</p>
                </div>
            </div>
        </c:if>

        <a href="${pageContext.request.contextPath}" class="btn btn-primary btn-lg btn-block">
            Torna in salvo
        </a>
    </div>
</div>

</body>
</html>
