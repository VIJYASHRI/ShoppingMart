package com.niit.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.h2.engine.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Authorities;
import com.niit.model.Cart;
import com.niit.model.Customer;



@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SessionFactory sessionFactory;
	Logger logger=Logger.getLogger(CustomerDaoImpl.class);
	public CustomerDaoImpl(SessionFactory sessionFactory){
		super();
		this.sessionFactory=sessionFactory;
	}
	
	public void saveCustomer(Customer customer) {
	
	customer.getUsers().setEnabled(true);
	String username=customer.getUsers().getUsername(); //Assignment
	String role="ROLE_USER";
	
	Authorities authorities=new Authorities();      //set the values
	authorities.setUsername(username);
	authorities.setRole(role);
	sessionFactory.getCurrentSession().save(authorities);
	
	Cart cart=new Cart();
	customer.setCart(cart);
	cart.setCustomer(customer);
	sessionFactory.getCurrentSession().save(customer);
	logger.debug("==============================");
	
	}
	public Customer getCustomerById(int id) {
	return sessionFactory.getCurrentSession().get(Customer.class, id);
		}
	@Override
	public void updateCustomer(Customer customer) {
		sessionFactory.getCurrentSession().update(customer);
	}
	@Override
	public void deleteCustomer(Customer customer) {
		sessionFactory.getCurrentSession().delete(customer);
		
	}
	@Override
	public List<Customer> getAllCustomer() {
		
		return (List<Customer>) sessionFactory.getCurrentSession().createQuery("from Customer").list();
	}
	
}
	
