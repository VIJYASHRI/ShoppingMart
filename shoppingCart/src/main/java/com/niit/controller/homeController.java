package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.service.CategoryService;

@Controller
public class homeController {
	
	public homeController(){
	
	}
	
	@Autowired
	private CategoryService categoryService;
	
@RequestMapping(value={"/","/home"})
public String home(HttpSession session){
	session.setAttribute("categories", categoryService.getCategory());
	return "home";
}
@RequestMapping("/aboutUs")
public String aboutUs(){
	
	return "aboutUs";
}
@RequestMapping("/login")
public String login(){
	return "login";
}
}
