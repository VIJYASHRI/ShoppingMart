package com.niit.dao;

import com.niit.model.Customer;

public interface CustomerDao {
	public void saveCustomer(Customer customer);
	public Customer getCustomerById(int id);
}


