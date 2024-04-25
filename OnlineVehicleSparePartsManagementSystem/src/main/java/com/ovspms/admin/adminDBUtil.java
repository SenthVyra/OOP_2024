package com.ovspms.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovspms.DBConnection.DBConnection;

public class adminDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// admin validation
	public static boolean validate(String username, String password) {

		try {
			// creating database connection
			con = DBConnection.getInstance().getCon();
			stmt = ((Connection) con).createStatement();

			// sql query
			// concatenation
			String sql = "select * from admin where A_email = '" + username + "'and A_password = '" + password + "'";
			rs = stmt.executeQuery(sql);

			// checking whether there is an admin related to the username and password
			// entered
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// Read data
	public static List<admin> getAdminDetails(String username) {

		ArrayList<admin> ad = new ArrayList<>();

		try {
			// create connection
			con = DBConnection.getInstance().getCon();
			stmt = ((Connection) con).createStatement();

			// sql query
			String sql = "SELECT * from admin WHERE A_email ='" + username + "'";
			rs = stmt.executeQuery(sql);

			// storing the admin details related to the username passed
			while (rs.next()) {
				int Admin_ID = rs.getInt(1);
				String A_name = rs.getString(2);
				String A_email = rs.getString(3);
				int A_contactNo = rs.getInt(4);
				String A_password = rs.getString(5);

				admin a = new admin(Admin_ID, A_name, A_email, A_contactNo, A_password);
				ad.add(a);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ad;
	}

	// update admin details
	public static boolean updateAdmin(String id, String name, String email, String phone, String password) {

		try {
			con = DBConnection.getInstance().getCon();
			stmt = ((Connection) con).createStatement();
			int phoneNum = Integer.parseInt(phone);
			// query
			String sql = "UPDATE admin set A_name = '" + name + "', A_email = '" + email + "', A_contactNo = '"
					+ phoneNum + "', A_password = '" + password + "'" + "WHERE Admin_ID = '" + id + "'";

			// to execute the query
			int rs = stmt.executeUpdate(sql);

			// check whether the updation is success or not
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

	// display updated admin details
	public static List<admin> getUpdatedAdminDetails(String id) {

		// because the parameter is passed as String and the database data type is
		// integer
		int convertedID = Integer.parseInt(id);

		ArrayList<admin> ad = new ArrayList<>();

		try {
			con = DBConnection.getInstance().getCon();
			stmt = ((Connection) con).createStatement();

			// query
			String sql = "SELECT * from admin WHERE admin_ID = '" + convertedID + "'";

			// for select statements
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int Admin_ID = rs.getInt(1);
				String A_name = rs.getString(2);
				String A_email = rs.getString(3);
				int A_contactNo = rs.getInt(4);
				String A_password = rs.getString(5);

				// passing the variables to an object from the Admin class
				admin a = new admin(Admin_ID, A_name, A_email, A_contactNo, A_password);

				// passing the object to the array list object
				ad.add(a);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ad;
	}
}
