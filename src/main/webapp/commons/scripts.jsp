<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--@elvariable id="result" type="dunder.mifflin.utils.Result"--%>

<script src="${pageContext.request.contextPath}/assets/script/ajax.js"></script>

<c:if test="${not empty result}">
    <script type="text/javascript">
        $(document).ready(function () {
            notificationShow('${result.action().substring(result.action().lastIndexOf("/") + 1)}-${result.code()}');
        });
    </script>
</c:if>