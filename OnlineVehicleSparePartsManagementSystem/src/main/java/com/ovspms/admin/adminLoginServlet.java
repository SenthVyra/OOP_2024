package com.ovspms.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// to print in the browser, not inside the system
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");

		boolean isTrue;

		// calling the validation method from the adminDBUtil.java file
		isTrue = adminDBUtil.validate(email, password);

		if (isTrue == true) {
			List<admin> adminDetails = adminDBUtil.getAdminDetails(email);
			request.setAttribute("adminDetails", adminDetails);
			int adminID = 0;
			for (admin admin : adminDetails) {
				adminID = admin.getAdmin_ID();
			}

			if (adminID > 0) {
				request.getSession().setAttribute("adminID", adminID);
			}

			RequestDispatcher dis = request.getRequestDispatcher("AdminAccount.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert ('Your username or password is incorrect.');");
			out.println("location = 'AdminLogin.jsp'");
			out.println("</script>");
		}
	}
}
