package service.impl;

import java.util.List;

import dao.PaymentDAO;
import dao.impl.PaymentDAOImpl;
import model.Payment;
import service.PaymentService;

public class PaymentServiceImpl implements PaymentService {

	PaymentDAO paymentDAO = new PaymentDAOImpl();

	@Override
	public List<Payment> listAllPayment() {
		return paymentDAO.listAllPayment();
	}

	@Override
	public int insertPayment(Payment payment) {
		return paymentDAO.insertPayment(payment);
	}

	@Override
	public boolean updatePayment(Payment newPayment) {

		Payment oldPayment = paymentDAO.getPayment(newPayment.getPayment_id());

		oldPayment.setCustomer_name(newPayment.getCustomer_name());
		oldPayment.setCard_type(newPayment.getCard_type());
		oldPayment.setCard_number(newPayment.getCard_number());
		oldPayment.setExp_date(newPayment.getExp_date());
		oldPayment.setCvv(newPayment.getCvv());

		return paymentDAO.updatePayment(oldPayment);
	}

	@Override
	public boolean deletePayment(int payment_id) {
		return paymentDAO.deletePayment(payment_id);
	}

	@Override
	public Payment getPayment(int paymentId) {
		// TODO Auto-generated method stub
		return paymentDAO.getPayment(paymentId);
	}

}
