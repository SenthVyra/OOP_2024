package com.ovspms.contact;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CusContactServlet")
public class CusContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// class name
		String name = request.getParameter("name");
		String subject = request.getParameter("email");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = request.getParameter("msg");

		// insertContact method return a boolean value
		// to catch that returning value
		boolean isTrue;

		// calling insert method from the model class
		isTrue = ContactDBUtil.insertContactCustomer(name, subject, email, phone, message);

		// if the data was inserted into the database successfully
		if (isTrue == true) {
			// to navigate from a servlet to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("CustomerContact.jsp");
			dis.forward(request, response);
		}
	}
}
