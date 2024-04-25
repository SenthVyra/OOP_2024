package com.ovspms.cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cart-check-out")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

			Date date = new Date();
			int cusID = (int) request.getSession().getAttribute("cusID");
			// retrive all cart products
			ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
			if (cart_list != null) {
				for (Cart c : cart_list) {
					// prepare the order object
					Order order = new Order();
					order.setItemID(c.getItemID());
					order.setQuantity(c.getQuantity());
					order.setDate(formatter.format(date));
					order.setCusID(cusID);

					// instiate the dbutil
					CartDBUtil order1 = new CartDBUtil();

					// caling the insert method
					boolean result = order1.insertOrder(order);
					if (!result)
						break;
				}
				cart_list.clear();
				response.sendRedirect("Order.jsp");

			} else {
				response.sendRedirect("Cart.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
