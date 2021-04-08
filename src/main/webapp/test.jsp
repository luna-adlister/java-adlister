<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: justinreich
  Date: 4/8/21
  Time: 7:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! int count = 0; %>
<%
    Date date = new Date();
    request.setAttribute("asdf", "asdf");
    count += 10;

    List<String> people = new ArrayList<>(Arrays.asList("bob", "sally", "mary"));
    request.setAttribute("people", people);
    request.setAttribute("dude", "kyle");
%>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="hmmm"/>
</jsp:include>
<body>
    <h1>The time is: ${asdf}</h1>
    <h1>The time is: <%=request.getAttribute("asdf")%></h1>
    <h1><%=request.getMethod()%></h1>
    <h1><c:out value="${param.hello}" /></h1>
    <h1><%=request.getParameter("hello")%></h1>
    ${paramValues}
    <%=count%>
    <c:forEach items="${people}" var="person">
        <h4>${person}</h4>
    </c:forEach>
    <c:if test='${dude.equalsIgnoreCase("justin")}'>
        <h1>Justin is the Dude</h1>
    </c:if>
</body>
</html>
