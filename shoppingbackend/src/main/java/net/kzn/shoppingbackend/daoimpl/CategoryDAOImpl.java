package net.kzn.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories=new ArrayList<>();
	static {
		
		Category category=new Category();
		category.setId(1);
		category.setName("Televesion");
		category.setDescription("desciption for televesion");
		category.setImageURL("cat_1.jpg");
		categories.add(category);
		
		//second category;
		category=new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("desciption for mobile");
		category.setImageURL("mob_1.jpg");
		categories.add(category);
		
		//third
		category=new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("desciption for laptop");
		category.setImageURL("lap_1.jpg");
		categories.add(category);
		
		
		
	}
	
	
	public List<Category> list() {
		
		
		return categories;
	}


	@Override
	public Category get(int id) {
		// TODO Auto-generated method stub
		
		for(Category category:categories) {
			if(category.getId()==id)
				return category;
		}
		return null;
	}

}
