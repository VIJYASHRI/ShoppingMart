
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body  {
    background-image: url("file:///C:/Users/VIJYA%20SHRI/Desktop/PK%20PRJ/ShoppingMart-master/shoppingCart/src/main/webapp/WEB-INF/resources/images/cakes/img/wall2.jpg");
    background-size: cover;
}
</style>
<body>
<center>
<h2> CAKES FOR YOU</h2><br>
<h3>WE BAKE FOR YOU...!</h3></center>

<div class="container">
	<div class="row">
		<div class="span6">
            <form>
                <div class="controls controls-row">
                    <input id="name" name="name" type="text" class="span3" placeholder="Name"> 
                    <input id="email" name="email" type="email" class="span3" placeholder="Email address">
                </div>
                <div class="controls">
                    <textarea id="message" name="message" class="span6" placeholder="Your Message" rows="5"></textarea>
                </div>
                  
                <div class="controls">
                    <button id="contact-submit" type="submit" class="btn btn-primary input-medium pull-right">Send</button>
                </div>
            </form>
        </div>
	</div>
</div>

</body>
</html>