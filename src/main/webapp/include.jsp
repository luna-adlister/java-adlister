<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 8/20/18
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Include Example</title>
    <link rel="stylesheet" href="">
    <%@include file="partials/stylesheets.html" %>
</head>
<body>

    <%@include file="partials/navbar.html" %>

    <h1>Some title</h1>

    <%@include file="partials/footer.html" %>

</body>
</html>
