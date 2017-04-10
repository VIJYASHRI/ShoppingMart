
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
                   <th>Action</th>    <!-- Action = view/edit/delete -->
				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">
				<tr>
					<td>
					
					<img src="<c:url value='/resources/images/cakes/img/${p.id}.png'/>" height="80" width="90"/>
					</td>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.weight }</td>
					<td>${p.quantity }</td>
					<td>${p.flavour }</td>
					<td>${p.price }</td>
					<td>${p.category.categoryDetails}</td>
					
					
					
					<td>
					<c:url var="viewProduct" value="/viewProduct?id=${p.id }"></c:url>
				
					<a href="${viewProduct }"><span class="glyphicon glyphicon-info-sign"></span></a>
					 <security:authorize access="hasRole('ROLE_ADMIN')">
					<c:url var="delete" value="/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/editform?id=${p.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </security:authorize></td>
				</tr>
			</c:forEach>
		</table>
<!-- <button type="button" class="btn btn-success">Hello</button> -->
			
	</div>
</body>
</html>