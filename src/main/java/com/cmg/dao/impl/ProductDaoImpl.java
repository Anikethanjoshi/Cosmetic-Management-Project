package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.ProductDao;
import com.cmg.dto.Product;
import com.cmg.utility.Connector;

public class ProductDaoImpl implements ProductDao {
	private Connection con;

	public ProductDaoImpl () {
		
			this.con=Connector.requestConnection();
		
	}
	@Override
	public void addProduct(Product product) {
		

	    String sql = "INSERT INTO product(category_id,product_name,product_type,product_info,product_price,stock_quantity,product_image) VALUES(?,?,?,?,?,?,?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, product.getCategoryId());
	        ps.setString(2, product.getProductName());
	        ps.setString(3, product.getProductType());
	        ps.setString(4, product.getProductInfo());
	        ps.setLong(5, product.getProductPrice());
	        ps.setInt(6, product.getStockQuantity());
	        ps.setString(7, product.getProductImage());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public void updateProduct(Product product) {

	    String sql = "UPDATE product SET category_id=?, product_name=?, product_type=?, product_info=?, product_price=?, stock_quantity=?, product_image=? WHERE product_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, product.getCategoryId());
	        ps.setString(2, product.getProductName());
	        ps.setString(3, product.getProductType());
	        ps.setString(4, product.getProductInfo());
	        ps.setLong(5, product.getProductPrice());
	        ps.setInt(6, product.getStockQuantity());
	        ps.setString(7, product.getProductImage());
	        ps.setInt(8, product.getProductId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public void deleteProduct(int productId) {

	    String sql = "DELETE FROM product WHERE product_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, productId);

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public Product findById(int productId) {

	    String sql = "SELECT * FROM product WHERE product_id=?";
	    Product product=null;
	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, productId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	             product = new Product();

	            product.setProductId(rs.getInt("product_id"));
	            product.setCategoryId(rs.getInt("category_id"));
	            product.setProductName(rs.getString("product_name"));
	            product.setProductType(rs.getString("product_type"));
	            product.setProductInfo(rs.getString("product_info"));
	            product.setProductPrice(rs.getLong("product_price"));
	            product.setStockQuantity(rs.getInt("stock_quantity"));
	            product.setProductImage(rs.getString("product_image"));

	            return product;
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return null;
	}


		@Override
		public List<Product> findAll() {

		    String sql = "SELECT * FROM product";

		    List<Product> products = new ArrayList<>();

		    try {

		        PreparedStatement ps = con.prepareStatement(sql);

		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {

		            Product product = new Product();

		            product.setProductId(rs.getInt("product_id"));
		            product.setCategoryId(rs.getInt("category_id"));
		            product.setProductName(rs.getString("product_name"));
		            product.setProductType(rs.getString("product_type"));
		            product.setProductInfo(rs.getString("product_info"));
		            product.setProductPrice(rs.getLong("product_price"));
		            product.setStockQuantity(rs.getInt("stock_quantity"));
		            product.setProductImage(rs.getString("product_image"));

		            products.add(product);
		        }

		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return products;
		}	
	

}
