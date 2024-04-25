package com.ovspms.contact;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ovspms.DBConnection.DBConnection;

public class ContactDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// Inserting data to database
	// use boolean as the return data type to get to know whether the data records
	// were inserted into the database successfully

	// for customer
	// parameters to catch the data passed from the servlet
	public static boolean insertContactCustomer(String cus_name, String subject, String cus_email, String cus_phone,
			String message) {
		boolean isSuccess = false;

		try {
			con = DBConnection.getInstance().getCon();
			stmt = ((Connection) con).createStatement();

			// query
			String sql = "INSERT INTO contact_us_customer VALUES (0,'" + cus_name + "','" + subject + "','" + cus_email
					+ "','" + cus_phone + "','" + message + "')";
			// should use executeUpdate, because executeQuery can be used for statements
			// like select *
			int rs = stmt.executeUpdate(sql);

			// execute update returns 2 values , zeros and 1
			// if 1 is returned it is successful

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// for seller
	public static boolean insertContactSeller(String seller_name, String subject, String seller_email,
			String seller_phone, String message) {
		boolean isSuccess = false;

		try {
			con = DBConnection.getInstance().getCon();
			stmt = ((Connection) con).createStatement();

			// query
			String sql = "INSERT INTO contact_us_seller VALUES (0,'" + seller_name + "','" + subject + "','"
					+ seller_email + "','" + seller_phone + "','" + message + "')";
			// should use executeUpdate, because executeQuery can be used for statements
			// like select *
			int rs = stmt.executeUpdate(sql);

			// execute update returns 2 values , zeros and 1
			// if 1 is returned it is successful

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
}
