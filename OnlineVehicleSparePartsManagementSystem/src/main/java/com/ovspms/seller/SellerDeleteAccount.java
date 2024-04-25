/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.seller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SellerDeleteAccount
 */
@WebServlet("/sellerDeleteAccount")
public class SellerDeleteAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		int sellerID = (int) session.getAttribute("sellerID");
		boolean deleted = SellerDBUtil.deleteSellerAccount(sellerID);

		if (deleted) {

			session.invalidate();
			request.getRequestDispatcher("sellerRegistration.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("sellerDashboard.jsp").forward(request, response);
		}

	}

}
