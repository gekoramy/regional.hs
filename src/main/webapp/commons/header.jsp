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
        <%@include file="../specialist/partial/header.jsp" %>
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
                            <span class="d-lg-block navbar-brand">Servizio Sanitario</span>
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