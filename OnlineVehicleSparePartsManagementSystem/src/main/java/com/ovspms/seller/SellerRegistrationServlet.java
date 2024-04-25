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

/**
 * Servlet implementation class SellerRegistrationServlet
 */
@WebServlet("/sellerRegister")
public class SellerRegistrationServlet extends HttpServlet {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static DBConnection db;
	private static PreparedStatement pst = null;
	private RequestDispatcher dispatcher = null;

	private static final long serialVersionUID = 1L;
	private Seller seller;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		int contactNumber = Integer.parseInt(request.getParameter("contactNo"));
		String password = request.getParameter("password");
		String address = request.getParameter("address");

		boolean inserted = SellerDBUtil.insertSellerDetails(fname, lname, email, password, contactNumber, address);

		if (inserted) {
			dispatcher = request.getRequestDispatcher("sellerLogin.jsp");
			request.setAttribute("registrationStatus", "success");

		} else {
			request.setAttribute("registrationStatus", "failed");
			dispatcher = request.getRequestDispatcher("sellerRegistration.jsp");
		}
		dispatcher.forward(request, response);

	}

}
