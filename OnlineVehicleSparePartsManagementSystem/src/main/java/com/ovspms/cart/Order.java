package com.ovspms.cart;

import com.ovspms.item.Item;

public class Order extends Item {
	private int orderId;
	private int quantity;
	private String date;
	private int cusID;

	public Order() {

	}

	public Order(int orderId, int quantity, String date, int cusID) {

		this.orderId = orderId;
		this.quantity = quantity;
		this.date = date;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getCusID() {
		return cusID;
	}

	public void setCusID(int cusID) {
		this.cusID = cusID;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", quantity=" + quantity + ", date=" + date + "]";
	}

}
