package com.niit.dao;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.BillingAddress;
@Repository
@Transactional
	public class BillingAddressDaoImpl implements BillingAddressDao {
		@Autowired
		private SessionFactory sessionFactory;
		 BillingAddressDaoImpl(SessionFactory sessionFactory){
			super();
			this.sessionFactory=sessionFactory;
		}

		public void saveBillingAddress(BillingAddress billingAddress) {
			sessionFactory.getCurrentSession().save(billingAddress);
			
		}
	
		
}
