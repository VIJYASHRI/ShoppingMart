package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerDao {
	public void saveCustomer(Customer customer);
	public Customer getCustomerById(int id);
	public void updateCustomer(Customer customer);
	public void deleteCustomer(Customer customer);
	public List<Customer> getAllCustomer();
}


