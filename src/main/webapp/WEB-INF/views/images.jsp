<%--
  Users.jsp: View all users and their details
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>All Images</title></head>
<body>

<h2>Total Images: <c:out value="${fn:length(images)}"/> </h2>
<br/> <br/>
<c:forEach var="image" items="${images}">
  <h3>Image Details:</h3>
  <p>URL: <c:out value="${image.url}"/> </p>
  <p>URL Thumb: <c:out value="${image.url_thumb}"/> </p>
  <p>Product: <c:out value="${image.product.name}"/> </p>
  <br/>
</c:forEach>

</body>
</html>