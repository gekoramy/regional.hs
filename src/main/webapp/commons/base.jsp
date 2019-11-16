<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/logo/favicon.png">

<script>window.__PUBLIC_PATH__ = '${pageContext.request.contextPath}/assets/bootstrap-italia/fonts'</script>

<script src="${pageContext.request.contextPath}/assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap-italia/css/bootstrap-italia.min.css">

<script src="${pageContext.request.contextPath}/assets/script/jquery.blockUI.min.js"></script>

<script>
    $(document).ready(() => {
        $("form").submit(() => $.blockUI({
            message: $('#loading'),
            baseZ: 10000,
            css: {
                top: '20%',
                left: ($(window).width() - 400) / 2 + 'px',
                width: '400px',
                border: 'none'
            }
        }));
    });
</script>

<c:set scope="request" var="bootstrap" value="${pageContext.request.contextPath}/assets/bootstrap-italia"/>
<c:set scope="request" var="logo" value="${pageContext.request.contextPath}/assets/img/logo/regional.hs.white.svg"/>