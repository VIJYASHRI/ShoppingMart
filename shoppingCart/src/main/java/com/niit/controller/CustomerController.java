package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/registerCustomer")
	public String getRegistrationForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "registerCustomer";
	}

	@RequestMapping(value = "/registerCustomer", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		customerService.saveCustomer(customer);
		
		return "redirect:/home";

	}

	@RequestMapping("/getAllCustomers")
	public String getAllCustomer(Model model) {
		List<Customer> customers = customerService.getAllCustomer();
		model.addAttribute("customerlist", customers);
		return "customerlist";
	}

	@RequestMapping("/viewCustomer/{id}")
	public String viewCustomer(Model model) {
		List<Customer> allCustomers = customerService.getAllCustomer();
		model.addAttribute("customer", allCustomers);
		return "viewCustomer";
	}

	@RequestMapping("/deletecustomer/{id}")
	public String deleteCustomer(@PathVariable("id") int id) {
		Customer customer = customerService.getCustomerById(id);
		customerService.deleteCustomer(customer);
		return "redirect:/productlist";
	}

	@RequestMapping("/editCustomer")
	public String editCustomerDetails(@Valid @ModelAttribute("customer") Customer customer, BindingResult result) {
		if (result.hasErrors())
			return "customerform";
		customerService.updateCustomer(customer);
		return "redirect:/editCustomer";

	}
}
