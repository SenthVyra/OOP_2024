package com.ovspms.customer;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/customerUpdate")
public class customerUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("C_cid");
		String fname = request.getParameter("C_fname");
		String lname = request.getParameter("C_lname");
		String email = request.getParameter("C_email");
		String contact = request.getParameter("C_contactNo");
		String address = request.getParameter("C_address");

		boolean isTrue;
		isTrue = customerDBUtil.updateCustomer(id, fname, lname, email, contact, address);
		if (isTrue == true) {

			List<customer> cusDetails = customerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher dis = request.getRequestDispatcher("customerDashboard.jsp");
			dis.forward(request, response);
		} else {
			List<customer> cusDetails = customerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher dis = request.getRequestDispatcher("customerDashboard.jsp");
			dis.forward(request, response);
		}

	}

}
