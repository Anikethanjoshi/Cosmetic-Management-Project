
package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.OrderItemsDao;
import com.cmg.dto.OrderItems;
import com.cmg.utility.Connector;

public class OrdersItemsDaoImpl implements OrderItemsDao {
	private Connection con;

	public OrdersItemsDaoImpl() {
	    this.con = Connector.requestConnection();
	}
	
	@Override
	public void addOrderItem(OrderItems item) {

	    String sql = "INSERT INTO order_items(order_id,product_id,quantity,price,subtotal) VALUES(?,?,?,?,?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, item.getOrderId());
	        ps.setInt(2, item.getProductId());
	        ps.setInt(3, item.getQuantity());
	        ps.setLong(4, item.getPrice());
	        ps.setLong(5, item.getSubtotal());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	@Override
	public void updateOrderItem(OrderItems item) {

	    String sql = "UPDATE order_items SET order_id=?, product_id=?, quantity=?, price=?, subtotal=? WHERE order_item_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, item.getOrderId());
	        ps.setInt(2, item.getProductId());
	        ps.setInt(3, item.getQuantity());
	        ps.setLong(4, item.getPrice());
	        ps.setLong(5, item.getSubtotal());
	        ps.setInt(6, item.getOrderItemId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public void deleteOrderItem(int orderItemId) {

	    String sql = "DELETE FROM order_items WHERE order_item_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, orderItemId);

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public OrderItems findById(int orderItemId) {

	    String sql = "SELECT * FROM order_items WHERE order_item_id=?";
	    OrderItems item =null;
	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, orderItemId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	             item = new OrderItems();

	            item.setOrderItemId(rs.getInt("order_item_id"));
	            item.setOrderId(rs.getInt("order_id"));
	            item.setProductId(rs.getInt("product_id"));
	            item.setQuantity(rs.getInt("quantity"));
	            item.setPrice(rs.getLong("price"));
	            item.setSubtotal(rs.getLong("subtotal"));

	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return item;
	}

	
	@Override
	public List<OrderItems> findAll() {

	    String sql = "SELECT * FROM order_items";

	    List<OrderItems> items = new ArrayList<>();

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            OrderItems item = new OrderItems();

	            item.setOrderItemId(rs.getInt("order_item_id"));
	            item.setOrderId(rs.getInt("order_id"));
	            item.setProductId(rs.getInt("product_id"));
	            item.setQuantity(rs.getInt("quantity"));
	            item.setPrice(rs.getLong("price"));
	            item.setSubtotal(rs.getLong("subtotal"));

	            items.add(item);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return items;
	}
}
