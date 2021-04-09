<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.ArrayList" %>
<%
    List<String> favFoods = new ArrayList<>(Arrays.asList("Pizza", "Pho", "Fried Pies"));
    request.setAttribute("favFoods", favFoods);
%>
<html>
<head>
    <title>JSTL Example</title>
</head>
<body>

    <h1>JSTL Examples</h1>

    <c:if test="${2 < 3}">
        <h2>Will display</h2>
    </c:if>

    <ol>
        <c:forEach var="favFood" items="${favFoods}">
            <li>${favFood}</li>
        </c:forEach>
    </ol>

</body>
</html>
