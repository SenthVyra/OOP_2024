package com.ovspms.cart;

import com.ovspms.item.Item;

public class Cart extends Item {
	private int cartID;
	private int quantity;
	private int cusID;

	public Cart() {
		// super();
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCusID() {
		return cusID;
	}

	public void setCusID(int cusID) {
		this.cusID = cusID;
	}

}
