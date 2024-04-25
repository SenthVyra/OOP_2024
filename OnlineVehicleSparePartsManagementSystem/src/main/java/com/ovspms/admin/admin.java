package com.ovspms.admin;

public class admin {
	public int id;
	private String A_name;
	private String A_email;
	private int A_contactNo;
	private String A_password;

	public admin(int id, String a_name, String a_email, int a_contactNo, String a_password) {
		super();
		this.id = id;
		A_name = a_name;
		A_email = a_email;
		A_contactNo = a_contactNo;
		A_password = a_password;
	}

	public int getAdmin_ID() {
		return id;
	}

	public String getA_name() {
		return A_name;
	}

	public String getA_email() {
		return A_email;
	}

	public int getA_contactNo() {
		return A_contactNo;
	}

	public String getA_password() {
		return A_password;
	}
}
