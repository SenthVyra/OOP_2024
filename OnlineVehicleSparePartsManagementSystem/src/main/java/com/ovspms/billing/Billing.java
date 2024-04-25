package com.ovspms.billing;

public class Billing {
	private int billingId;
	private String fname;
	private String lname;
	private String email;
	private int phone_number;
	private String country;
	private String state;
	private String a_line1;
	private String a_line2;
	private int p_code;
	private String company;

	public Billing() {

	}

	public Billing(int billingId, String fname, String lname, int phone_number, String country, String state,
			String a_line1, String a_line2, int p_code, String company) {
		super();
		this.billingId = billingId;
		this.fname = fname;
		this.lname = lname;
		this.phone_number = phone_number;
		this.country = country;
		this.state = state;
		this.a_line1 = a_line1;
		this.a_line2 = a_line2;
		this.p_code = p_code;
		this.company = company;
	}

	public int getBillingId() {
		return billingId;
	}

	public void setBillingId(int billingId) {
		this.billingId = billingId;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public int getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(int phone_number) {
		this.phone_number = phone_number;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getA_line1() {
		return a_line1;
	}

	public void setA_line1(String a_line1) {
		this.a_line1 = a_line1;
	}

	public String getA_line2() {
		return a_line2;
	}

	public void setA_line2(String a_line2) {
		this.a_line2 = a_line2;
	}

	public int getP_code() {
		return p_code;
	}

	public void setP_code(int p_code) {
		this.p_code = p_code;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

}
