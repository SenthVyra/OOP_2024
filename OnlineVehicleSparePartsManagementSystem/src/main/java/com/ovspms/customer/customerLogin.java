package com.ovspms.customer;

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

@WebServlet("/customerLogin")
public class customerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		boolean isTrue;

		isTrue = customerDBUtil.validate(email, password);

		if (isTrue == true) {
			List<customer> cusDetails = customerDBUtil.GetCustomer(email);
			request.setAttribute("cusDetails", cusDetails);
			int cusID = 0;
			for (customer cus : cusDetails) {
				cusID = cus.getId();
			}

			if (cusID > 0) {
				request.getSession().setAttribute("cusID", cusID);
			}
			request.getSession().setAttribute("user", "customer");
			RequestDispatcher dis = request.getRequestDispatcher("customerDashboard.jsp");
			dis.forward(request, response);

		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Incorrect Email or Password');");
			out.println("location= 'login.jsp'");
			out.println("</script>");
		}

	}
}