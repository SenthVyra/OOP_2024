package com.ovspms.cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovspms.DBConnection.DBConnection;
import com.ovspms.item.Item;
import com.ovspms.item.ItemDBUtil;

//package com.ovspms.cart;
//
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.List;
//
//import com.ovspms.DBConnection.DBConnection;
//import com.ovspms.item.Item;
//import com.ovspms.item.ItemDBUtil;
//

public class CartDBUtil {
	private static DBConnection db;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static PreparedStatement pst = null;

	/*
	 * public CartDBUtil(Connection con) { this.con = con; }
	 */
	public boolean insertOrder(Order model) {
		boolean result = true;
		try {
			db = DBConnection.getInstance();
			con = db.getCon();

			stmt = con.createStatement();
			String sql = "INSERT INTO ovspms.order (o_id,item_id,o_quantity,date, cid) values (0,?,?,?, ?)";
			pst = this.con.prepareStatement(sql);

			pst.setInt(1, model.getItemID());
			pst.setInt(2, model.getQuantity());
			pst.setString(3, model.getDate());
			pst.setInt(4, model.getCusID());
			System.out.println(model.getQuantity());
			int rowCount = pst.executeUpdate();
			if (rowCount > 0) {
				result = true;
			} else {
				result = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public static List<Order> userOrders(int cusID) {
		List<Order> list = new ArrayList<>();
		try {
			db = DBConnection.getInstance();
			con = db.getCon();

			stmt = con.createStatement();

			String sql = "SELECT * from ovspms.order where cid=?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, cusID);

			rs = pst.executeQuery();

			while (rs.next()) {
				Order order = new Order();
				ItemDBUtil item1 = new ItemDBUtil();
				int Id = rs.getInt("item_id");

				Item item11 = item1.getSingleProduct(Id);

				order.setOrderId(rs.getInt("o_id"));
				order.setItemID(Id);
				order.setTitle(item11.getTitle());
				order.setCategory(item11.getCategory());
				order.setPrice(item11.getPrice() * rs.getInt("o_quantity"));
				order.setQuantity(rs.getInt("o_quantity"));
				order.setDate(rs.getString("date"));
				list.add(order);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;

	}

	public void cancelOrder(int id) {
		try {
			db = DBConnection.getInstance();
			con = db.getCon();

			stmt = con.createStatement();

			String sql = "delete from ovspms.order where o_id=?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			pst.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
