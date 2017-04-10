 <%@ include file="header.jsp" %>

  <style>
  body{
  background-color: lightgrey;
  background-size: cover;
  }
  
  .carousel-inner > .item > cakes,
  .carousel-inner > .item > a > cakes {
      width: 80%;
      margin: auto;
      max-height:400px;
  }
  </style>
</head>
<body><center>
 <h2>WelCome to my page</h2>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
    
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
      <li data-target="#myCarousel" data-slide-to="7"></li>
      <li data-target="#myCarousel" data-slide-to="8"></li>
      <li data-target="#myCarousel" data-slide-to="9"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/b1.png" alt="Cakes">
                  
          
      </div>

      <div class="item">
         <img src="${pageContext.request.contextPath }/resources/images/cakes/img/c13.jpg" alt="Cakes" >
                  
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/pastel-cake-image.jpg" alt="Cakes" >
                  
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/c14.jpg" alt="Cakes" >
                  
      </div>
  
    <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/c16.jpg" alt="Cakes" >
                  
      </div>
      
        <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/c2.jpg" alt="Cakes" >
                  
      </div>
      
        <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/c8.jpg" alt="Cakes" >
                  
      </div>
      
        <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/fruitcake.png" alt="Cakes" >
                  
      </div>
      
        <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/c3.jpg" alt="Cakes" >
                  
      </div>
      
        <div class="item">
        <img src="${pageContext.request.contextPath }/resources/images/cakes/img/Cake-choco.jpg" alt="Cakes" >
                  
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<!-- <div class="container">
  <ul class="nav navbar-nav">
      <li class="active">
      <li><a href="viewProduct">View Products</a></li>
      <li><a href="productlist">Product list</a></li> 
      <li><a href="#">About Us</a></li>
    </ul><br>

  </div> -->
</center>
</body>
<%@ include file="footer.jsp" %>
</html>
    