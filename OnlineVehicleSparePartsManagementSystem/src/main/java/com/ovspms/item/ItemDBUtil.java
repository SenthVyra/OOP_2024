/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovspms.DBConnection.DBConnection;
import com.ovspms.cart.Cart;

public class ItemDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static DBConnection db;
	private static PreparedStatement pst = null;

	// function to insert items to database
	public static boolean insertItemDetails(int sellerID, String title, String status, String description,
			String category, String model, int quantity, Double price, String main_image, String image_1,
			String image_2, String image_3) {
		boolean ItemInserted = true;

		try {

			db = DBConnection.getInstance();
			con = db.getCon();
			pst = con.prepareStatement(
					"INSERT INTO item(title, status, description, category, model, quantity, price, posted_date, main_image, image_1, image_2, image_3, SID) values (?, ?, ?, ?, ?, ?, ?, now(), ?, ?, ?, ?, ?)");

			pst.setString(1, title);
			pst.setString(2, status);
			pst.setString(3, description);
			pst.setString(4, category);
			pst.setString(5, model);
			pst.setInt(6, quantity);
			pst.setDouble(7, price);
			pst.setString(8, main_image);
			pst.setString(9, image_1);
			pst.setString(10, image_2);
			pst.setString(11, image_3);
			pst.setInt(12, sellerID);

			int rowCount = pst.executeUpdate();

			if (rowCount > 0) {
				ItemInserted = true;

			} else {
				ItemInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return ItemInserted;
	}

	// function to view items
	public static List<Item> viewItems(int sellerID) {
		ArrayList<Item> itemDetailsList = new ArrayList<>();

		try {

			db = DBConnection.getInstance();
			con = db.getCon();
			pst = con.prepareStatement("SELECT * FROM item WHERE SID = ?");
			pst.setInt(1, sellerID);

			rs = pst.executeQuery();
			while (rs.next()) {
				int SellerID = rs.getInt("SID");
				int ItemID = rs.getInt("Item_ID");
				String title = rs.getString("title");
				String status = rs.getString("status");
				String category = rs.getString("category");
				String description = rs.getString("description");
				String model = rs.getString("model");
				int quantity = rs.getInt("quantity");
				double price = rs.getInt("price");
				String postedDate = rs.getString("posted_date");
				String availability = rs.getString("availability");
				String mainItemImage = rs.getString("main_image");
				String subItemImage1 = rs.getString("image_1");
				String subItemImage2 = rs.getString("image_2");
				String subItemImage3 = rs.getString("image_3");

				Item item = new Item(SellerID, ItemID, title, status, category, description, model, quantity, price,
						postedDate, availability, mainItemImage, subItemImage1, subItemImage2, subItemImage3);

				itemDetailsList.add(item);

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return itemDetailsList;
	}

	// function to update Item Details
	public static boolean updateItemDetails(int sellerID, Integer itemID, String title, String status,
			String description, String category, String model, int quantity, Double price, String main_image,
			String image_1, String image_2, String image_3) {
		boolean ItemInserted = true;

		try {

			db = DBConnection.getInstance();
			con = db.getCon();
			pst = con.prepareStatement(
					"UPDATE item SET title = ?, status = ?, description = ?, category = ?, model = ?, quantity = ?, price = ?,  main_image = ?, image_1 = ?, image_2 = ?, image_3 = ?  WHERE SID = ? AND Item_ID = ?");

			pst.setString(1, title);
			pst.setString(2, status);
			pst.setString(3, description);
			pst.setString(4, category);
			pst.setString(5, model);
			pst.setInt(6, quantity);
			pst.setDouble(7, price);
			pst.setString(8, main_image);
			pst.setString(9, image_1);
			pst.setString(10, image_2);
			pst.setString(11, image_3);
			pst.setInt(12, sellerID);
			pst.setInt(13, itemID);

			int rowCount = pst.executeUpdate();

			if (rowCount > 0) {
				ItemInserted = true;

			} else {
				ItemInserted = false;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return ItemInserted;
	}

	// function to delete items
	public static boolean deleteItem(int itemID) {
		boolean deleted = false;

		try {

			db = DBConnection.getInstance();
			con = db.getCon();
			PreparedStatement pst1 = con.prepareStatement("DELETE FROM item WHERE Item_ID = ?");
			pst1.setInt(1, itemID);

			if (pst1.executeUpdate() > 0) {
				deleted = true;
			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		return deleted;
	}

	public List<Item> getAllProduct() {
		List<Item> products = new ArrayList<Item>();

		try {

			db = DBConnection.getInstance();
			con = db.getCon();
			stmt = con.createStatement();
			String sql = "select * from item";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int SellerID = rs.getInt("SID");
				int ItemID = rs.getInt("Item_ID");
				String title = rs.getString("title");
				String status = rs.getString("status");
				String category = rs.getString("category");
				String description = rs.getString("description");
				String model = rs.getString("model");
				int quantity = rs.getInt("quantity");
				double price = rs.getInt("price");
				String postedDate = rs.getString("posted_date");
				String availability = rs.getString("availability");
				String mainItemImage = rs.getString("main_image");
				String subItemImage1 = rs.getString("image_1");
				String subItemImage2 = rs.getString("image_2");
				String subItemImage3 = rs.getString("image_3");

				Item item = new Item(SellerID, ItemID, title, status, category, description, model, quantity, price,
						postedDate, availability, mainItemImage, subItemImage1, subItemImage2, subItemImage3);

				products.add(item);

			}

		} catch (Exception e) {

		}

		return products;
	}

	public List<Cart> getCartProducts(ArrayList<Cart> cartlist) {
		List<Cart> products = new ArrayList<Cart>();
		try {
			if (cartlist.size() > 0) {

				for (Cart item : cartlist) {
					db = DBConnection.getInstance();
					con = db.getCon();
					stmt = con.createStatement();

					String sql = "SELECT * FROM item WHERE Item_ID = ?";
					pst = this.con.prepareStatement(sql);
					pst.setInt(1, item.getItemID());

					rs = pst.executeQuery();

					while (rs.next()) {
						Cart row = new Cart();
						row.setItemID(rs.getInt("Item_ID"));
						row.setTitle(rs.getString("title"));
						row.setCategory(rs.getString("category"));
						row.setQuantity(item.getQuantity());
						row.setPrice(rs.getDouble("price") * item.getQuantity());
						row.setMainItemImage(rs.getString("main_image"));
						products.add(row);

					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	public Item getSingleProduct(int Id) {
		Item row = null;

		try {
			String sql = "SELECT * FROM item WHERE Item_ID = ? ";
			pst = this.con.prepareStatement(sql);
			pst.setInt(1, Id);
			rs = pst.executeQuery();

			while (rs.next()) {
				row = new Item();
				row.setItemID(rs.getInt("Item_ID"));
				row.setTitle(rs.getString("title"));
				row.setCategory(rs.getString("category"));
				row.setPrice(rs.getDouble("price"));
				row.setMainItemImage(rs.getString("main_image"));
			}
		} catch (Exception e) {

		}

		return row;

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

}
