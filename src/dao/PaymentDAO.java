package dao;

import java.util.List;

import model.Payment;

public interface PaymentDAO {
	
	List<Payment> listAllPayment();
	
	int insertPayment(Payment payment);
	
	boolean updatePayment(Payment payment);
	
	boolean deletePayment(int paymentId);
	
	Payment getPayment(int paymentId);

}
