package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.CategoryDao;
import com.cmg.dto.Category;
import com.cmg.utility.Connector;

public class CategoryDaoImpl implements CategoryDao {
	private Connection con;

	public CategoryDaoImpl() {
	    this.con = Connector.requestConnection();
	}
	@Override
	public void addCategory(Category category) {

	    String sql = "INSERT INTO category(category_name) VALUES(?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, category.getCategoryName());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public void updateCategory(Category category) {

	    String sql = "UPDATE category SET category_name=? WHERE category_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, category.getCategoryName());
	        ps.setInt(2, category.getCategoryId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public void deleteCategory(int categoryId) {

	    String sql = "DELETE FROM category WHERE category_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, categoryId);

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public Category findById(int categoryId) {

	    String sql = "SELECT * FROM category WHERE category_id=?";
	    Category category =null;
	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, categoryId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	             category = new Category();

	            category.setCategoryId(rs.getInt("category_id"));
	            category.setCategoryName(rs.getString("category_name"));

	           
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return category;
	}
	@Override
	public List<Category> findAll() {

	    String sql = "SELECT * FROM category";

	    List<Category> categories = new ArrayList<>();

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Category category = new Category();

	            category.setCategoryId(rs.getInt("category_id"));
	            category.setCategoryName(rs.getString("category_name"));

	            categories.add(category);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return categories;
	}

}
