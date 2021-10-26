package model;

import java.io.Serializable;
import java.sql.Date;

public class Passenger extends Payment implements Serializable {

	private static final long serialVersionUID = 1L;

	private int passenger_id;
	




	private String passport_number;
	private String nationality;
	private String firstName;
	private String lastName;
	
	private String dob;
	private String gender;
	private String phone_number;
	private String email;
	
	private int payment_id;

	public Passenger(int passenger_id, String passport_number, String nationality, String firstName, String lastName,
			String dob, String gender, String phone_number, String email) {
		super();
		this.passenger_id = passenger_id;
		this.passport_number = passport_number;
		this.nationality = nationality;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.phone_number = phone_number;
		this.email = email;
	}


	public Passenger() {
	}
	
	
	public Passenger(String passport_number, String nationality, String firstName, String lastName, 
			String dob, String gender, String phone_number, String email) {
		super();
		this.passport_number = passport_number;
		this.nationality = nationality;
		this.firstName = firstName;
		this.lastName = lastName;
		
		this.dob = dob;
		this.gender = gender;
		this.phone_number = phone_number;
		this.email = email;
		
	}
	
	public Passenger(int passenger_id, String passport_number, String nationality, String firstName, String lastName,
			 String dob, String gender, String phone_number, String email, int payment_id) {
		super();
		this.passenger_id = passenger_id;
		this.passport_number = passport_number;
		this.nationality = nationality;
		this.firstName = firstName;
		this.lastName = lastName;
		
		this.dob = dob;
		this.gender = gender;
		this.phone_number = phone_number;
		this.email = email;
		this.payment_id = payment_id;
	}
	



	public Passenger(String passport_number, String nationality, String firstName, String lastName, String dob,
			String gender, String phone_number, String email, int payment_id) {
		super();
		this.passport_number = passport_number;
		this.nationality = nationality;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.phone_number = phone_number;
		this.email = email;
		this.payment_id = payment_id;
	}


	public int getPassenger_id() {
		return passenger_id;
	}




	public void setPassenger_id(int passenger_id) {
		this.passenger_id = passenger_id;
	}




	public String getPassport_number() {
		return passport_number;
	}




	public void setPassport_number(String passport_number) {
		this.passport_number = passport_number;
	}




	public String getNationality() {
		return nationality;
	}




	public void setNationality(String nationality) {
		this.nationality = nationality;
	}




	public String getFirstName() {
		return firstName;
	}




	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}




	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}





	public String getDob() {
		return dob;
	}




	public void setDob(String dob) {
		this.dob = dob;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getPhone_number() {
		return phone_number;
	}




	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public int getPayment_id() {
		return payment_id;
	}




	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}




	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
}
