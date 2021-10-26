package dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.*;
import dao.PaymentDAO;
import model.Payment;

public class PaymentDAOImpl implements PaymentDAO {

	private Connection con = DBConnect.getConnection();
	private PreparedStatement ps;
	private ResultSet rs;

	/**
	 * @all all sql query here
	 */
	private String listAllPayment_query = "SELECT * FROM payment";
	private String insertPayment_query = "INSERT INTO payment(cardholder_name, card_type, card_number, exp_date,security_code) VALUES(?, ?, ?, ?, ?)";
	private String updatePayment_query = "UPDATE payment SET customer_name = ?, card_type = ?, card_number = ?, exp_date = ?, cvv = ? WHERE payment_id = ?";
	private String deletePayment_query = "DELETE FROM payment WHERE payment_id = ?";
	private String getPayment_query = "SELECT * FROM payment WHERE payment_id = ?";

	/**
	 * @All all method here
	 */
	@Override
	public List<Payment> listAllPayment() {

		List<Payment> list = new ArrayList<Payment>();
		try {
			ps = con.prepareStatement(listAllPayment_query);
			rs = ps.executeQuery();
			while (rs.next()) {
				Payment payment = new Payment();
				payment.setPayment_id(rs.getInt("payment_id"));
				payment.setCustomer_name(rs.getString("customer_name"));
				payment.setCard_type(rs.getString("card_type"));
				payment.setCard_number(rs.getString("card_number"));
				payment.setExp_date(rs.getString("exp_date"));
				payment.setCvv(rs.getString("cvv"));
				list.add(payment);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int insertPayment(Payment payment) {
		try {
			ps = con.prepareStatement(insertPayment_query,Statement.RETURN_GENERATED_KEYS);

			ps.setString(1, payment.getCustomer_name());
			ps.setString(2, payment.getCard_type());
			ps.setString(3, payment.getCard_number());
			ps.setString(4, payment.getExp_date());
//			ps.setString(5, payment.getCvv());
			ps.setInt(5, payment.getSecurity_number());

			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {//NEU CO tao moi va ID tu gen o sql
				payment.setId(rs.getInt(1));// lay id cua bill
			}
//			System.out.print("id payment" +payment.getId());
			return payment.getId();
//			int affectedRows = ps.executeUpdate();
//
//	        try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
//	            if (generatedKeys.next()) {
//	               return (int) generatedKeys.getLong(1);
//	            }
//	            else {
//	                throw new SQLException("Creating user failed, no ID obtained.");
//	            }
//	        }
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public boolean updatePayment(Payment payment) {
		try {
			ps = con.prepareStatement(updatePayment_query);

			ps.setString(1, payment.getCustomer_name());
			ps.setString(2, payment.getCard_type());
			ps.setString(3, payment.getCard_number());
			ps.setString(4, payment.getExp_date());
			ps.setString(5, payment.getCvv());
			ps.setInt(6, payment.getPayment_id());

			return ps.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deletePayment(int payment_id) {
		try {
			ps = con.prepareStatement(deletePayment_query);
			ps.setInt(1, payment_id);

			return ps.executeUpdate() > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Payment getPayment(int paymentId) {
		Payment payment = new Payment();
		try {
			ps = con.prepareStatement(getPayment_query);
			ps.setInt(1, paymentId);
			rs = ps.executeQuery();

			while (rs.next()) {
				payment.setPayment_id(rs.getInt("payment_id"));
				payment.setCustomer_name(rs.getString("customer_name"));
				payment.setCard_type(rs.getString("card_number"));
				payment.setCard_number(rs.getString("card_number"));
				payment.setExp_date(rs.getString("exp_date"));
				payment.setCvv(rs.getString("cvv"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return payment;
	}

}
