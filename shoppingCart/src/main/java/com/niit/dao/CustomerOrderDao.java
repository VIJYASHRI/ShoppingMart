package com.niit.dao;

import com.niit.model.CustomerOrder;

public interface CustomerOrderDao {
	public void saveCustomerOrder(CustomerOrder customerOrder);
	public void deleteCustomerOrder(CustomerOrder customerOrder);
}
