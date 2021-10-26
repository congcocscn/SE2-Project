package service;

import java.util.List;

import model.Payment;

public interface PaymentService {

	List<Payment> listAllPayment();

	int insertPayment(Payment payment);

	boolean updatePayment(Payment payment);

	boolean deletePayment(int payment_id);
	
	Payment getPayment(int paymentId);
}
