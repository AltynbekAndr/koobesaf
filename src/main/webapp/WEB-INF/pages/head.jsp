
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<% String str = (String) session.getAttribute("email");%>
vasha sessiya <font color="blue"><%= str%></font>
</body>
</html>
