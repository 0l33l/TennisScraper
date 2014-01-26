<%--
  Users.jsp: View all users and their details
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>All Categories</title></head>
<body>

<h2>Total Categories: <c:out value="${fn:length(categories)}"/> </h2>
<br/> <br/>
<c:forEach var="category" items="${categories}">
  <h3>Category Details:</h3>
  <p>Name: <a href="../tennis/viewProduct/${category.id}"><c:out value="${category.name}"/></a></p>
  <p>Parent: <c:out value="${category.parent.name}"/> </p>
  <br/>
</c:forEach>

</body>
</html>