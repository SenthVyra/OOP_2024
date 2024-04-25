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
 * Servlet implementation class SellerLogoutServlet
 */
@WebServlet("/sellerLogout")
public class SellerLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("sellerLogin.jsp").forward(request, response);
//		response.sendRedirect("sellerLogin.jsp");
	}

}
