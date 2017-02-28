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
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;
@Controller
public class ProductController {
@Autowired
	private ProductService productService;
@Autowired
	private CategoryService categoryService;

@RequestMapping(value="/products", method=RequestMethod.GET)
public String getProductForm(Model model){
	model.addAttribute("product", new Product());
	model.addAttribute("categories", categoryService.getCategory());
	return "products";
}
@RequestMapping(value="/addProduct", method=RequestMethod.POST)
public String saveProduct(@ModelAttribute("product") Product product, BindingResult result) {
	
	productService.saveProduct(product);
	return "redirect:/products";
}
@RequestMapping("/productlist")
public String getAllProduct(Model model){
	List<Product> products=productService.getAllProduct(); //Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	return "productlist";	
}
@RequestMapping("/viewproduct/{id}")
public String viewProduct(Model model){
	List<Product>allproducts=productService.getAllProduct();
	model.addAttribute("product",allproducts);
return "viewProduct";
}
@RequestMapping("/deleteproduct/{id}")
public String deleteProduct(@PathVariable("id") int id){
	Product product=productService.getProductById(id);
	 productService.deleteProduct(product);
	return "redirect:/productlist";
}

/**
 *    to display the form to edit product details
 */

@RequestMapping("/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	List<Product> product=productService.getAllProduct(); 
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategory());
	return "editproductform";
}
@RequestMapping("/editProduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,
		BindingResult result){
	if(result.hasErrors())
		return "productform";
	productService.updateProduct(product);
	return "redirect:/productlist";

}
@RequestMapping("/productsByCategory")
public String getProductsByCategory(@RequestParam (name="searchCondition") String searchCondition,
		Model model){
	List<Product> products=productService.getAllProduct();
	//Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productlist";
	}	



}