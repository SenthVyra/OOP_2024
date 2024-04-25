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

/**
 * Servlet implementation class SellerUpdateDetails
 */
@WebServlet("/updateSellerDetails")
public class SellerUpdateDetailsServlet extends HttpServlet {
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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		int contactNumber = Integer.parseInt(request.getParameter("contactNo"));
		String password = request.getParameter("confirmPassword");
		String address = request.getParameter("address");

		boolean updated = SellerDBUtil.updateSellerDetails(sellerID, fname, lname, email, password, contactNumber,
				address);

		if (updated) {
			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");
			request.setAttribute("updateProfileStatus", "success");

		} else {
			request.setAttribute("updateProfileStatus", "failed");
		}
		dispatcher.forward(request, response);
	}

}
