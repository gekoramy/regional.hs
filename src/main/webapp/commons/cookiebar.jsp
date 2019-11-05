<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty cookie['consent']}">
    <form method="post" action="${pageContext.request.contextPath}/cookies/accept">
        <div class="cookiebar">
            <p>
                Questo sito utilizza cookie tecnici.
                <br>
                Proseguendo nella navigazione accetti l'utilizzo dei cookie.
            </p>
            <div class="cookiebar-buttons">
                <a href="${pageContext.request.contextPath}/policy/cookies" class="cookiebar-btn">
                    Politiche
                    <span class="sr-only">cookies</span>
                </a>
                <button type="submit" class="cookiebar-btn cookiebar-confirm">
                    Accetto
                    <span class="sr-only"> i cookies</span>
                </button>
            </div>
        </div>
    </form>
</c:if>