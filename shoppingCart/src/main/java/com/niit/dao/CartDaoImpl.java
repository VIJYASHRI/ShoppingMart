package com.niit.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository
public class CartDaoImpl implements CartDao{
@Autowired
	private SessionFactory sessionFactory;
   private Cart cart;
public CartDaoImpl(SessionFactory sessionFactory){
	super();
	this.sessionFactory=sessionFactory;
}
	public Cart getCart(int cartId) {
		
		return cart;
	
	}

}
