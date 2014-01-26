<%--
  Users.jsp: View all users and their details
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>All Users</title></head>
<body>

<h2>Total Users: <c:out value="${fn:length(users)}"/> </h2>
<br/> <br/>
<c:forEach var="user" items="${users}">
  <h3>User's Details:</h3>
  <p>First Name: <c:out value="${user.firstName}"/> </p>
  <p>Last Name: <c:out value="${user.lastName}"/> </p>
  <p>Email Address: <c:out value="${user.email}"/> </p>
  <br/>
</c:forEach>

<form action="add" method="POST">
    <input type="text" name="firstName"/>
    <input type="text" name="lastName"/>
    <input type="text" name="email"/>
    <input type="submit" name="Submit"/>
</form>


</body>
</html>