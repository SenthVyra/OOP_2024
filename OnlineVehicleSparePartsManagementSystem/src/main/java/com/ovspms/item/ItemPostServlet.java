/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.item;

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
 * Servlet implementation class ItemPostServlet
 */
@MultipartConfig
@WebServlet("/PostAd")
public class ItemPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		// get the session variable 'sellerID'
		int sellerID = (int) session.getAttribute("sellerID");

		// get the parameters
		String title = request.getParameter("title");
		String status = request.getParameter("status");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		String model = request.getParameter("model");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Double price = Double.parseDouble(request.getParameter("price"));

		Part image1 = request.getPart("mainItemImage");
		String mainImage = image1.getSubmittedFileName();
		String uploadPath = "E:/Programming/eclipse-workspace/OnlineVehicleSparePartsManagementSystem/src/main/webapp/itemImages/"
				+ mainImage;

		try {
			FileOutputStream fileOutputStream = new FileOutputStream(uploadPath);
			InputStream inputStream = image1.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();
		} catch (Exception e) {

			e.printStackTrace();
		}

		Part image2 = request.getPart("subItemImage1");
		String subImage1 = image2.getSubmittedFileName();
		String subUploadPath = "E:/Programming/eclipse-workspace/OnlineVehicleSparePartsManagementSystem/src/main/webapp/itemImages/"
				+ subImage1;

		try {
			FileOutputStream fileOutputStream = new FileOutputStream(subUploadPath);
			InputStream inputStream = image2.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();
		} catch (Exception e) {

			e.printStackTrace();
		}

		Part image3 = request.getPart("subItemImage2");
		String subImage2 = image3.getSubmittedFileName();
		String subUploadPath2 = "E:/Programming/eclipse-workspace/OnlineVehicleSparePartsManagementSystem/src/main/webapp/itemImages/"
				+ subImage2;

		try {
			FileOutputStream fileOutputStream = new FileOutputStream(subUploadPath2);
			InputStream inputStream = image3.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();
		} catch (Exception e) {

			e.printStackTrace();
		}

		Part image4 = request.getPart("subItemImage3");
		String subImage3 = image4.getSubmittedFileName();
		String subUploadPath3 = "E:/Programming/eclipse-workspace/OnlineVehicleSparePartsManagementSystem/src/main/webapp/itemImages/"
				+ subImage3;

		try {
			FileOutputStream fileOutputStream = new FileOutputStream(subUploadPath3);
			InputStream inputStream = image4.getInputStream();

			byte[] data = new byte[inputStream.available()];
			inputStream.read(data);
			fileOutputStream.write(data);
			fileOutputStream.close();
		} catch (Exception e) {

			e.printStackTrace();
		}

		RequestDispatcher dispatcher = null;

		/*
		 * call the insertItemDetails details method in ItemDBUtil and get the boolean
		 * value returned
		 */
		boolean itemInserted = ItemDBUtil.insertItemDetails(sellerID, title, status, description, category, model,
				quantity, price, mainImage, subImage1, subImage2, subImage3);

		// if the item is inserted
		if (itemInserted) {

			dispatcher = request.getRequestDispatcher("sellerDashboard.jsp");

			request.setAttribute("itemPostStatus", "success");

		} else {
			// if the item inserting failed
			request.setAttribute("itemPostStatus", "failed");
		}
		dispatcher.forward(request, response);

	}

}
