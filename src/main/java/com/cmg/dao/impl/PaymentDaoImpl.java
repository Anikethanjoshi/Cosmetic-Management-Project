package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.PaymentDao;
import com.cmg.utility.Connector;
import com.cosmetics.dto.Payment;

public class PaymentDaoImpl implements PaymentDao {
	private Connection con;

	public PaymentDaoImpl() {

		this.con = Connector.requestConnection();

	}

	@Override
	public void addPayment(Payment payment) {

		String sql = "INSERT INTO payment(order_id,transaction_id,payment_method,amount,payment_status) VALUES(?,?,?,?,?)";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, payment.getOrderId());
			ps.setString(2, payment.getTransactionId());
			ps.setString(3, payment.getPaymentMethod());
			ps.setLong(4, payment.getAmount());
			ps.setString(5, payment.getPaymentStatus());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updatePayment(Payment payment) {

		String sql = "UPDATE payment SET order_id=?, transaction_id=?, payment_method=?, amount=?, payment_status=? WHERE payment_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, payment.getOrderId());
			ps.setString(2, payment.getTransactionId());
			ps.setString(3, payment.getPaymentMethod());
			ps.setLong(4, payment.getAmount());
			ps.setString(5, payment.getPaymentStatus());
			ps.setInt(6, payment.getPaymentId());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deletePayment(int paymentId) {

		String sql = "DELETE FROM payment WHERE payment_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, paymentId);

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Payment findById(int paymentId) {

		String sql = "SELECT * FROM payment WHERE payment_id=?";
		Payment payment = null;
		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, paymentId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				payment = new Payment();

				payment.setPaymentId(rs.getInt("payment_id"));
				payment.setOrderId(rs.getInt("order_id"));
				payment.setTransactionId(rs.getString("transaction_id"));
				payment.setPaymentMethod(rs.getString("payment_method"));
				payment.setPaymentDate(rs.getString("payment_date"));
				payment.setAmount(rs.getLong("amount"));
				payment.setPaymentStatus(rs.getString("payment_status"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return payment;
	}

	@Override
	public List<Payment> findAll() {

		String sql = "SELECT * FROM payment";

		List<Payment> payments = new ArrayList<>();

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Payment payment = new Payment();

				payment.setPaymentId(rs.getInt("payment_id"));
				payment.setOrderId(rs.getInt("order_id"));
				payment.setTransactionId(rs.getString("transaction_id"));
				payment.setPaymentMethod(rs.getString("payment_method"));
				payment.setPaymentDate(rs.getString("payment_date"));
				payment.setAmount(rs.getLong("amount"));
				payment.setPaymentStatus(rs.getString("payment_status"));

				payments.add(payment);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return payments;
	}

	@Override
	public Payment findByOrderId(int orderId) {

		String sql = "SELECT * FROM payment WHERE order_id=?";
		Payment payment = null;
		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, orderId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				payment = new Payment();

				payment.setPaymentId(rs.getInt("payment_id"));
				payment.setOrderId(rs.getInt("order_id"));
				payment.setTransactionId(rs.getString("transaction_id"));
				payment.setPaymentMethod(rs.getString("payment_method"));
				payment.setPaymentDate(rs.getString("payment_date"));
				payment.setAmount(rs.getLong("amount"));
				payment.setPaymentStatus(rs.getString("payment_status"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return payment;
	}

}
