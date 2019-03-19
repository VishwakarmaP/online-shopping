package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.UserDAO;
import net.kzn.shoppingbackend.dto.Address;
import net.kzn.shoppingbackend.dto.Cart;
import net.kzn.shoppingbackend.dto.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Address address = null;
    private Cart cart = null;
    
    @BeforeClass
    public static void init() {
    	context = new AnnotationConfigApplicationContext();
    	context.scan("net.kzn.shoppingbackend");
    	context.refresh();
    	
    	userDAO = (UserDAO) context.getBean("userDAO");
    }
    
    
    /*@Test
    public void testAdd() {
    	
    	user=new User();
    	user.setFirstName("ram");
    	user.setLastName("vanshi");
    	user.setEmail("a@gmail.com");
    	user.setContactNumber("4433999883");
    	user.setRole("user");
    	user.setPassword("wewew");
    	
    	//add the user
    	assertEquals("Failed to add users", true, userDAO.addUser(user));
    	
    	address = new Address();
    	address.setAddressLineOne("343 sdf,asdfadsf,sdfdf");
    	address.setAddressLineTwo("dfd,dfdf,df");
    	address.setCity("mumbai");
    	address.setState("maharastra");
    	address.setCountry("india");
    	address.setPostalCode("400093");
    	address.setBilling(true);
    	
    	//link the user with the address using user id
    	address.setUserId(user.getId());
    	
    	//add the address
    	assertEquals("failed to add address", true, userDAO.addAddress(address));
    	
    	if(user.getRole().equals("user")) {
    		
    		//create a cart for this user
    		cart = new Cart();
    		cart.setUser(user);
    		
    		//add the cart
        	assertEquals("failed to add cart", true, userDAO.addCart(cart));
        	
    		//add a shipping address for this user
        	address = new Address();
        	address.setAddressLineOne("33 sdf,asdfadsf,sdfdf");
        	address.setAddressLineTwo("dfd,dfdf,df");
        	address.setCity("mumbai");
        	address.setState("maharastra");
        	address.setCountry("india");
        	address.setPostalCode("400093");
        	//set shipping to true
        	address.setShipping(true);
    		
        	//link it with the user
        	address.setUserId(user.getId());
        	
        	//add the shipping address
        	assertEquals("failed to add shipping address", true, userDAO.addAddress(address));
        	
    	}
    	
    }*/
    
    /*@Test
    public void testAdd() {
    	
    	user=new User();
    	user.setFirstName("ram");
    	user.setLastName("vanshi");
    	user.setEmail("a@gmail.com");
    	user.setContactNumber("4433999883");
    	user.setRole("user");
    	user.setPassword("wewew");
    	
    	if(user.getRole().equals("user")) {
    		
    		//create a cart for this user
    		cart = new Cart();
    		
    		cart.setUser(user);
    		
    		//attach crt with the user
    		user.setCart(cart);
    		
    	}
    	
    	//add the user
    	assertEquals("Failed to add users", true, userDAO.addUser(user));
    	
    }*/

    @Test
    public void testUpdateCart() {
    	//fetch the user by its email
    	
    	user = userDAO.getByEmail("a@gmail.com");
    	
    	//get the cart of the user
    	cart = user.getCart();
    	
    	cart.setGrandTotal(5555);
    	cart.setCartLines(3);
    	
    	assertEquals("failed to update the cart!", true, userDAO.updateCart(cart));
    	
    }

}
