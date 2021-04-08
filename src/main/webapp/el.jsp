<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 2019-10-21
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setAttribute("number", 10);
    request.setAttribute("username", "bob123");
    request.setAttribute("password", "letmein");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <h1>The number is <%= request.getAttribute("number") %></h1>
    <p>The number is ${number}</p>
    <p>Username: ${username} Password: ${password}</p>
    <p>${2 + 2}</p>

    <h3>${param.name}</h3>


</body>
</html>
