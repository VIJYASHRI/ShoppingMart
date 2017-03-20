<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:forEach var="c" items="${categories }">
			<li><a href="<c:url value="/products/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>">${c.categoryDetails }</a></li>
			</c:forEach>
			<c:url var="url_1" value="/products/productsByCategory?searchCondition=New Arrivals"> </c:url>
			<li><a href="${url_1} }">New Arrivals</a></li>
			<c:url var="url_2" value="/products/productsByCategory?searchCondition=Birthday"></c:url>
			<li><a href="${url_2} }">Birthday</a></li>
			<c:url var="url_3" value="/products/productsByCategory?searchCondition=Anniversary"></c:url>
			<li><a href="${url_3} }">Anniversary</a></li>
			<c:url var="url_4" value="/products/productsByCategory?searchCondition=Special Occasions"></c:url>
			<li><a href="${url_4} }">Special Occasions</a></li>
			</ul>
			</li>
</body>
</html>