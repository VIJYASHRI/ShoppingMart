package com.niit.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {
	@Autowired
	private SessionFactory sessionFactory;
	public CartItemDaoImpl(SessionFactory sessionFactory){
		super();
		this.sessionFactory=sessionFactory;
	}
	public void saveCartItem(CartItem cartItem) {
		
	}
}	
