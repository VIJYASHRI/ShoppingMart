<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
    background-color: lightgrey;
    background-image: url("file:///C:/Users/VIJYA%20SHRI/Desktop/PK%20PRJ/ShoppingMart-master/shoppingCart/src/main/webapp/WEB-INF/resources/images/1bg.jpg");
    background-size: cover;
}


</style>
</head>
<body>
  <div class="container">
  <form action="<c:url value='/j_spring_security_check'></c:url>"  method="post" class="form-horizontal">


     <p1>${error}
		${logout}
		${registrationSuccess }</p1>
    <div class="form-group">
      <label class="control-label col-sm-2" for="username"></label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="username" placeholder="Enter user name"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="password"></label>
      <div class="col-sm-10">
        <input class="form-control" type="password" name="password" placeholder="Enter password"/>
      </div>
    </div>
    </form>
    </div>
</body>
</html>