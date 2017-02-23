package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ShippingAddressDao;
import com.niit.model.ShippingAddress;

@Service
@Transactional
public class ShippingAddressServiceImpl implements ShippingAddressService {

	@Autowired
	private ShippingAddressDao shippingAddressDao;

	@Override
	public void saveShippingAddress(ShippingAddress shippingAddress) {
		shippingAddressDao.saveShippingAddress(shippingAddress);
	}
	

}
