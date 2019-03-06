package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.ProductDAO;
import net.kzn.shoppingbackend.dto.Product;

public class ProductTest {

	private static AnnotationConfigApplicationContext context;
	
	private static ProductDAO productDAO;
	
	private Product product;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
	}
	
	/*@Test
	public void testCRUDProduct() {
		
		product = new Product();
		
		product.setName("oppo selfie S53");
		product.setBrand("oppo");
		product.setDescription("this is samsung description");
		product.setUnitPrice(4500);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("something went wrong while inserting a new product1", true, productDAO.add(product));
		
		//reading and updating category
		
		product = productDAO.get(2);
		product.setName("Samsung galaxy s7");
		assertEquals("something went wrong while updating a existing product!", true, productDAO.update(product));
		
		assertEquals("something went wrong while deleting a existing product!", true, productDAO.delete(product));
		
		assertEquals("something went wrong while fetching the list of products!", 5, productDAO.list().size());
		
	}*/
	
	@Test
	public void testListActiveProduct() {
		
		assertEquals("something went wrong while fetching the list of products!", 4, productDAO.listActiveProducts().size());
		
	}
	
	@Test
	public void testListActiveByCategory() {
		
		assertEquals("something went wrong while fetching the list of products!", 1, productDAO.listActiveProductsByCategory(1).size());
		assertEquals("something went wrong while fetching the list of products!", 2, productDAO.listActiveProductsByCategory(3).size());
		
	}
	
	@Test
	public void testGetLatestActiveProduct() {
		
		assertEquals("something went wrong while fetching the list of products!", 3, productDAO.getLatestActiveProducts(3).size());
		
	}
	
}
