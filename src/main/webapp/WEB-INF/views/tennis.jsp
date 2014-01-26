<%--
  Users.jsp: View all users and their details
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head><title>All Tennis Links</title></head>
<body>


<h3>Images:</h3>
<c:forEach var="image" items="${product.images}">
    <p><c:out value="${image.url}"/></p>
    <%--<img src="<c:out value="${image.url}"/>"/>--%>
    <br/>
</c:forEach>

<h3>Price Comparison:</h3>
<c:forEach var="priceComparison" items="${product.priceComparisons}">
    <a href="${priceComparison.url}"><c:out value="${priceComparison.reseller}"/> - $<c:out
            value="${priceComparison.price}"/></a>
    <br/>
</c:forEach>

<c:out value='${product.category.name}' escapeXml="false"/>

<c:out value='${product.specs}' escapeXml="false"/>

</body>
</html>