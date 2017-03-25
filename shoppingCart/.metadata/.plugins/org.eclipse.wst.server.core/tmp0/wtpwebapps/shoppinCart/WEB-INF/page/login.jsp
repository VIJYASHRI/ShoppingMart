<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
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

<div class="container"><center>
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>

    <button type="submit">Login</button>
    
   <!--  
    <input type="checkbox" checked="checked"> Remember me
  </div></center><br>
<center>
  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
 	</center>
  </div>
   -->
</form>

</body>
</html>