package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;
	
	public void saveCustomer(Customer customer){
	   customerDao.saveCustomer(customer);	
	}
	/*
	public Customer  getCustomerById(int id) {
		return (Customer)customerDao.getCustomerById(id);
	}*/

	public void updateCustomer(Customer customer) {
		customerDao.updateCustomer(customer);
	}
	
	public void deleteCustomer(Customer customer) {
		customerDao.deleteCustomer(customer);
	}

	public List<Customer> getAllCustomer() {
		return customerDao.getAllCustomer();
	}
	
	public void saveCustomer(String username) {
		
	}
	@Override
	public Customer getCustomerByUserName(String username) {
	
		return null;
	}

}
