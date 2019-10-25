<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:useBean id="token" scope="request" type="java.lang.String"/>

<html>
<head>
    <title>Change password</title>
    <link rel="stylesheet" href="./assets/bootstrap-italia/css/bootstrap-italia.min.css">

    <script>window.__PUBLIC_PATH__ = './assets/bootstrap-italia/fonts'</script>

    <script src="./assets/bootstrap-italia/js/bootstrap-italia.bundle.min.js"></script>

</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/reset"
      class="container">
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
                        <div>

                            <div class="form-group">
                                <input type="password" class="form-control input-password input-password-strength-meter"
                                       data-enter-pass="Sicurezza della tua password"
                                       id="exampleInputPassword3" name="password">
                                <span class="password-icon" aria-hidden="true">
      <svg class="password-icon-visible icon icon-sm"><use
              xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-password-visible"></use></svg>
      <svg class="password-icon-invisible icon icon-sm d-none"><use
              xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-password-invisible"></use></svg>
    </span>
                                <label for="exampleInputPassword3">Inserisci nuova password</label>
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control input-password" id="exampleInputPassword"
                                       aria-labelledby="infoPassword">
                                <span class="password-icon" aria-hidden="true">
      <svg class="password-icon-visible icon icon-sm"><use
              xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-password-visible"></use></svg>
      <svg class="password-icon-invisible icon icon-sm d-none"><use
              xlink:href="./assets/bootstrap-italia/svg/sprite.svg#it-password-invisible"></use></svg>
    </span>
                                <label for="exampleInputPassword">Ripeti password</label>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <input type="submit" class="btn btn-primary" value="Cambia">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>


<%--
<form method="post" action="${pageContext.request.contextPath}/reset">
    <input type="hidden" name="token" value="${token}">
    <label>
        New password
        <input type="password" name="password">
    </label>
    <label>
        Check
        <input type="password">
    </label>
    <input type="submit" value="submit">
</form>
--%>

</body>
</html>
