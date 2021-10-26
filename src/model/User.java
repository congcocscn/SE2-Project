package model;

public class User {
	private int id;
	private String familyName;
	private String givenName;
	private String phoneNumber;
	private String email;
	private String password;
	private String role;
	public User() {
		
	}

	public User(int id, String familyName, String givenName, String phoneNumber, String email, String password,String role) {
		super();
		this.id = id;
		this.familyName = familyName;
		this.givenName = givenName;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.password = password;
		this.role=role;
	}
	
	public User(int id, String familyName, String givenName, String phoneNumber, String email) {
		super();
		this.id = id;
		this.familyName = familyName;
		this.givenName = givenName;
		this.phoneNumber = phoneNumber;
		this.email = email;

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public String getGivenName() {
		return givenName;
	}

	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", familyName=" + familyName + ", givenName=" + givenName + ", phoneNumber="
				+ phoneNumber + ", email=" + email + ", password=" + password + "]";
	}
	
	
	

}
