<%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 4/13/21
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Products</title>
</head>
<body>

    <h1>Products</h1>

    <c:forEach items="${products}" var="product">
        <div>
            <h2>Product name: ${product.name}</h2>
            <p>Cost ${product.price}</p>
        </div>
    </c:forEach>

</body>
</html>
