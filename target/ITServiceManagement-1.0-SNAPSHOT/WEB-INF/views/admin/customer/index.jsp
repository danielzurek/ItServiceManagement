<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Search Auto Complete</title>
    <%--<script src="${pageContext.request.contextPath }/resources/js/jquery-1.4.2.js"></script>--%>
    <%--<script src="${pageContext.request.contextPath }/resources/js/jquery-ui-1.8.2.custom.js"></script>--%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link
            href="${pageContext.request.contextPath }/resources/css/themes/base/jquery.ui.all.css"
            rel="stylesheet" type="text/css">
    <script type="text/javascript">
        $(document).ready(function() {
            $('#customerDisplayName').autocomplete({
                source : '${pageContext.request.contextPath }/customer/search'
            });
        });
    </script>
</head>
<body>
Search Customer
<input type="text" id="customerDisplayName">
</body>
</html>