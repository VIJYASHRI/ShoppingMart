package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;

@Controller
public class CustomerController {
	@RequestMapping("/registerCustomer")
	public String getRegistrationForm(Model model){
	model.addAttribute("customer", new Customer());
	return "registerCustomer";
	}
}
