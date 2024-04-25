package com.ovspms.customer;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/customerRegister")
public class customerRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String C_fname = request.getParameter("fname");
		String C_lname = request.getParameter("lname");
		String C_email = request.getParameter("email");
		String C_contactNo = request.getParameter("contact");
		String C_address = request.getParameter("address");
		String C_password = request.getParameter("pwd");

		boolean isTrue;
		// calling insertMethod in customerDButil n assign this
		isTrue = customerDBUtil.insertCustomer(C_fname, C_lname, C_email, C_contactNo, C_address, C_password);

		if (isTrue == true) {
			// navigate to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}

	}

}
