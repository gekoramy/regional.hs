<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="dunder.mifflin.utils.Qualification" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="qualification" type="dunder.mifflin.utils.Qualification"--%>

<%@include file="cookiebar.jsp" %>

<c:choose>

    <c:when test="${qualification eq Qualification.GENERAL}">
        <%@include file="../general/partial/header.jsp" %>
    </c:when>

    <c:when test="${qualification eq Qualification.HS_ADMIN}">
        <%@include file="../admin/partial/header.jsp" %>
    </c:when>

    <c:when test="${qualification eq Qualification.HS_DOCTOR}">
        <%@include file="../doctor/partial/header.jsp" %>
    </c:when>

    <c:when test="${qualification eq Qualification.SPECIALIST}">
        <%@include file="../doctor/partial/header.jsp" %>
    </c:when>

    <c:when test="${qualification eq Qualification.NONE}">
        <%@include file="../patient/partial/header.jsp" %>
    </c:when>

    <c:otherwise>

        <div class="it-header-slim-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="it-header-slim-wrapper-content">
                            <img class="navbar-brand mx-2 align-middle" src="${logo}" alt="logo" height="30" width="30">
                            <div class="it-header-slim-right-zone">
                                <a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-icon btn-full">
                                    <span class="rounded-icon">
                                      <svg class="icon icon-primary">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-user"></use>
                                      </svg>
                                    </span>
                                    <span class="d-none d-lg-block">Accedi all'area personale</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </c:otherwise>

</c:choose>