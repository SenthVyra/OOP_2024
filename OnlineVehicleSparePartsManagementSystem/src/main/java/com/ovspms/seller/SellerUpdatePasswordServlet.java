/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.seller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.ovspms.DBConnection.DBConnection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateSellerPassword")
public class SellerUpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static DBConnection db;
	private static PreparedStatement pst = null;
	private RequestDispatcher dispatcher = null;

	private Seller seller;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int sellerID = (int) session.getAttribute("sellerID");
		String password = request.getParameter("confirmPassword");

		boolean updated = SellerDBUtil.updateSellerPassword(sellerID, password);
		if (updated) {
			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");
			request.setAttribute("updateAPasswordStatus", "success");

		} else {
			request.setAttribute("updatePasswordStatus", "failed");
		}
		dispatcher.forward(request, response);

	}

}
