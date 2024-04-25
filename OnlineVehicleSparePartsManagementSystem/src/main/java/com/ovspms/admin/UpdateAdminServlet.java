package com.ovspms.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAdmin")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// UpdateAdminAccount.jsp name
		String id = request.getParameter("adminID");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");

		// calling update admin method
		boolean isTrue;

		isTrue = adminDBUtil.updateAdmin(id, name, email, phone, password);

		if (isTrue == true) {

			// to pass the updated details of the admin
			List<admin> adminDetails = adminDBUtil.getUpdatedAdminDetails(id);

			request.setAttribute("adminDetails", adminDetails);

			RequestDispatcher dis = request.getRequestDispatcher("AdminAccount.jsp");
			dis.forward(request, response);
		} else {
			List<admin> adminDetails = adminDBUtil.getUpdatedAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);

			RequestDispatcher dis = request.getRequestDispatcher("UpdateAdminAccount.jsp");
			dis.forward(request, response);
		}
	}

}
