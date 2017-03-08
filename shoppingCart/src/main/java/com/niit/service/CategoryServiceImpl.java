package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;
@Repository
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryDao categoryDao;
	public List<Category> getCategory(){
		return categoryDao.getCategories();
	}

	public void saveCategory(Category category) {
				
	}
	
}


