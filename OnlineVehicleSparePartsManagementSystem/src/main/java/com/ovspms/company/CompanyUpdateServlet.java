/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.company;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class CompanyUpdate
 */
@MultipartConfig
@WebServlet("/updateCompany")
public class CompanyUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		// get the session variable 'sellerID'
		int sellerID = (int) session.getAttribute("sellerID");

		CompanyDBUtil companyDBUtil = new CompanyDBUtil();

		// get the parameters
		String name = request.getParameter("name");
		int contactNumber = Integer.parseInt(request.getParameter("contactNumber"));
		String email = request.getParameter("email");
		Part image = request.getPart("comapnyLogo");

		String logo = image.getSubmittedFileName();
		String uploadPath = "E:/Programming/eclipse-workspace/OnlineVehicleSparePartsManagementSystem/src/main/webapp/companyImages/"
				+ logo;

		try {
			FileOutputStream fileOutputStream = new FileOutputStream(uploadPath);
			InputStream inputStream = image.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();
		} catch (Exception e) {

			e.printStackTrace();
		}

		String address = request.getParameter("address");
		String district = request.getParameter("district");
		String city = request.getParameter("city");
		RequestDispatcher dispatcher = null;

		/*
		 * call the updateCompanyDetails details method in companyDBUtil and get the
		 * boolean value returned
		 */
		boolean companyUpdated = companyDBUtil.updateCompanyDetails(sellerID, name, contactNumber, email, logo, address,
				district, city);

		// if the company is updated
		if (companyUpdated) {
			Company updatedCompany = companyDBUtil.getCompanyInfo(sellerID);
			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");
			request.getSession().setAttribute("company", updatedCompany);
			request.setAttribute("companyUpdateStatus", "success");

		} else {
			// if company updating is failed
			dispatcher = request.getRequestDispatcher("index.jsp");
			request.setAttribute("companyUpdateStatus", "failed");
		}
		dispatcher.forward(request, response);
	}

}
