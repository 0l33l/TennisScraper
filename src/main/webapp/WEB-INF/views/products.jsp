<%--
  Users.jsp: View all users and their details
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>All Products</title></head>
<body>

<h2>Total Products: <c:out value="${fn:length(products)}"/> </h2>
<br/> <br/>
<c:forEach var="product" items="${products}">
  <h3>Product's Details:</h3>
  <h5><c:out value="${product.category.parent.name}"/> - <c:out value="${product.category.name}"/></h5>
  <p>Name: <c:out value="${product.name}"/> </p>
  <p>Price: $<c:out value="${product.price}"/> </p>
  <p>Specs: <c:out value="${product.specs}"/> </p>
  <%--<p>Image count: <c:out value="${product.images}"/> </p>--%>
    <c:forEach var="image" items="${product.images}">
        <p>Image: <c:out value="${image.url}"/> </p>
    </c:forEach>
    <c:forEach var="priceComparison" items="${product.priceComparisons}">
        <p>Reseller: <c:out value="${priceComparison.reseller}"/> </p>
        <p>URL: <c:out value="${priceComparison.url}"/> </p>
    </c:forEach>

  <br/>
</c:forEach>

</body>
</html>