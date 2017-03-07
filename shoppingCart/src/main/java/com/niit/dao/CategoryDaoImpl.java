package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {
@Autowired
	private SessionFactory sessionFactory;
private List<Category> categories;
public CategoryDaoImpl(SessionFactory sessionFactory){
	super();
	this.sessionFactory=sessionFactory;

}
public List<Category> getCategories() {
	return categories;
}

}
