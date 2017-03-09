package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/registerCustomer")  //registerForm=>editForm=>registerForm
	public String getRegistrationForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "registerCustomer";
	}

	@RequestMapping(value = "/registerCustomer", method = RequestMethod.POST)
	public String registerCustomer(@Valid @ModelAttribute(value="customer") Customer customer  
			,BindingResult result, Model model){
		if(result.hasErrors())
			return "redirect:/registerCustomer";
		try{
		customerService.saveCustomer(customer);
		}catch (Exception e){
			model.addAttribute("duplicateUserName","Username already exist. Please enter different username");
			System.out.println("Exception is " + e.getMessage());
			return "registerCustomer";
		}
		model.addAttribute("registrationSuccess","Registered successfully.. login with username and password");
		return "login";
	}
	
	@RequestMapping("/getAllCustomers")
	public String getAllCustomer(Model model) {
		List<Customer> customers = customerService.getAllCustomer();
		model.addAttribute("customerlist", customers);
		return "customerlist";
	}

	@RequestMapping("/viewCustomer")
	public String viewCustomer(Model model) {
		List<Customer> allCustomers = customerService.getAllCustomer();
		model.addAttribute("customer", allCustomers);
		return "viewCustomer";
	}
/*
	@RequestMapping("/deletecustomer/{id}")
	public String deleteCustomer(@PathVariable("id") int id) {
		Customer customer = customerService.getCustomerById(id);
		customerService.deleteCustomer(customer);
		return "redirect:/productlist";
	}
*/
	@RequestMapping(value="/editCustomer", method = RequestMethod.POST)
	public String editCustomerDetails(@Valid @ModelAttribute("customer") Customer customer, BindingResult result) {
		if (result.hasErrors())
			return "customerform";
		customerService.updateCustomer(customer);
		return "redirect:/editCustomer";

	}
}
