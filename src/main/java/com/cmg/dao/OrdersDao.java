package com.cmg.dao;

import java.util.List;

import com.cmg.dto.Orders;

public interface OrdersDao {
	 void addOrder(Orders order);

	    void updateOrder(Orders order);

	    void deleteOrder(int orderId);

	    Orders findById(int orderId);

	    List<Orders> findAll();

	   
}
