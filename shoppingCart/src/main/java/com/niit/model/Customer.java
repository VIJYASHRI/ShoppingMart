package com.niit.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotEmpty(message="please enter first name")
	private  String firstname;
	@NotEmpty(message="please enter last name")
	private String lastname;
	@NotEmpty(message="please enter email name")
	private String email;
	@NotEmpty(message="please enter phoneNumber")
	@Length(max=10, min=10)
	private String phoneNumber;
	
	@OneToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="user_id")
	private Users users;
	
	@OneToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="BillingAddresss_id")
	private BillingAddress billingAddress;
	
	@OneToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="ShippingAddress_id")
	private ShippingAddress shippingAddress;
	
	@OneToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="cart_id")
	private Cart cart;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
