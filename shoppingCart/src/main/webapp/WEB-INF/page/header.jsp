<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://WEB-INF/resources/css/bootstrap.min.css">
  <script src="/WEB-INF/resources/js/jquery-3.1.1/jquery.min.js"></script>
  <script src="/WEB-INF/resources/js/bootstrap.min.js"></script>
  
   <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> <!-- dateform -->
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
    
    <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: skyblue;
}

li {
    float: left;
}

li a {
    display: block;
    color: black;
    text-align: center;
    padding: 15px 15px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: pink;  //bg colour of courosel
}
</style>  
</head>
<body>
<nav class="navbar navbar-default">
<div class="container-fluid">
<ul class="nav navbar-nav">
    <li class="active">
   <li> <a href="home">Home</a> </li>
   <li><a href="aboutUs">About Us</a></li>
    <li><a href="<c:url value="/registerCustomer"></c:url>">Register</a></li>
   <c:url var="url" value="/products"></c:url>

   <li><a href="${url }">Add New Product</a></li>
   
   <c:url var="allProducts" value="/Products"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
   
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			
			<c:forEach var="c" items="${categories }">
			<li>
			<a href="<c:url value="/products/productsByCategory?searchCondition=${c.categoryDetails }"></c:url>">
			${c.categoryDetails }</a></li>
			</c:forEach>
			</ul>
			</li>
			
</ul>
</div>

</nav>

</body>
</html>