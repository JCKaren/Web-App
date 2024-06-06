<%@page import="com.mycompany.cv.app.models.Person"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Person Details</title>
    </head>
    <body>
        <h1>Person Details</h1>
        <%
            Person person = (Person) request.getAttribute("person");

        %>
        <p>Name: <%=person.getName()%> </p>
        <p>Email: <%=person.getEmail()%> </p>
        <p>Phone: <%=person.getPhone()%> </p>
        <p>Location: <%=person.getLocation()%> </p>
        <p>Resume: <%=person.getResume()%> </p>
</body>
</html>
