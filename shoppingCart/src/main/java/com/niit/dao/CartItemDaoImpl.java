package com.niit.dao;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {
	@Autowired
	
	private CartItem cartItem;
	private SessionFactory sessionFactory;
	Logger logger=Logger.getLogger(CartItemDaoImpl.class);
	public CartItemDaoImpl(SessionFactory sessionFactory){
		super();
		this.sessionFactory=sessionFactory;
	}
	public void saveCartItem(CartItem cartItem) {
		logger.debug("==============");
		sessionFactory.getCurrentSession().save(cartItem);
	}
	public void updateCartItem(CartItem cartItem) {
		sessionFactory.getCurrentSession().update(cartItem);
	}
	

	public void removeAllCartItems(Cart cart) {
		
	}
	
	public void removeCartItem(CartItem cartItem) {
		
	}
	
	public CartItem getCartItem(int cartItemId) {
		sessionFactory.getCurrentSession().get(CartItem.class, cartItemId);
		return cartItem;
	}
}	
