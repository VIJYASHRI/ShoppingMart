package com.niit.service;

import com.niit.model.CustomerOrder;

public interface CustomerOrderService {
	public CustomerOrder getCustomerOrder(int customerOrderId);
	public void saveCustomerOrder(CustomerOrder customerOrder);
	public void deleteCustomerOrder(CustomerOrder customerOrder);

	

}
