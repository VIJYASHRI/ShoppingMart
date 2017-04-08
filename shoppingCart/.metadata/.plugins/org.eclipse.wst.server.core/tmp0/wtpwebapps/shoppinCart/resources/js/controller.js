var app=angular.madole("app",[])
app.controller("ProductController",function($scope,$http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:8080/shoppingCart/cart/addCartItem/'+productId).success(function(){
			alert("Product successfully added to cart")
		})
	}
	$scope.getCart=function(cartId){
		$scope.cartId=cartId;
		console.log("cart id is " + cartId)
		$http.get('http://localhost:8080/shoppingCart/cart/getCart/'+cartId).success(function(data){
		$scope.cart=data
		})
		}

		$scope.removeFromCart=function(cartItemId){
		console.log('cartitem to be removed is ' + cartItemId);
		$http.put('http://localhost:8080/shoppingCart/cart/removeCartItem/'+cartItemId).success(function(){
		$scope.getCart($scope.cartId)
		})
		}

		$scope.clearCart=function(){
		$http.put('http://localhost:8080/shoppingCart/cart/removeAllCartItems/'+$scope.cartId).success(function(){
		$scope.getCart($scope.cartId)
		})
		}

		$scope.calculateGrandTotal=function(){
		var grandTotal=0.0;
		for(var i=0;i<$scope.cart.cartItems.length;i++){
		grandTotal=grandTotal+$scope.cart.cartItems[i].totalPrice;
		}
		return grandTotal;
		}

})