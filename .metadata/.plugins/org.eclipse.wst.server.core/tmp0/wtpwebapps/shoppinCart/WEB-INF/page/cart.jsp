<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div ng-app="app" ng-controller="ProductController">
<div ng-init="grtCart(${cartId})">
Clear Cart

<c:url" class="btn btn-success pull-right"> Check Out </c:url>
<table class="table table-striped">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th>
</tr>
</thead>

<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
</tr>

<tr>
<td>Remove</td>
</tr>

</table>
Total Price : {{calculateGrandTotal()}}

<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</div>
</div>
</body>
</html>