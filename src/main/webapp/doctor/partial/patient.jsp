<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="bootstrap" type="java.lang.String"--%>
<%--@elvariable id="patient" type="dunder.mifflin.persistence.pojos.Person"--%>
<%--@elvariable id="patient_avatar" type="java.lang.String"--%>

<%--@elvariable id="birthplace_city" type="dunder.mifflin.persistence.pojos.City"--%>
<%--@elvariable id="birthplace_province" type="dunder.mifflin.persistence.pojos.Province"--%>
<%--@elvariable id="birthplace_region" type="dunder.mifflin.persistence.pojos.Region"--%>

<%--@elvariable id="residence_city" type="dunder.mifflin.persistence.pojos.City"--%>
<%--@elvariable id="residence_province" type="dunder.mifflin.persistence.pojos.Province"--%>
<%--@elvariable id="residence_region" type="dunder.mifflin.persistence.pojos.Region"--%>

<fmt:parseDate value="${patient.birthday()}" type="date" pattern="yyyy-MM-dd" var="tmp"/>
<fmt:formatDate value="${tmp}" type="date" dateStyle="medium" var="out"/>

<div class="it-header-slim-wrapper theme-light">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="it-header-slim-wrapper-content">

                    <span class="d-none d-lg-block navbar-brand">${patient.name()} ${patient.surname()}</span>

                    <div class="nav-mobile">
                        <nav>
                            <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu2" role="button"
                               aria-expanded="false" aria-controls="menu2">
                                <span>${patient.name()} ${patient.surname()}</span>
                                <svg class="icon">
                                    <use xlink:href="${bootstrap}/svg/sprite.svg#it-expand"></use>
                                </svg>
                            </a>
                            <div class="link-list-wrapper collapse" id="menu2">
                                <ul class="link-list">
                                    <li>
                                        <a class="list-item <c:if test="${fn:contains(pageContext.request.requestURI, '/doctor/exams')}">active</c:if>"
                                           href="${pageContext.request.contextPath}/doctor/exams?patient=${patient.id()}">Esami</a>
                                    </li>
                                    <li>
                                        <a class="list-item <c:if test="${fn:contains(pageContext.request.requestURI, '/doctor/medicines')}">active</c:if>"
                                           href="${pageContext.request.contextPath}/doctor/medicines?patient=${patient.id()}">Farmaci</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>

                    <div class="it-header-slim-right-zone">

                        <a href="#" class="btn btn-primary btn-full" data-toggle="modal" data-target="#patient">
                            <div class="avatar size-lg">
                                <img src="${patient_avatar}" alt="avatar">
                            </div>
                        </a>

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>

<div class="modal it-dialog-scrollable fade" tabindex="-1" role="dialog" id="patient">
    <div class="modal-dialog modal-dialog-right w-100" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">${patient.name()} ${patient.surname()}</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <svg class="icon">
                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
                    </svg>
                </button>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card-wrapper">
                            <div class="card card-img no-after">
                                <div class="img-responsive-wrapper">
                                    <div class="img-responsive">
                                        <figure class="img-wrapper">
                                            <img src="${patient_avatar}" alt="${patient.name()} ${patient.surname()}">
                                        </figure>
                                    </div>
                                </div>
                                <div class="card-body p-0 pt-3">

                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.name()} ${patient.surname()}
                                                </p>
                                                <small class="text-muted">Nome</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.email()}
                                                </p>
                                                <small class="text-muted">Email</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${patient.fc()}
                                                </p>
                                                <small class="text-muted">Codice Fiscale</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${out}
                                                </p>
                                                <small class="text-muted">Nascita</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${birthplace_city.name()}<br>
                                                    ${birthplace_province.name()}<br>
                                                    ${birthplace_region.name()}
                                                </p>
                                                <small class="text-muted">Luogo nativo</small>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <div class="d-flex w-100 justify-content-between">
                                                <p>
                                                    ${residence_city.name()}<br>
                                                    ${residence_province.name()}<br>
                                                    ${residence_region.name()}
                                                </p>
                                                <small class="text-muted">Residenza</small>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>