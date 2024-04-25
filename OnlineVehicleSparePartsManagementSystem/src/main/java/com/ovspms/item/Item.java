/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.item;

public class Item {
	// attributes
	private int SellerID;
	private int ItemID;
	private String title;
	private String status;
	private String category;
	private String description;
	private String model;
	private int quantity;
	private double price;
	private String postedDate;
	private String availability;
	private String mainItemImage;
	private String subItemImage1;
	private String subItemImage2;
	private String subItemImage3;

	// constructor
	public Item(int sellerID, int ItemID, String title, String status, String category, String description,
			String model, int quantity, double price, String postedDate, String availability, String mainItemImage,
			String subItemImage1, String subItemImage2, String subItemImage3) {
		super();
		SellerID = sellerID;
		this.ItemID = ItemID;
		this.title = title;
		this.status = status;
		this.category = category;
		this.description = description;
		this.model = model;
		this.quantity = quantity;
		this.price = price;
		this.postedDate = postedDate;
		this.availability = availability;
		this.mainItemImage = mainItemImage;
		this.subItemImage1 = subItemImage1;
		this.subItemImage2 = subItemImage2;
		this.subItemImage3 = subItemImage3;
	}

	// getters and setters for item
	public int getSellerID() {
		return SellerID;
	}

	public int getItemID() {
		return ItemID;
	}

	public String getTitle() {
		return title;
	}

	public String getStatus() {
		return status;
	}

	public String getCategory() {
		return category;
	}

	public String getDescription() {
		return description;
	}

	public String getModel() {
		return model;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getPrice() {
		return price;
	}

	public String getPostedDate() {
		return postedDate;
	}

	public String getAvailability() {
		return availability;
	}

	public String getMainItemImage() {
		return mainItemImage;
	}

	public String getSubItemImage1() {
		return subItemImage1;
	}

	public String getSubItemImage2() {
		return subItemImage2;
	}

	public String getSubItemImage3() {
		return subItemImage3;
	}

	public Item() {
		super();
	}

	public void setSellerID(int sellerID) {
		SellerID = sellerID;
	}

	public void setItemID(int itemID) {
		ItemID = itemID;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void setPostedDate(String postedDate) {
		this.postedDate = postedDate;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public void setMainItemImage(String mainItemImage) {
		this.mainItemImage = mainItemImage;
	}

	public void setSubItemImage1(String subItemImage1) {
		this.subItemImage1 = subItemImage1;
	}

	public void setSubItemImage2(String subItemImage2) {
		this.subItemImage2 = subItemImage2;
	}

	public void setSubItemImage3(String subItemImage3) {
		this.subItemImage3 = subItemImage3;
	}

}
