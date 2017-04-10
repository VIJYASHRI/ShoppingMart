<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div class="pageheader">
		<b>PRODUCT DETAILS</b>
		</div>
		<table class="table">
		
		 <tr>
		 <td></td>
		 <td><img src="<c:url value='/resources/images/cakes/img/${product.id}.png'/>" height="300px" width="450px"/></td>
		 </tr>
		 <tr>
		  <td>Product Name :</td>
		  <td>${product.name }</td>
		 </tr> 
		 <tr>
		  <td>Product Description :</td>
		  <td>${product.description }</td>
		 </tr>
		  <tr>
		  <td>Product Price :</td>
		  <td>${product.price }</td>
		 </tr>
		
		  <tr>
		  <td>Manufacturing Date :</td>
		  <td>${product.date }</td>
		 </tr>
		 
		
		 
	<%-- 	 <tr>			
			<td><a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
			</tr>
		 
		 
		</table>
	</div>
	
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
 --%>
 </table>	
</div>
 <script></script>
</body>
<%@ include file="footer.jsp"%>
</html>