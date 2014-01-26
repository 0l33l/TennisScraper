<%--
  UserDetails.jsp: View a specific user's details
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>User Details</title></head>

<body>

<h3>User's Details:</h3>
<br/>
<p>First Name: <c:out value="${user.firstName}"/> </p>
<p>Last Name: <c:out value="${user.lastName}"/> </p>
<p>Email Address: <c:out value="${user.email}"/> </p>

</body>

</html>