package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public void saveProduct(Product product);
	public void updateProduct(Product product);
	public Product getProductById(int id);
	public void deleteProduct(Product product);
	public List<Product> getAllProduct();
}