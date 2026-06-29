package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.OrderItems;

public interface OrderItemsDao {
	    void addOrderItem(OrderItems item);

	    void updateOrderItem(OrderItems item);

	    void deleteOrderItem(int orderItemId);

	    OrderItems findById(int orderItemId);

	    List<OrderItems> findAll();
}
