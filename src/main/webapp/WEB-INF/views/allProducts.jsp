<%@ page import="com.springhibernate.integration.model.Product" %>
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
<h1>Total: <c:out value="${fn:length(products)}"/></h1>
<c:forEach var="product" items="${products}">
    <h3>Name: ${product.name}</h3>
    <h3><a href="${product.url}">Tennis Express</a> Price: ${product.price}</h3>
    <h3>Images:</h3>
    <c:forEach var="image" items="${product.images}">
        <p><c:out value="${image.url}"/></p>
    </c:forEach>

    <h3>Price Comparison:</h3>
    <c:forEach var="priceComparison" items="${product.priceComparisons}">
        <a href="${priceComparison.url}"><c:out value="${priceComparison.reseller}"/> - $<c:out
                value="${priceComparison.price}"/></a>
        <br/>
    </c:forEach>

    <c:out value='${product.category.name}' escapeXml="false"/>

    <%--<% Product product = (Product) request.getAttribute("prodcut");--%>
       <%--String newSpecs = product.getSpecs().replace(" \u0097 "," - "); %>--%>

    <c:out value='${product.specs}' escapeXml="false"/>

    <hr />
</c:forEach>
</body>
</html>