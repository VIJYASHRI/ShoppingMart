var app=angular.madole("app",[])
app.controller("ProductController",function($scope,$http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:8080/shoppingCart/cart/addCartItem/'+productId).success(function(){
			alert("Product successfully added to cart")
		})
	}
})