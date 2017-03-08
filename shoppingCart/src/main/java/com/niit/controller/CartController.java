package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Controller
public class CartController {
	@Autowired
	private CustomerService customerService;
	
	public String getCartId(Model model){
	User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String Username=user.getUsername();
	Customer customer=CustomerService.getCustomerByUsername(username);
	Cart cart=customer.getCart();
	int CartId=cart.getId();
	model.addAttribute("cartId", cartId);
	return "cart";
	
	}
}
