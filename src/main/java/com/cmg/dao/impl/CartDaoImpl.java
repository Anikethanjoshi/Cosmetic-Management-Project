package com.cmg.dao.impl;

import java.util.List;

import com.cmg.dao.CartDao;
import com.cosmetics.dto.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.cmg.utility.Connector;

public class CartDaoImpl implements CartDao {
	private Connection con;

	public CartDaoImpl() {
	    this.con = Connector.requestConnection();
	}
	@Override
	public void addCart(Cart cart) {

	    String sql = "INSERT INTO cart(user_id,product_id,quantity) VALUES(?,?,?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, cart.getUserId());
	        ps.setInt(2, cart.getProductId());
	        ps.setInt(3, cart.getQuantity());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public void updateCart(Cart cart) {

	    String sql = "UPDATE cart SET user_id=?, product_id=?, quantity=? WHERE cart_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, cart.getUserId());
	        ps.setInt(2, cart.getProductId());
	        ps.setInt(3, cart.getQuantity());
	        ps.setInt(4, cart.getCartId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	
	@Override
	public void deleteCart(int cartId) {

	    String sql = "DELETE FROM cart WHERE cart_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, cartId);

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}
	@Override
	public Cart findById(int cartId) {

	    String sql = "SELECT * FROM cart WHERE cart_id=?";
	    Cart cart=null;
	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, cartId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	             cart = new Cart();

	            cart.setCartId(rs.getInt("cart_id"));
	            cart.setUserId(rs.getInt("user_id"));
	            cart.setProductId(rs.getInt("product_id"));
	            cart.setQuantity(rs.getInt("quantity"));

	           
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return cart;
	}

	@Override
	public List<Cart> findAll() {

	    String sql = "SELECT * FROM cart";

	    List<Cart> carts = new ArrayList<>();

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Cart cart = new Cart();

	            cart.setCartId(rs.getInt("cart_id"));
	            cart.setUserId(rs.getInt("user_id"));
	            cart.setProductId(rs.getInt("product_id"));
	            cart.setQuantity(rs.getInt("quantity"));

	            carts.add(cart);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return carts;
	}

	@Override
	public List<Cart> findByUserId(int userId) {

	    String sql = "SELECT * FROM cart WHERE user_id=?";

	    List<Cart> carts = new ArrayList<>();

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, userId);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Cart cart = new Cart();

	            cart.setCartId(rs.getInt("cart_id"));
	            cart.setUserId(rs.getInt("user_id"));
	            cart.setProductId(rs.getInt("product_id"));
	            cart.setQuantity(rs.getInt("quantity"));

	            carts.add(cart);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return carts;
	}

}
