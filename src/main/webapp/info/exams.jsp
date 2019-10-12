<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Esami</title>

    <script src="${pageContext.request.contextPath}/assets/script/strings.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#filter").keyup(function () {
                $.getJSON(
                    "${pageContext.request.contextPath}/api/exams",
                    {
                        pattern: $("#filter").val()
                    },
                    function (result) {
                        $("#items")
                            .empty();

                        $.each(result, function (i, it) {
                            $("#items")
                                .append(
                                    `
                                    <div>{name}</div>
                                    <div>{info}</div>
                                    `.formatUnicorn(it)
                                );
                        });
                    });
            });
        });
    </script>
</head>
<body>

<label>
    Filtro
    <input type="text" id="filter" placeholder="filtro">
</label>

<div id="items"></div>

</body>
</html>
