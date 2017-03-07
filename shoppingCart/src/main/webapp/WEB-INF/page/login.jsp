<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
ENTER USERNAME AND PASSWORD <br>
${error }
${logout }
${registrationSuccess }   

<!-- these 3 are model attribute, fr one value other two will be null -->
<form action="j_spring_security_check" method="POST">
Enter username <input type="text" name="username"><br>
Enter password <input type="password" name="password"><br>
 <input type="submit" value="submit">
</form>

</body>
</html>