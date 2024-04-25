/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.item;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ItemsView
 */
@WebServlet("/viewAds")
public class ItemsViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		// get the session variable 'sellerID'
		int sellerID = (int) session.getAttribute("sellerID");
		RequestDispatcher dispatcher = null;

		/*
		 * call the viewItems details method in ItemDBUtil and get the list of items
		 * posted by the seller with the sellerID
		 */
		try {
			List<Item> items = ItemDBUtil.viewItems(sellerID);
			request.setAttribute("PostedItems", items);
			request.setAttribute("NumberOfItemsPosted", items.size());
			dispatcher = request.getRequestDispatcher("SellerViewAds.jsp");

		} catch (Exception e) {

			e.printStackTrace();
		}
		dispatcher.forward(request, response);
	}

}
