<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="token" scope="request" type="java.lang.String"/>

<html>
<head>
    <%@ include file="./commons/meta.jsp" %>
    <%@ include file="./commons/base.jsp" %>

    <title>Change password</title>
</head>
<body>

<%@include file="./commons/cookiebar.jsp" %>

<form accept-charset="UTF-8" method="post" action="${pageContext.request.contextPath}/reset" class="container">
    <input type="hidden" name="token" value="${token}">
    <div class="row" style="height: 15%"></div>
    <div class="row justify-content-center">
        <div class="col-12 col-md-10  col-lg-6">
            <div class="card-wrapper card-space">
                <div class="card card-bg card-big no-after">
                    <div class="card-body">
                        <div class="form-group">
                            <h3 class="card-title">Reset password</h3>
                        </div>

                        <div class="form-group">
                            <label for="password">Inserisci nuova password</label>
                            <input type="password"
                                   class="form-control input-password input-password-strength-meter"
                                   data-enter-pass="Sicurezza della tua password"
                                   id="password"
                                   name="password"
                                   required>
                            <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use
                                        xlink:href="${bootstrap}/svg/sprite.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use
                                        xlink:href="${bootstrap}/svg/sprite.svg#it-password-invisible"></use></svg>
                            </span>
                        </div>

                        <div class="form-group">
                            <label for="check">Ripeti password</label>
                            <input type="password"
                                   class="form-control input-password"
                                   id="check"
                                   aria-labelledby="infoPassword"
                                   name="check">
                            <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use
                                        xlink:href="${bootstrap}/svg/sprite.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use
                                        xlink:href="${bootstrap}/svg/sprite.svg#it-password-invisible"></use></svg>
                            </span>
                        </div>

                        <div class="row justify-content-end">
                            <input id="submit" type="submit" class="btn btn-primary" value="Cambia">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<%@include file="./commons/footer.jsp" %>

<script>
    $(document).ready(
        () => $('#password, #check').keyup(
            () => $('#submit').attr(
                'disabled',
                $('#password').val() !== $('#check').val()
            )
        )
    );
</script>

</body>
</html>
