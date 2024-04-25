package com.ovspms.cart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add-to-cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		// int ItemID=Integer.parseInt(request.getParameter("ItemID"));
		// String title=request.getParameter("title");
		// System.out.println("Selected ItemId:"+ItemID);
		// System.out.println("Selected ItemId:"+title);
		// boolean isTrue;
		// isTrue=ItemDBUtil.insertCart(ItemID, );

// ---- SQL Query Exec		 ----

		// response.sendRedirect("Cart.jsp");

// ---- SQL Query Exec		 ----		
//		
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
//			
			ArrayList<Cart> cartlist = new ArrayList<>();

			int ItemID = Integer.parseInt(request.getParameter("ItemID"));
			Cart cm = new Cart();
			cm.setItemID(ItemID);
			cm.setQuantity(1);

//			
			HttpSession session = request.getSession();

			ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
//			
			if (cart_list == null) {
				cartlist.add(cm);
				session.setAttribute("cart-list", cartlist);
				// out.print(cm.getItemID());
				response.sendRedirect("Product.jsp");
				// out.print("session created");

			} else {
				cartlist = cart_list;
				boolean exist = false;
				for (Cart c : cartlist) {
					if (c.getItemID() == ItemID) {
						exist = true;
						out.print("product exist");
						response.sendRedirect("Cart.jsp");
					}

				}

				if (!exist) {
					cartlist.add(cm);
					out.print("product addded");
					response.sendRedirect("Product.jsp");
				}
				// response.sendRedirect("Cart.jsp");
			}

//		for(Cart c:cart_list) {
//			out.print(c.getItemID());
//		}

		}

	}
}
