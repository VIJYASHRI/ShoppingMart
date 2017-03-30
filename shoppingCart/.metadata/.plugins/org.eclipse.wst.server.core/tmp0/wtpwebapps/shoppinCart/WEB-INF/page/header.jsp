<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security"
			uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- dateform -->
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">

<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: cyan;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: grey;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: none
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<ul>
		<li><a href="home">Home</a></li>
		<li><a href="aboutUs">About Us</a></li>
		
		<c:url var="url" value="/admin/products"></c:url>
		
		<c:if test="${pageContext.request.userPrincipal.name !=null }">
		<!-- for admin access only, also add tag libs for security access for admin role -->
		
		<security:authorize access="hasRole('ROLE_ADMIN')">
		<li><a href="${url }">Add New Product</a></li>
		</security:authorize>
		
		<c:url var="allProducts" value="/all/product/productlist"></c:url>
		<li><a href="${allProducts}">Browse all products</a></li>

		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Select
				by Category</a>
			<div class="dropdown-content">
		<a href="products/productsByCategory?searchCondition=Birthday">Birthday</a>
        <a href="products/productsByCategory?searchCondition=New Arrivals">New Arrivals</a>
      
      	<a href="products/productsByCategory?searchCondition=Anniversary">Anniversary</a>
        <a href="products/productsByCategory?searchCondition=Special Occasions">Special Occasions</a>
			</div>
				<%-- <c:url var="url_1"
					value="/products/productsByCategory?searchCondition=New Arrivals">
				</c:url>
				<li><a href="${url_1} }">New Arrivals</a></li>
				<c:url var="url_2"
					value="/products/productsByCategory?searchCondition=Birthday"></c:url>
				<li><a href="${url_2} }">Birthday</a></li>
				<c:url var="url_3"
					value="/products/productsByCategory?searchCondition=Anniversary"></c:url>
				<li><a href="${url_3} }">Anniversary</a></li>
				<c:url var="url_4"
					value="/products/productsByCategory?searchCondition=Special Occasions"></c:url>
				<li><a href="${url_4} }">Special Occasions</a></li>
				
	</li>
	</ul> --%>
		<a href="">WelCome ${pageContext.request.userPrincipal.name }</a>
		</c:if>
		
		<c:if test="${pageContext.request.userPrincipal.name ==null }">
		<li><a href="<c:url value="/login" ></c:url>">login</a></li>
		<li><a href="<c:url value="/registerCustomer"></c:url>">Register</a></li>
		</c:if>
		<c:if test="${pageContext.request.userPrincipal.name !=null }">
		<li><a href="<c:url value="/j_spring_security_logout" ></c:url>">logout</a></li>
	     </c:if>
	
	</ul>
	