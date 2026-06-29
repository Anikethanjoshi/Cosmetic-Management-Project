package com.cmg.dao;

import java.util.List;

import com.cmg.dto.Payment;

public interface PaymentDao {
	 void addPayment(Payment payment);

	    void updatePayment(Payment payment);

	    void deletePayment(int paymentId);

	    Payment findById(int paymentId);

	    List<Payment> findAll();
	    Payment findByOrderId(int orderId);
}
