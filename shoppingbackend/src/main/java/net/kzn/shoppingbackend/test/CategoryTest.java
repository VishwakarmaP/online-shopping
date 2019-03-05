package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

public class CategoryTest {
	
	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
	/*@Test
	public void testAddCategory() {
		
		category = new Category();
		
		category.setName("Laptop");
		category.setDescription("desciption for laptop");
		category.setImageURL("cat_2.jpg");
		
		assertEquals("Succesfully added a category inside the table!", true, categoryDAO.add(category));
		
		
	}*/
	
	/*@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(2);
		
		assertEquals("Succesfully fetched a single category from the table!", "Laptop", category.getName());
	}*/
	
	/*@Test
	public void testUpdateCategory() {
		
		category = categoryDAO.get(2);
		
		category.setName("Lappy");
		
		assertEquals("Succesfully update a single category from the table!", true, categoryDAO.update(category));
	}*/
	
	/*@Test
	public void testDeleteCategory() {
		
		category = categoryDAO.get(2);
		
		assertEquals("Succesfully delete a single category in the table!", true, categoryDAO.delete(category));
	}*/
	
	/*@Test
	public void testListCategory() {
		
		assertEquals("Succesfully feched the list of category in the table!", 3, categoryDAO.list().size());
	}*/
	
	@Test
	public void testCRUDCategory() {
		
		//add operation
		category = new Category();
		
		category.setName("Laptop");
		category.setDescription("desciption for laptop");
		category.setImageURL("cat_2.jpg");
		
		assertEquals("Succesfully added a category inside the table!", true, categoryDAO.add(category));
		
		category = new Category();
		
		category.setName("Television");
		category.setDescription("desciption for Television");
		category.setImageURL("cat_2.jpg");
		
		assertEquals("Succesfully added a category inside the table!", true, categoryDAO.add(category));
		
		//update operation
		category = categoryDAO.get(1);
		
		category.setName("Lappy");
		
		assertEquals("Succesfully update a single category from the table!", true, categoryDAO.update(category));
	
		//delete operation
		category = categoryDAO.get(2);
		
		assertEquals("Succesfully delete a single category in the table!", true, categoryDAO.delete(category));

		//fetched operation
		assertEquals("Succesfully feched the list of category in the table!", 1, categoryDAO.list().size());

	}
	
}
