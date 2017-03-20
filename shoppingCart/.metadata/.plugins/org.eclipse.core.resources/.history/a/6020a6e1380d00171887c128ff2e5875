package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.CustomerOrder;
@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	public void saveCustomerOrder(Cart cart) {
	CustomerOrder customerOrder=new CustomerOrder();	
	customerOrder.setCart(cart);	
	customerOrder.setCustomer(cart.getCustomer());
	customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
	customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
						//insert data in Customer table
	sessionFactory.getCurrentSession().save(customerOrder);
	
	
	//to update grandtotal in cart table
	
	List<CartItem> cartItems=cart.getCartItems();
	double grandTotal=0.0;
	for(CartItem cartItem:cartItems){
	grandTotal= grandTotal + cartItem.getTotalPrice();	
	}
	cart.setGrandTotal(grandTotal);  			//update cart set grandTotal=? where cartid=?
	sessionFactory.getCurrentSession().update(cart);
	}
}
