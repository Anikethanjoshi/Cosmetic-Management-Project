package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.Category;

public interface CategoryDao {
	 void addCategory(Category category);

	    void updateCategory(Category category);

	    void deleteCategory(int categoryId);

	    Category findById(int categoryId);

	    List<Category> findAll();

	  
}
