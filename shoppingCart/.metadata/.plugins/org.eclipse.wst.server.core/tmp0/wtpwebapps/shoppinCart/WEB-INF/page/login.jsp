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
 <div><center>
<h2>ENTER USERNAME AND PASSWORD </h2></center>
</div><br>
${error }
${logout }
${registrationSuccess }   

<!-- these 3 are model attribute, fr one value other two will be null -->
<form action="j_spring_security_check" method="POST">

<div><center>
<input type="text" size="60" name="username" placeholder="username"><br><br>
<input type="password" size="40" name="password" placeholder="Enter password"><br><br>
 <input type="submit" value="submit">
 </center>
 </div>
</form>
</body>
</html>