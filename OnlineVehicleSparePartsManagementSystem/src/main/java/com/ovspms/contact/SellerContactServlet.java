package com.ovspms.contact;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SellerContactServlet")
public class SellerContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String subject = request.getParameter("email");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = request.getParameter("msg");

		boolean isTrue;
		isTrue = ContactDBUtil.insertContactSeller(name, subject, email, phone, message);

		if (isTrue == true) {
			// to navigate from a servlet to another jsp page
			RequestDispatcher dis = request.getRequestDispatcher("SellerContact.jsp");
			dis.forward(request, response);
		}
	}
}
