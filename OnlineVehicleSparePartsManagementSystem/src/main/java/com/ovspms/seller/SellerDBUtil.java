/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.seller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ovspms.DBConnection.DBConnection;

public class SellerDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static DBConnection db;
	private static PreparedStatement pst = null;

	// insert seller details
	public static boolean insertSellerDetails(String fname, String lname, String email, String password, int contactNo,
			String address) {
		boolean sellerInserted = true;

		try {

			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();
			// sql query
			pst = con.prepareStatement(
					"INSERT INTO seller(S_fname, S_lname, S_email, S_contactNo, S_password, S_address) values (?, ?, ?, ?, ?, ?)");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, email);
			pst.setInt(4, contactNo);
			pst.setString(5, password);
			pst.setString(6, address);

			// execute the sql query
			int rowCount = pst.executeUpdate();

			// check if the affected number of rows is greater than 0
			if (rowCount > 0) {
				sellerInserted = true;

			} else {
				sellerInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return sellerInserted;
	}

	// validate sellers login credentials
	public static int SellerLogin(String email, String password) {
		int sellerID = -1;

		try {
			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();
			// sql query
			PreparedStatement pst = con.prepareStatement("SELECT * FROM seller WHERE S_email = ? AND S_password = ?");
			pst.setString(1, email);
			pst.setString(2, password);

			// execute the query
			rs = pst.executeQuery();

			// check if there is a seller registered
			if (rs.next()) {
				sellerID = rs.getInt(1);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

		return sellerID;
	}

	// get the seller's information
	public static void getSellerInfo(int sellerID) {

		try {
			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();

			// sql query
			PreparedStatement pst = con.prepareStatement("SELECT * FROM seller WHERE SID = ?");
			pst.setInt(1, sellerID);

			// execute the query
			rs = pst.executeQuery();

			// check if there is a seller registered
			if (rs.next()) {
				Seller.setFirstName(rs.getString(2));
				Seller.setLastName(rs.getString(3));
				Seller.setEmail(rs.getString(4));
				Seller.setContactNumber(rs.getInt(5));
				Seller.setPassword(rs.getString(6));
				Seller.setAddress(rs.getString(7));
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	// update the seller's information
	public static boolean updateSellerDetails(int sellerID, String fname, String lname, String email, String password,
			int contactNo, String address) {
		boolean sellerInserted = true;

		try {

			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();
			// sql query
			pst = con.prepareStatement(
					"UPDATE seller SET S_fname = ?, S_lname = ?, S_email = ?, S_contactNo = ?, S_address = ? WHERE SID = ?");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, email);
			pst.setInt(4, contactNo);

			pst.setString(5, address);
			pst.setInt(6, sellerID);

			// execute the sql query
			int rowCount = pst.executeUpdate();

			// check if the affected number of rows is greater than 0
			if (rowCount > 0) {
				sellerInserted = true;
				Seller.setFirstName(fname);
				Seller.setLastName(lname);
				Seller.setEmail(email);
				Seller.setContactNumber(contactNo);
				Seller.setPassword(password);
				Seller.setAddress(address);

			} else {
				sellerInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return sellerInserted;
	}

	// update the seller's password
	public static boolean updateSellerPassword(int sellerID, String password) {
		boolean sellerInserted = true;

		try {

			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();

			// sql query
			pst = con.prepareStatement("UPDATE seller SET  S_password = ? WHERE SID = ?");

			pst.setString(1, password);
			pst.setInt(2, sellerID);

			// execute the query
			int rowCount = pst.executeUpdate();

			// check if the affected number of rows is greater than 0
			if (rowCount > 0) {
				sellerInserted = true;

				Seller.setPassword(password);

			} else {
				sellerInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return sellerInserted;
	}

	// delete the seller's account
	public static boolean deleteSellerAccount(int sellerID) {
		boolean deleted = false;

		try {

			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();

			// sql query
			PreparedStatement pst3 = con.prepareStatement("DELETE FROM item WHERE SID = ?");
			pst3.setInt(1, sellerID);
			// sql query
			PreparedStatement pst2 = con.prepareStatement("DELETE FROM company WHERE SID = ?");
			pst2.setInt(1, sellerID);
			// sql query
			PreparedStatement pst = con.prepareStatement("DELETE FROM seller WHERE SID = ?");
			pst.setInt(1, sellerID);
			pst3.executeUpdate();
			// execute the sql queries and check if the affected number of rows is greater 0
			// than 0

			if (pst2.executeUpdate() > 0 && pst.executeUpdate() > 0) {

				deleted = true;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return deleted;
	}

}
