<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
		
		  <script>
			$(function(){
			$('input[name=mfg]').datepicker({
			format:'YYYY-mm-dd'
								});	
						});
		   </script>  

</head>
<body>
<div class="container-wrapper">
<div class="container">
<c:url value="/editProduct" var="url"></c:url>
<form:form action="${url }/${product.id}"  commandName="product" class="form-horizontal" enctype="multipart/form-data"><br><br>

<div class="form-group">
      <label class="control-label  col-sm-2" for="name">Product Name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="name" placeholder="Enter the name of product"/>
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="weight">Weight:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="weight" placeholder="Enter weight of product"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="discription">Description:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="description"  placeholder="Enter the discription of product"/>
      </div>
    </div>
    
   <div class="form-group">
      <label class="control-label col-sm-2" for="flavour">Flavor:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="flavour" placeholder="Enter the flavour of product"/>
      </div>
    </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="quantity">Quantity:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="quantity"  placeholder="Enter quantity of product"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="price">Price:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="price" placeholder="Enter the price of product"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" class="radio-inline" for="category">Category</label>
   
       <c:forEach var="c" items="${categories}">
        <form:radiobutton path="category.id" value="${c.id}" />${c.categoryDetails }
     </c:forEach>
      </div>

    
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="date">Date of delivery:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="date"  placeholder="Enter manufacturing date of product"/>
      </div>
    </div> 
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="image">Image:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="image"  type="file"/>
      </div>
    </div> 
<input type="submit" value="Edit Product" class="btn btn-default">
</form:form>

</div>


</div>
</body>
</html>