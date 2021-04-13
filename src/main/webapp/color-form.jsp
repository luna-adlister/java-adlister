<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 2019-10-23
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Color Form</title>
</head>
<body>

    <h1>Color Profile Form</h1>
    <form action="color-profile" method="post">
        <fieldset>
            <legend>Choose preferences for your profile.</legend>
            <c:choose>
                <c:when test="${sessionScope['font-color'] != null}">
                    <input type="color" name="font-color" id="font-color" value="${sessionScope['font-color']}">
                </c:when>
                <c:otherwise>
                    <input type="color" name="font-color" id="font-color" value="#999999">
                </c:otherwise>
            </c:choose>
            <label for="font-color">Font Color</label>
            <br>
            <input type="color" name="background-color" id="background-color" value="${sessionScope['background-color']}">
            <label for="background-color">Background Color</label>
            <br>
            <br>
            <button>Submit</button>
        </fieldset>
    </form>

    <form action="color-profile" method="post">
        <input type="hidden" name="forget">
        <button>Forget Preferences</button>
    </form>

</body>
</html>
