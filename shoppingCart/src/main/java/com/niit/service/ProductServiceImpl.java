package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public void saveProduct(Product product) {
		productDao.saveProduct(product);
	}

	public Product getProductById(int id) {
		return (Product)productDao.getProductById(id); 
	}

	public void updateProduct(Product product) {
		

	}

	public void deleteProduct(Product product) {
		
	}

	public List<Product> getAllProduct() {

		return null;
	}

}	
