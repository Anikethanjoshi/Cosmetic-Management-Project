package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.Payment;

public interface PaymentDao {
	 int addPayment(Payment payment);

	    int updatePayment(Payment payment);

	    int deletePayment(int paymentId);

	    Payment findById(int paymentId);

	    List<Payment> findAll();
	    Payment findByOrderId(int orderId);
}
