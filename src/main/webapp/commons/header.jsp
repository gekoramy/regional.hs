<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="dunder.mifflin.utils.Qualification" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="qualification" type="dunder.mifflin.utils.Qualification"--%>

<c:choose>

    <c:when test="${qualification eq Qualification.GENERAL}">
        <%@include file="../general/partial/header.jsp"%>
    </c:when>

    <c:when test="${qualification eq Qualification.HS_ADMIN}">
        <%@include file="../admin/partial/header.jsp"%>
    </c:when>

    <c:when test="${qualification eq Qualification.HS_DOCTOR}">
        <%@include file="../doctor/partial/header.jsp"%>
    </c:when>

    <c:when test="${qualification eq Qualification.SPECIALIST}">
        <%@include file="../specialist/partial/header.jsp"%>
    </c:when>

    <c:otherwise>
        <%@include file="../patient/partial/header.jsp"%>
    </c:otherwise>

</c:choose>