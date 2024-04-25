package com.ovspms.billing;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/billing-details")

public class BillingServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String address1 = request.getParameter("addressl1");
		String address2 = request.getParameter("addressl2");
		int postal = Integer.parseInt(request.getParameter("postal"));
		String company = request.getParameter("company");

		try {
			List<Billing> bill = BillingDBUtil.display();
			request.setAttribute("bill", bill);
		} catch (Exception e) {
			e.printStackTrace();
		}

		boolean isTrue;

		isTrue = BillingDBUtil.insertBiiling(fname, lname, email, phone, country, state, address1, address2, postal,
				company);
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("BillingDetails.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("");
		}
	}

}
