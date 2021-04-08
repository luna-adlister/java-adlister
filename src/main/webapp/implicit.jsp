<%@ page import="java.util.Random" %>
<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 8/19/18
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Random r = new Random();
    int randNum = r.nextInt((7 - 1) + 1) + 1;
    if (randNum == 1) {
        response.sendRedirect("/hello");
    } else if (randNum == 7) {
        response.sendError(500);
    }
    String textColor = (request.getParameter("color") != null) ? request.getParameter("color") : "";
%>
<html>
<head>
    <title>JSPs: Implicit Objects</title>
</head>
<body>

    <h1><%= randNum %></h1>
    <h3 style="color:<%= textColor %>">Some color</h3>
    <p>Query String: <%= request.getQueryString() %></p>
    <p>Path: <%= request.getRequestURL() %></p>
    <p>User-Agent header: <%= request.getHeader("user-agent") %></p>

    <%
        out.println("Hello TEST");
    %>

</body>
</html>
