/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ovspms.DBConnection.DBConnection;
import com.ovspms.interfaces.CompanyDatabase;

public class CompanyDBUtil implements CompanyDatabase {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static DBConnection db;
	private static PreparedStatement pst = null;

	// insert company details
	public boolean insertCompanyDetails(int sellerID, String name, int contactNo, String email, String logo,
			String address, String district, String city) {
		boolean CompanyInserted = true;

		try {
			// create database connection
			db = DBConnection.getInstance();
			con = db.getCon();

			// sql query
			pst = con.prepareStatement(
					"INSERT INTO company(SID, Com_name, Com_contactNo, Com_email, Com_logo, Com_address, Com_district, Com_city) values (?, ?, ?, ?, ?, ?, ?, ?)");
			pst.setInt(1, sellerID);
			pst.setString(2, name);
			pst.setInt(3, contactNo);
			pst.setString(4, email);
			pst.setString(5, logo);
			pst.setString(6, address);
			pst.setString(7, district);
			pst.setString(8, city);

			// execute the sql query
			int rowCount = pst.executeUpdate();

			// check if the affected number of rows is greater than 0
			if (rowCount > 0) {
				CompanyInserted = true;
				Company company = getCompanyInfo(sellerID);

			} else {
				CompanyInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return CompanyInserted;
	}

	// get the company info
	public Company getCompanyInfo(int sellerID) {
		Company company = new Company();
		String message = "";
		try {
			// create a database connection
			db = DBConnection.getInstance();
			con = db.getCon();

			// sql query
			PreparedStatement pst = con.prepareStatement("SELECT * FROM company WHERE SID = ?");
			pst.setInt(1, sellerID);

			// execute sql query
			rs = pst.executeQuery();

			// check if there is a company registered
			if (rs.next()) {

				company = new Company(rs.getString(3), rs.getString(5), rs.getInt(4), rs.getString(6), rs.getString(7),
						rs.getString(8), rs.getString(9));

				message = "Entered";

			} else {
				company = new Company();
				message = "Not Yet Eneterd";
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		// return the information about the company
		return company;

	}

	// update the company details
	public boolean updateCompanyDetails(int sellerID, String name, int contactNo, String email, String logo,
			String address, String district, String city) {
		boolean CompanyUpdated = true;
		CompanyDBUtil companyDBUtil = new CompanyDBUtil();

		try {

			// create database connection
			db = DBConnection.getInstance();
			con = db.getCon();

			// sql query
			pst = con.prepareStatement(
					"UPDATE company SET Com_name = ?, Com_contactNo = ?, Com_email = ?, Com_logo = ?, Com_address = ?, Com_district = ?, Com_city = ? WHERE SID = ?");

			pst.setString(1, name);
			pst.setInt(2, contactNo);
			pst.setString(3, email);
			pst.setString(4, logo);
			pst.setString(5, address);
			pst.setString(6, district);
			pst.setString(7, city);
			pst.setInt(8, sellerID);

			// execute sql query
			int rowCount = pst.executeUpdate();

			// check if the number of affected rows is greater than 0
			if (rowCount > 0) {
				CompanyUpdated = true;
				Company company = companyDBUtil.getCompanyInfo(sellerID);

			} else {
				CompanyUpdated = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		// return the details about the company updated
		return CompanyUpdated;
	}

}
