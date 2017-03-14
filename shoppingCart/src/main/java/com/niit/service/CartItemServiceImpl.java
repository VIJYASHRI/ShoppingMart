package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;

@Service(value="cartItemService")
@Transactional
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	public void saveCartItem(CartItem cartItem) {
	cartItemDao.saveCartItem(cartItem);
	}

	@Override
	public void deleteCartItem(CartItem cartItem) {
	
		
	}

	@Override
	public void getCartItem(int cartItemId) {
		
		
	}

	@Override
	public void removeAllCartItems(Cart cart) {
	
		
	}

}
