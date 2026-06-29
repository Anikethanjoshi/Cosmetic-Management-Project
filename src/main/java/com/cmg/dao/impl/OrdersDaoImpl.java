package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.OrdersDao;
import com.cmg.utility.Connector;
import com.cosmetics.dto.Orders;

public class OrdersDaoImpl implements OrdersDao {
	private Connection con;

	public OrdersDaoImpl () {
		
			this.con=Connector.requestConnection();
		
	}
	@Override
	public void addOrder(Orders order) {

	    String sql = "INSERT INTO orders(user_id,total_amount,order_status,delivery_address) VALUES(?,?,?,?)";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, order.getUserId());
	        ps.setDouble(2, order.getTotalAmount());
	        ps.setString(3, order.getOrderStatus());
	        ps.setString(4, order.getDeliveryAddress());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public void updateOrder(Orders order) {

	    String sql = "UPDATE orders SET user_id=?, total_amount=?, order_status=?, delivery_address=? WHERE order_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, order.getUserId());
	        ps.setDouble(2, order.getTotalAmount());
	        ps.setString(3, order.getOrderStatus());
	        ps.setString(4, order.getDeliveryAddress());
	        ps.setInt(5, order.getOrderId());

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public void deleteOrder(int orderId) {

	    String sql = "DELETE FROM orders WHERE order_id=?";

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, orderId);

	        ps.executeUpdate();

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	}

	@Override
	public Orders findById(int orderId) {

	    String sql = "SELECT * FROM orders WHERE order_id=?";
	    Orders order=null;
	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setInt(1, orderId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	             order = new Orders();

	            order.setOrderId(rs.getInt("order_id"));
	            order.setUserId(rs.getInt("user_id"));
	            order.setOrderDate(rs.getString("order_date"));
	            order.setTotalAmount(rs.getDouble("total_amount"));
	            order.setOrderStatus(rs.getString("order_status"));
	            order.setDeliveryAddress(rs.getString("delivery_address"));

	            
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return order;
	}
	@Override
	public List<Orders> findAll() {

	    String sql = "SELECT * FROM orders";

	    List<Orders> orders = new ArrayList<>();

	    try {

	        PreparedStatement ps = con.prepareStatement(sql);

	        ResultSet rs = ps.executeQuery();

	        while (rs.next()) {

	            Orders order = new Orders();

	            order.setOrderId(rs.getInt("order_id"));
	            order.setUserId(rs.getInt("user_id"));
	            order.setOrderDate(rs.getString("order_date"));
	            order.setTotalAmount(rs.getDouble("total_amount"));
	            order.setOrderStatus(rs.getString("order_status"));
	            order.setDeliveryAddress(rs.getString("delivery_address"));

	            orders.add(order);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return orders;
	}

}
