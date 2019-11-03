<%@ page contentType="text/html;charset=UTF-8" %>

<%--@elvariable id="bootstrap" type="java.lang.String"--%>

<div id="${param['n_id']}" class="notification with-icon warning dismissable" role="alert">
    <h5>
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-error"></use>
        </svg>
        Attenzione
    </h5>
    <p>${param['n_body']}</p>
    <button type="button" class="btn notification-close">
        <svg class="icon">
            <use xlink:href="${bootstrap}/svg/sprite.svg#it-close"></use>
        </svg>
    </button>
</div>
