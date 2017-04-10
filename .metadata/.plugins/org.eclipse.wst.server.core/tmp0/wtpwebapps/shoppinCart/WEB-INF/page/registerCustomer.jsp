<%@ include file="header.jsp" %>
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


<style>
body {
    background-color: lightgrey;
    background-image: url("file:///C:/Users/VIJYA%20SHRI/Desktop/PK%20PRJ/ShoppingMart-master/shoppingCart/src/main/webapp/WEB-INF/resources/images/cakes/img/wall6.jpg");
    background-size: cover;
}
</style>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<h2> Register</h2>
<table align="center" cellspacing="2">
<c:url var="url" value="/registerCustomer"></c:url>

<form:form action="${url }" commandName="customer" method="post" class="form-horizontal">

<div class="form-group">
	<label class="control-label  col-sm-2" for="firstname">FIRST NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="firstname" placeholder="Enter the first name"/>
      </div>
</div>

<div class="form-group">
<label class="control-label  col-sm-2" for="lastname">LAST NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter the last name"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="email">EMAIL:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="email" placeholder="Enter email"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="phoneNumber">CONTACT NUMBER:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="phoneNumber" placeholder="Enter phoneNumber"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="users.username">USER NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="users.username" placeholder="Enter username"/>
      </div>
</div>
 <div class="form-group">
<label class="control-label  col-sm-2" for="users.password">PASSWORD:</label>
      <div class="col-sm-10">
        <form:input class="form-control" type="password" path="users.password" placeholder="Enter password"/>
      </div>
</div>

<div class="form-group">
<label class="control-label  col-sm-2" for="billingAddress.apartmentNumber">APARTMENT NUMBER:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingAddress.apartmentNumber" placeholder="Enter apartmentNumber"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="billingAddress.streetName">STREET NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingAddress.streetName" placeholder="Enter StreetName"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="billingAddress.city">CITY:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingAddress.city" placeholder="Enter city"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="billingAddress.state">STATE:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingAddress.state" placeholder="Enter state"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="billingAddress.country">COUNTRY:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingAddress.country" placeholder="Enter country"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="billingAddress.zip">ZIP:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingAddress.zip" placeholder="Enter zip"/>
      </div>
</div>

<div class="form-group">
<label class="control-label  col-sm-2" for="shippingAddress.apartmentNumber">APARTMENT NUMBER:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingAddress.apartmentNumber" placeholder="Enter apartmentNumber"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="shippingAddress.streetName">STREET NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingAddress.streetName" placeholder="Enter StreetName"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="shippingAddress.city">CITY:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingAddress.city" placeholder="Enter city"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="shippingAddress.state">STATE:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingAddress.state" placeholder="Enter state"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="shippingAddress.country">COUNTRY:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingAddress.country" placeholder="Enter country"/>
      </div>
</div>
<div class="form-group">
<label class="control-label  col-sm-2" for="shippingAddress.zip">ZIP:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingAddress.zip" placeholder="Enter zip"/>
      </div>
</div>
<input type="submit" value="register">

</form:form>
</table>
</div>
</div>
</body>
</html>
