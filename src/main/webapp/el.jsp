<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setAttribute("number", 10);
    request.setAttribute("username", "bob123");
    request.setAttribute("password", "letmein");
    int x = 5;
    request.setAttribute("x", x);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>The number is <%= request.getAttribute("number") %></h1>
    <p>The number is ${number}</p>
    <p>Username: ${username} Password: ${password}</p>
    <p>${2 + 2}</p>
    <h1>${x}</h1>
    <h3>${param.name.concat(" ").concat(param.other)}</h3>

</body>
</html>
