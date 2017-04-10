<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    
</head>
<body>
<%@ include file="header.jsp" %><br>
<div class="container">
	<form:form action="addProduct" method="POST" commandName="product" class="form-horizontal" enctype="multipart/form-data">
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
        <form:radiobutton path="category.id" value="${c.id}"/>${c.categoryDetails }
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
      <div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
      <input type="submit" value="submit">  
      </div>
    </div>
    
    </form:form>
</div>
</body>
</html>