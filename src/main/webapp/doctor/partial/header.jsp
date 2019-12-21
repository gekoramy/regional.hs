<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--@elvariable id="bootstrap" type="java.lang.String"--%>
<%--@elvariable id="avatar" type="java.lang.String"--%>

<div class="it-header-slim-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="it-header-slim-wrapper-content">

                    <a href="${pageContext.request.contextPath}/home" class="d-none d-lg-block navbar-brand mx-2 align-middle">
                        <img src="${logo}" alt="logo" height="30" width="30">
                    </a>

                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none text-decoration-none" data-toggle="collapse" href="#menu1" role="button"
                               aria-expanded="false" aria-controls="menu1">
                                <img class="navbar-brand mx-2 align-middle" src="${logo}" alt="logo" height="30" width="30">
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu1">
                                <ul class="link-list">
                                    <li>
                                        <a class="list-item <c:if test="${fn:contains(pageContext.request.requestURI, '/doctor/people')}">active</c:if>"
                                           href="${pageContext.request.contextPath}/doctor/people">Visita</a></li>
                                    <li>
                                        <a class="list-item <c:if test="${fn:contains(pageContext.request.requestURI, '/patient/profile')}">active</c:if>"
                                           href="${pageContext.request.contextPath}/patient/profile">Profilo</a>
                                    </li>
                                    <li>
                                        <a class="list-item <c:if test="${fn:contains(pageContext.request.requestURI, '/patient/exams')}">active</c:if>"
                                           href="${pageContext.request.contextPath}/patient/exams">Esami</a>
                                    </li>
                                    <li>
                                        <a class="list-item <c:if test="${fn:contains(pageContext.request.requestURI, '/patient/medicines')}">active</c:if>"
                                           href="${pageContext.request.contextPath}/patient/medicines">Farmaci</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>

                    <div class="it-header-slim-right-zone">

                        <a href="#" class="btn btn-primary btn-full" data-toggle="modal" data-target="#logout">
                            <div class="avatar size-lg">
                                <img src="${avatar}" alt="avatar">
                            </div>
                        </a>

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="logout">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Logout</h5>
            </div>
            <div class="modal-body">
                <p>Sei sicuro/a di voler disconnetterti?</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-outline-primary btn-sm" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/logout">Esci</a>
            </div>
        </div>
    </div>
</div>