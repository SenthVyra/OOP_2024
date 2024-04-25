/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.company;

public class Company {
	private String name;
	private String email;
	private int contactNumber;
	private String logo;
	private String address;
	private String district;
	private String city;

	// default constructor
	public Company() {

		name = "Not entered";
		email = "Not entered";
		logo = "Not entered";
		address = "Not entered";
		district = "Not entered";
		city = "Not entered";
	}

	// overloaded constructor
	public Company(String name, String email, int contactNumber, String logo, String address, String district,
			String city) {
		super();
		this.name = name;
		this.email = email;
		this.contactNumber = contactNumber;
		this.logo = logo;
		this.address = address;
		this.district = district;
		this.city = city;
	}

	// ------- Getters --------
	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public int getContactNumber() {
		return contactNumber;
	}

	public String getLogo() {
		return logo;
	}

	public String getAddress() {
		return address;
	}

	public String getDistrict() {
		return district;
	}

	public String getCity() {
		return city;
	}
}