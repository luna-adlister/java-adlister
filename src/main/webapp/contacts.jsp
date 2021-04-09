<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="model.Contact" %>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%
    List<Contact> contacts = Arrays.asList(
            new Contact("Bob Smith", "2105551212"),
            new Contact("Sally Smith", "2105552323"),
            new Contact("Cathy Smith", "2105554444")
    );

    request.setAttribute("contacts", contacts);
    request.setAttribute("loggedInUser", new User("Bob Smith"));
%>
<html>
<head>
    <title>Contacts</title>
    <style>
        div {
            background: teal;
            color: white;
            margin: 1em 0;
            padding: 1em;
            border-radius: .2em;
        }
    </style>
</head>
<body>

    <h1>Contacts</h1>

    <c:forEach var="contact" items="${contacts}">

        <div>
            <h3>${contact.name}</h3>
            <h3>Phone number: ${contact.number}</h3>
            <c:if test="${contact.name.equalsIgnoreCase(loggedInUser.name)}">
                <a href="">Edit Contact</a>
            </c:if>
        </div>

    </c:forEach>

</body>
</html>
