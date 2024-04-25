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

@WebServlet("/order-now")
public class orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {

			// get date
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

			Date date = new Date();

			// Customer auth = (Customer) request.getSession().getAttribute("auth");
			// if(auth != null) {
			String ItemID = request.getParameter("id");
			int productQuantity = Integer.parseInt(request.getParameter("quantity"));
			if (productQuantity <= 0) {
				productQuantity = 1;
			}
			int cusID = (int) request.getSession().getAttribute("cusID");
			Order orderModel = new Order();
			orderModel.setItemID(Integer.parseInt(ItemID));
			orderModel.setQuantity(productQuantity);
			orderModel.setDate(formatter.format(date));
			orderModel.setCusID(cusID);

			CartDBUtil order = new CartDBUtil();
			boolean result = order.insertOrder(orderModel);

			if (result) {
				ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
				if (cart_list != null) {
					for (Cart c : cart_list) {
						if (c.getItemID() == Integer.parseInt(ItemID)) {
							cart_list.remove(cart_list.lastIndexOf(c));
							break;
						}
					}

				}

				response.sendRedirect("Order.jsp");

			} else {
				out.print("order faild");
			}

			// }else {
			// out.print("not added");
			// }

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
