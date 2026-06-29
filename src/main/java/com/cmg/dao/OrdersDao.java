package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.Orders;

public interface OrdersDao {
	 int addOrder(Orders order);

	    int updateOrder(Orders order);

	    int deleteOrder(int orderId);

	    Orders findById(int orderId);

	    List<Orders> findAll();

	   
}
