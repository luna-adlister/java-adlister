<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 4/12/21
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>
<body>
    <h1>Guess a Number</h1>
    <form action="/guess" method="POST">
        <label for="guess">Number</label>
        <input id="guess" name="guess" type="number" min="1" max="3" >
        <button>Guess Number</button>
    </form>
</body>
</html>
