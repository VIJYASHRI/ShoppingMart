package com.niit.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.ShippingAddress;

@Repository
@Transactional
	public class ShippingAddressDaoImpl implements ShippingAddressDao {
		@Autowired
		private SessionFactory sessionFactory;
		 ShippingAddressDaoImpl(SessionFactory sessionFactory){
			super();
			this.sessionFactory=sessionFactory;
		}
		@Override
		public void saveShippingAddress(ShippingAddress shippingAddress) {
			sessionFactory.getCurrentSession().save(shippingAddress);	
			
		}

}
