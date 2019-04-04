package net.kzn.shoppingbackend.dao;

import java.util.List;

import net.kzn.shoppingbackend.dto.Address;
import net.kzn.shoppingbackend.dto.User;

public interface UserDAO {

	//add an user
	boolean addUser(User user);
	
	User getByEmail(String email);
	
	//add an address
	boolean addAddress(Address address);
	//alternate
	//Address getBillingAddress(int userID);
	//List<Address> listShippingAddress(int userID);
	
	Address getBillingAddress(User user);
	List<Address> listShippingAddress(User user);
	
}
