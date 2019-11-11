<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<jsp:useBean scope="request" id="general" type="dunder.mifflin.persistence.pojos.General"/>
<jsp:useBean scope="request" id="patient" type="dunder.mifflin.persistence.pojos.Person"/>

<jsp:useBean scope="request" id="avatar" type="java.lang.String"/>
<jsp:useBean scope="request" id="patient_avatar" type="java.lang.String"/>

<jsp:useBean scope="request" id="birthplace_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="birthplace_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="birthplace_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="residence_city" type="dunder.mifflin.persistence.pojos.City"/>
<jsp:useBean scope="request" id="residence_province" type="dunder.mifflin.persistence.pojos.Province"/>
<jsp:useBean scope="request" id="residence_region" type="dunder.mifflin.persistence.pojos.Region"/>

<jsp:useBean scope="request" id="medicines" type="java.util.List<dunder.mifflin.persistence.pojos.MedicinePrescription>"/>
<jsp:useBean scope="request" id="tickets" type="java.util.Map<java.lang.Long, dunder.mifflin.persistence.pojos.MedicineTicket>"/>

<html>
<head>
    <%@ include file="../commons/meta.jsp" %>
    <%@ include file="../commons/base.jsp" %>
    <%@ include file="../commons/scripts.jsp" %>
    <%@ include file="../commons/select2.jsp" %>

    <script>
        $(document).ready(() =>
            $('#medicine').select2({
                ajax: {
                    url: "${pageContext.request.contextPath}/api/medicines",
                    dataType: 'json',
                    data: (params) => {
                        return {
                            pattern: params.term
                        }
                    },
                    processResults: (data) => {
                        return {
                            results: $.map(
                                data,
                                (it) => {
                                    return {
                                        id: it.id,
                                        text: it.name
                                    };
                                }
                            )
                        }
                    }
                }
            })
        );
    </script>

    <title>Storico farmaci</title>

    <script>
        $(document).ready(() => $('[data-toggle="popover"]').popover('enable'))
    </script>
</head>

<body>

<%@include file="../commons/header.jsp" %>

<%@include file="partial/patient.jsp" %>

<div class="container">

    <div class="row mt-3">
        <div class="col-12">
            <div id="collapseDiv1-sc1" class="collapse-div collapse-background-active" role="tablist">
                <div class="collapse-header" id="heading1-sc1">
                    <button
                            data-toggle="collapse"
                            data-target="#collapse1-sc1"
                            aria-expanded="false"
                            aria-controls="collapse1-sc1">
                        Prescrivi un farmaco
                    </button>
                </div>
                <div id="collapse1-sc1" class="collapse" role="tabpanel" aria-labelledby="heading1-sc1">
                    <form accept-charset="UTF-8" class="collapse-body d-flex flex-column justify-content-end m-0" method="post"
                          action="${pageContext.request.contextPath}/general/prescribe/medicine">

                        <input type="hidden" name="patient" value="${patient.id()}">

                        <div class="row">

                            <div class="col-12 mt-3">
                                <label for="medicine" class="input-number-label">Farmaco</label>
                                <div class="w-100">
                                    <select id="medicine" name="medicine" required style="width: 100%"></select>
                                </div>
                            </div>

                            <div class="col-12 mt-3">
                                <label for="quantity" class="input-number-label">Quantità</label>
                                <span class="input-number">
                                    <input type="number" id="quantity" name="quantity" value="1" min="1" max="4" step="1"
                                           required>
                                        <button class="input-number-add"></button>
                                        <button class="input-number-sub"></button>
                                    </span>
                            </div>

                            <div class="col-12 mt-3 text-right">
                                <input type="submit" class="btn btn-primary btn-block" value="Prescrivi">
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="container">

    <div class="row mt-3">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">

                    <thead>
                    <tr>
                        <th>Prescrizione</th>
                        <th>Farmaco</th>
                        <th class="text-center">Quantità</th>
                        <th class="text-center">QR</th>
                        <th colspan="2" class="text-center">Ticket</th>
                    </tr>
                    </thead>

                    <c:forEach items="${medicines}" var="it">
                        <fmt:parseDate value="${it.date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm" var="tmp"/>
                        <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="out"/>

                        <tr>
                            <td class="align-middle">${out}</td>
                            <td class="align-middle">${it.medicine().name()}</td>
                            <td class="align-middle text-center">${it.quantity()}</td>
                            <td class="align-middle text-center">
                                <a href="${pageContext.request.contextPath}/qr?size=500&prescription=${it.id()}" target="_blank">
                                    <svg class="icon">
                                        <use xlink:href="${bootstrap}/svg/sprite.svg#it-camera"></use>
                                    </svg>
                                </a>
                            </td>

                            <c:choose>
                                <c:when test="${tickets.containsKey(it.id())}">
                                    <fmt:parseDate value="${tickets.get(it.id()).date()}" type="both" pattern="yyyy-MM-dd'T'HH:mm"
                                                   var="tmp"/>
                                    <fmt:formatDate value="${tmp}" type="both" dateStyle="short" timeStyle="short" var="tck"/>

                                    <td class="align-middle">${tck}</td>
                                    <td class="align-middle">€${tickets.get(it.id()).amount()}</td>
                                </c:when>

                                <c:otherwise>
                                    <td class="align-middle" colspan="2">
                                        <span class="w-100 d-inline-block"
                                              data-container="body"
                                              data-toggle="popover"
                                              data-trigger="hover"
                                              data-placement="top"
                                              data-content="Per pagare il ticket, il paziente deve recarsi in farmacia">
                                            <input type="button" class="btn btn-primary btn-block" value="Incassa" disabled
                                                   style="pointer-events: none;">
                                        </span>
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

</div>

<%@include file="../commons/footer.jsp" %>

<jsp:include page="../commons/notifications/success.jsp">
    <jsp:param name="n_id" value="medicine-200"/>
    <jsp:param name="n_body" value="Farmaco prescritto"/>
</jsp:include>

<jsp:include page="../commons/notifications/warning.jsp">
    <jsp:param name="n_id" value="medicine-206"/>
    <jsp:param name="n_body" value="Farmaco prescritto, ma non &egrave; stato possibile notificare il paziente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="medicine-401"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile prescrivere il farmaco. Controlla di aver inserito i dati correttamente"/>
</jsp:include>

<jsp:include page="../commons/notifications/error.jsp">
    <jsp:param name="n_id" value="medicine-500"/>
    <jsp:param name="n_body" value="Non &egrave; stato possibile prescrivere il farmaco. Errore del server"/>
</jsp:include>

</body>
</html>
