package com.cmg.dao;

import java.util.List;

import com.cmg.dto.Cart;

public interface CartDao {
	 void addCart(Cart cart);

	    void updateCart(Cart cart);

	    void deleteCart(int cartId);

	    Cart findById(int cartId);

	    List<Cart> findAll();

	    List<Cart> findByUserId(int userId);
}
