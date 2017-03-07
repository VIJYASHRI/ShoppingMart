
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script>

$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>
</head>
<body>
	<div class="container">

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Product Image</th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Weight</th>
					<th>Quantity</th>
					<th>Flavor</th>
					<th>Price</th>
					<th>Category</th>
                   <th>View/Edit/Delete</th>
				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">
				<tr>
					<td>${p.image }</td>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.weight }</td>
					<td>${p.quantity }</td>
					<td>${p.flavour }</td>
					<td>${p.price }</td>
					<td>${p.category.categoryDetails}</td>
				
					<c:url var="viewProduct" value="/product/viewProduct/${p.id }"></c:url>
					<td>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
					 
					<c:url var="delete" value="/productlist/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/productlist/editform/${p.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </td>
				</tr>
			</c:forEach>
		</table>
<!-- <button type="button" class="btn btn-success">Hello</button> -->
			
	</div>
</body>
</html>