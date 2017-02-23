package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Customer;
@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SessionFactory sessionFactory;
	public CustomerDaoImpl(SessionFactory sessionFactory){
		super();
		this.sessionFactory=sessionFactory;
	}
	@Override
	public void saveCustomer(Customer customer) {
		sessionFactory.getCurrentSession().save(customer);
	}
	@Override
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
	
