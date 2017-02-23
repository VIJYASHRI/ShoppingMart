<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">
<h3>Edit Customer Details</h3>
<c:url value="/editCustomer" var="url"></c:url>
<form:form action="${url }"  commandName="customer">

<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>

<div class="form-group">
<label for="firstname">First Name :</label>
<form:input path="firstname" class="form-control"/>
<form:errors path="firstname" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="lastname">LastName :</label>
<form:input path="lastname" class="form-control"/>
<form:errors path="lastname" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="email">Email :</label>
<form:input path="email" class="form-control" />
<form:errors path="email" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="phoneNumber">PhoneNumber :</label>
<form:input path="phoneNumber" class="form-control"/>
<form:errors path="phoneNumber" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="username">Username :</label>
<form:input path="username" class="form-control"/>
<form:errors path="username" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="password">Password :</label>
<form:input path="password" class="form-control" />
<form:errors path="password" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="apartmentNumber">Apartment Number :</label>
<form:input path="apartmentNumber" class="form-control" />
<form:errors path="apartmentNumber" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="streetName">Street Name :</label>
<form:input path="streetName" class="form-control" />
<form:errors path="streetName" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="city">City :</label>
<form:input path="city" class="form-control" />
<form:errors path="city" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="email">Email</label>
<form:input path="email" class="form-control" />
<form:errors path="email" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="state">State :</label>
<form:input path="state" class="form-control" />
<form:errors path=state" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="country">Country :</label>
<form:input path="country" class="form-control" />
<form:errors path="country" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="zip">ZIP :</label>
<form:input path="zip" class="form-control" />
<form:errors path="zip" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="apartmentNumber">Apartment Number :</label>
<form:input path="apartmentNumber" class="form-control" />
<form:errors path="apartmentNumber" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="streetName">Street Name :</label>
<form:input path="streetName" class="form-control" />
<form:errors path="streetName" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="city">City :</label>
<form:input path="city" class="form-control" />
<form:errors path="city" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="state">State :</label>
<form:input path="state" class="form-control" />
<form:errors path="state" cssStyle="color:#ff0000"></form:errors>
</div>
<div class="form-group">
<label for="country">Country :</label>
<form:input path="country" class="form-control" />
<form:errors path="country" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="zip">ZIP :</label>
<form:input path="zip" class="form-control" />
<form:errors path="zip" cssStyle="color:#ff0000"></form:errors>
</div>


<input type="submit" value="Edit Customer" class="btn btn-default">
</form:form>

</div>

<input type="submit" value="Done">

</div>
</body>
</html>