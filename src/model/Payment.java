package model;

import java.io.Serializable;
import java.sql.Date;

public class Payment extends User implements Serializable{
	

	private static final long serialVersionUID = 1L;

	private int payment_id;
	private String customer_name;
	private String card_type;
	private String card_number;
	private String exp_date;
	private int security_number;
	
	private String cvv;
	
	public Payment() {
		super();
	}

	
	
	public Payment(String customer_name, String card_type, String card_number, String exp_date, String cvv,int securityNumber) {
		super();
		this.customer_name = customer_name;
		this.card_type = card_type;
		this.card_number = card_number;
		this.exp_date = exp_date;
		this.cvv = cvv;
		this.security_number=securityNumber;
	}



	public Payment(int payment_id, String customer_name, String card_type, String card_number, String exp_date, String cvv,int securityNumber) {
		super();
		this.payment_id = payment_id;
		this.customer_name = customer_name;
		this.card_type = card_type;
		this.card_number = card_number;
		this.exp_date = exp_date;
		this.cvv = cvv;
		this.security_number=securityNumber;
	}

	public int getSecurity_number() {
		return security_number;
	}



	public void setSecurity_number(int security_number) {
		this.security_number = security_number;
	}

	public int getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCard_type() {
		return card_type;
	}

	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public String getExp_date() {
		return exp_date;
	}

	public void setExp_date(String exp_date) {
		this.exp_date = exp_date;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	
	
	
}
