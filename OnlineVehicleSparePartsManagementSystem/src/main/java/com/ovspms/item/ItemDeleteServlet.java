/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.item;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ItemDeleteServlet
 */
@WebServlet("/DeleteAd")
public class ItemDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get the session variable 'itemID'
		int itemID = Integer.parseInt(request.getParameter("itemID"));

		/*
		 * call the deleteItem details method in ItemDBUtil and get the boolean value
		 * returned
		 */
		boolean deleted = ItemDBUtil.deleteItem(itemID);

		// if the item is deleted
		if (deleted) {
			request.setAttribute("itemDeleteStatus", "success");
			request.getRequestDispatcher("sellerDashboard.jsp").forward(request, response);
		} else {
			// if item is not deleted
			request.setAttribute("itemDeleteStatus", "failed");
			request.getRequestDispatcher("sellerDashboard.jsp").forward(request, response);
		}

	}

}
