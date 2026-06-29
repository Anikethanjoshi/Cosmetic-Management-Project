package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.OrderItems;

public interface OrderItemsDao {
	    int addOrderItem(OrderItems item);

	    int updateOrderItem(OrderItems item);

	    int deleteOrderItem(int orderItemId);

	    OrderItems findById(int orderItemId);

	    List<OrderItems> findAll();
}
