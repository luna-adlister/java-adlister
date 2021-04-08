<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 2019-10-21
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Name Form</title>
</head>
<body>

    <h1>Enter your name!</h1>

    <form action="/display-name.jsp" method="post">
        <label for="displayName">Enter Name</label>
        <input id="displayName" type="text" name="displayName" placeholder="Enter name">
        <button>Submit</button>
    </form>

</body>
</html>
