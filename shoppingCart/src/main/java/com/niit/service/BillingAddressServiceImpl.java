package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.BillingAddressDao;
import com.niit.model.BillingAddress;

@Service
@Transactional
public class BillingAddressServiceImpl implements BillingAddressService  {
	@Autowired
	private BillingAddressDao billingAddressDao;

	@Override
	public void saveBillingAddress(BillingAddress billingAddress) {
		billingAddressDao.saveBillingAddress(billingAddress);
		
	}

}
