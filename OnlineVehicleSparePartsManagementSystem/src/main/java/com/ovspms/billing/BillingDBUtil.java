package com.ovspms.billing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovspms.DBConnection.DBConnection;
import com.ovspms.cart.Cart;

public class BillingDBUtil {
	private static DBConnection db;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement pst = null;

	public static boolean insertBiiling(String f_name, String l_name, String email, int phone_number, String country,
			String state, String a_line1, String a_line2, int p_code, String company) {
		boolean isSuccess = false;

		try {
			db = DBConnection.getInstance();
			con = db.getCon();

			stmt = con.createStatement();

			String sql = "INSERT INTO billing_details values (0,'" + f_name + "','" + l_name + "' ,'" + email + "' ,'"
					+ phone_number + "' ,'" + country + "' ,'" + state + "' ,'" + a_line1 + "' ,'" + a_line2 + "' ,'"
					+ p_code + "' ,'" + company + "' ) ";
			int rs = stmt.executeUpdate(sql);
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

	public static List<Billing> display() {
		List<Billing> b = new ArrayList<>();
		try {
			db = DBConnection.getInstance();
			con = db.getCon();

			stmt = con.createStatement();

			String sql = "select * from where f_name = ?";

			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				Billing b1 = new Billing();
				b1.setBillingId(rs.getInt("b_id"));
				b1.setFname(rs.getString("f_name"));
				b1.setFname(rs.getString("l_name"));
				b1.setEmail(rs.getString("email"));
				b1.setPhone_number(rs.getInt("phone_number"));
				b1.setCountry(rs.getString("country"));
				b1.setState(rs.getString("state"));
				b1.setA_line1(rs.getString("a_line1"));
				b1.setA_line2(rs.getString("a_line2"));
				b1.setP_code(rs.getInt("p_code"));
				b1.setCompany(rs.getString("company"));

				b.add(b1);
			}

		} catch (Exception e) {

		}
		return b;

	}

	public double getTotalCartPrice(ArrayList<Cart> cartlist) {
		double sum = 0;
		try {
			if (cartlist.size() > 0) {
				for (Cart item : cartlist) {
					String sql = "SELECT price FROM item WHERE Item_ID = ?";
					pst = this.con.prepareStatement(sql);
					pst.setInt(1, item.getItemID());
					rs = pst.executeQuery();

					while (rs.next()) {
						sum += rs.getDouble("price") * item.getQuantity();
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return sum;
	}

	public static boolean updateBiiling(int bid, String f_name, String l_name, String email, int phone_number,
			String country, String state, String a_line1, String a_line2, int p_code, String company) {
		boolean isSuccess = false;

		try {
			db = DBConnection.getInstance();
			con = db.getCon();
			pst = con.prepareStatement(
					"UPDATE ovspms.billing_details SET f_name = ?, l_name = ?, email = ?, phone_number = ?, country = ?, state = ?, a_line1 = ?, a_line2 = ?, p_code = ?, company = ? WHERE b_id = ?");

			pst.setString(1, f_name);
			pst.setString(2, l_name);
			pst.setString(3, email);
			pst.setInt(4, phone_number);
			pst.setString(5, country);
			pst.setString(6, state);
			pst.setString(7, a_line1);
			pst.setString(8, a_line2);
			pst.setInt(9, p_code);
			pst.setString(10, company);
			pst.setInt(11, bid);

			int rs = pst.executeUpdate();
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
