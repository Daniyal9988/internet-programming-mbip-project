package model;

public class User {
	private String email;
	private String fullname;
	private String dob;
	private int phone;
	private String address;
	public User(String email, String fullname, String dob, int phone, String address) {
		super();
		this.email = email;
		this.fullname = fullname;
		this.dob = dob;
		this.phone = phone;
		this.address = address;
	}
	public User() {
		super();
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullnname) {
		this.fullname = fullnname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
