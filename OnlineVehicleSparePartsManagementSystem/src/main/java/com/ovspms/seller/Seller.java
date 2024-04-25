/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.seller;

public class Seller {
	private static String firstName;
	private static String lastName;
	private static String email;
	private static int contactNumber;
	private static String password;
	private static String address;

	public static String getFirstName() {
		return firstName;
	}

	public static void setFirstName(String firstName) {
		Seller.firstName = firstName;
	}

	public static String getLastName() {
		return lastName;
	}

	public static void setLastName(String lastName) {
		Seller.lastName = lastName;
	}

	public static String getEmail() {
		return email;
	}

	public static void setEmail(String email) {
		Seller.email = email;
	}

	public static int getContactNumber() {
		return contactNumber;
	}

	public static void setContactNumber(int contactNumber) {
		Seller.contactNumber = contactNumber;
	}

	public static String getPassword() {
		return password;
	}

	public static void setPassword(String password) {
		Seller.password = password;
	}

	public static String getAddress() {
		return address;
	}

	public static void setAddress(String address) {
		Seller.address = address;
	}

}
