package com.niit.service;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface CategoryService {
	public void saveCategory(Category category);
	public List<Category> getCategory();
}