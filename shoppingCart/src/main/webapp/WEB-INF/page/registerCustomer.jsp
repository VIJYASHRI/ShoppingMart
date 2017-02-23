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

</head>
<body>
<div class="container-wrapper">
<div class="container">
<h2> Register</h2>
<table align="center" cellspacing="2">
<c:url var="url" value="/registerCustomer"></c:url>
<br><br>
<form:form action="${url }" commandName="customer" method="post">
<div class="form-group">
<form:label path="firstname">FIRST NAME :</form:label>
<form:input path="firstname"/>
</div>

<div class="form-group">
<form:label path="lastname">LAST NAME :</form:label>
<form:input path="lastname"></form:input>
</div>
<div class="form-group">
<form:label path="email">EMAIL :</form:label>
<form:input path="email"></form:input>
</div>
<div class="form-group">
<form:label path="phoneNumber">PHONE NUMBER :</form:label>
<form:input path="phoneNumber"></form:input>
</div>

<div class="form-group">
<form:label path="users.username">USERNAME :</form:label>
<form:input path="users.username"></form:input>
</div>
<div class="form-group">
<form:label path="users.password">PASSWORD :</form:label>
<form:input path="users.password" type="password"></form:input>
</div>
 

<div class="form-group">
<form:label path="billingAddress.apartmentNumber">APARTMENT NUMBER :</form:label>
<form:input path="billingAddress.apartmentNumber"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.streetName">STREET NAME :</form:label>
<form:input path="billingAddress.streetName"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.city">CITY :</form:label>
<form:input path="billingAddress.city"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.state">STATE :</form:label>
<form:input path="billingAddress.state"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.country">COUNTRY :</form:label>
<form:input path="billingAddress.country"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.zip">ZIPCODE :</form:label>
<form:input path="billingAddress.zip"></form:input>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentNumber">APARTMENT NUMBER :</form:label>
<form:input path="shippingAddress.apartmentNumber"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.streetName">STREET NAME :</form:label>
<form:input path="shippingAddress.streetName"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.city">CITY </form:label>
<form:input path="shippingAddress.city"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.state">STATE :</form:label>
<form:input path="shippingAddress.state"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.country">COUNTRY :</form:label>
<form:input path="shippingAddress.country"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.zip">ZIPCODE :</form:label>
<form:input path="shippingAddress.zip"></form:input>
</div>

<input type="submit" value="register">

</form:form>
</table>
</div>
</div>
</body>
</html>
