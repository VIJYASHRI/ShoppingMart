package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.service.CartService;
import com.niit.service.CustomerService;

@Controller
public class CartController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private CartService cartService;
	
@RequestMapping("/cart/getCartId")	
	public String getCartId(Model model){
	User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String Username=user.getUsername();
	Customer customer=CustomerService.getCustomerByUserName(username);
	Cart cart=customer.getCart();
	int CartId=cart.getId();
	model.addAttribute("cartId", CartId);
	return "cart";
	
	}
@RequestMapping("/cart/getCart/{cartId}")
	public @ResponseBody Cart getCart(@PathVariable int cartId){
	Cart cart=cartService.getCart(cartId);	
	return cart;
		}

}
