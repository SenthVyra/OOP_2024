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
import java.util.List;

import com.ovspms.DBConnection.DBConnection;
import com.ovspms.company.Company;
import com.ovspms.company.CompanyDBUtil;
import com.ovspms.item.Item;
import com.ovspms.item.ItemDBUtil;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class sellerLogoutServlet
 */
@WebServlet("/sellerLogin")
public class sellerLoginServlet extends HttpServlet {
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

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		CompanyDBUtil companyDBUtil = new CompanyDBUtil();
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;

		int sellerID = SellerDBUtil.SellerLogin(email, password);

		if (sellerID > 0) {
			request.getSession().setAttribute("sellerID", sellerID);
			SellerDBUtil.getSellerInfo(sellerID);
			Company company = companyDBUtil.getCompanyInfo(sellerID);
			request.setAttribute("loginStatus", "success");
			List<Item> items = ItemDBUtil.viewItems(sellerID);
			request.setAttribute("NumberOfItemsPosted", items.size());
			request.getSession().setAttribute("company", company);
			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");

		} else {
			request.setAttribute("loginStatus", "failed");
			dispatcher = request.getRequestDispatcher("sellerLogin.jsp");
		}
		dispatcher.forward(request, response);

	}

}
