<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Name of the Product: ${productObj.productName}<br><br>
Description: ${productObj.description }<br><br>
Price: ${productObj.price }<br><br>
Color: ${productObj.color }<br><br>
Quantity: ${productObj.quantity }<br><br>

<a href="http://localhost:8080/shoppingCart/home">Home Page</a>
</body>
<%@ include file="footer.jsp" %>
</html>