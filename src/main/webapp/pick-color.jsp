<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 4/12/21
  Time: 11:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>

    <h1>Pick Color</h1>
    <form action="/pickcolor" method="POST">
        <input type="text" name="color" placeholder="Choose background color">
        <button>Submit</button>
    </form>

</body>
</html>
