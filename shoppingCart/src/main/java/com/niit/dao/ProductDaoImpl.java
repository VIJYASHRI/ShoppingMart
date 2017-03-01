package com.niit.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{
	@Autowired
	private SessionFactory sessionFactory;
	Logger logger=Logger.getLogger(CustomerDaoImpl.class);
	public ProductDaoImpl(SessionFactory sessionFactory){
		super();
		this.sessionFactory=sessionFactory;

	}
	public void saveProduct(Product product) {
		logger.debug("==============");
		sessionFactory.getCurrentSession().save(product);
	}
	
	public void updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
	}
	public Product getProductById(int id) {
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}
	public void deleteProduct(Product product) {
		sessionFactory.getCurrentSession().delete(product);
		
	}
	public List<Product> getAllProduct() {
		
		return (List<Product>) sessionFactory.getCurrentSession().createQuery("from Product").list();
	}
	

}


