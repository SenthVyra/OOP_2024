
package com.ovspms.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ovspms.DBConnection.DBConnection;





public class customerDBUtil {
	private static boolean isSuccess;
	private static  Connection con = null;
	private static Statement stmt = null;
	private static DBConnection db;
	private static ResultSet rs = null;
	
	//Inserting data to database
	public static boolean insertCustomer(String C_fname, String C_lname,String C_email,String C_contactNo, String C_address, String C_password){
    	boolean isSuccess = false;
    	
   
    	
    	
    	try {
    		db = DBConnection.getInstance();
			con = db.getCon();
    		stmt = ((Connection) con).createStatement();
            
    		 //query
    		 String sql = "INSERT INTO customer VALUES (0,'"+C_fname+"','"+C_lname+"','"+C_email+"','"+C_contactNo+"','"+C_address+"','"+C_password+"')";
    		 int rs = stmt.executeUpdate(sql);
    		 
    		 //execute update returns 2 values , zeros and 1
    		 //if 1 is returned it is successful
    		 
    		 if(rs>0) {
    			 isSuccess = true;
    		 }else {
    			 isSuccess = false;
    		 }
    		 
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
	//validate login
	public static boolean validate (String email, String password) {
		boolean isSuccess = false;
		
		try {
			db = DBConnection.getInstance();
			con = db.getCon();
    		stmt = ((Connection) con).createStatement();
    		
    		String sql= "SELECT * FROM customer WHERE C_email='"+email+"' AND C_password = '"+password+"'";
    		rs = stmt.executeQuery(sql);
    		
    		if(rs.next()) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//collect login details
	public static List <customer> GetCustomer (String email){
		ArrayList<customer> cus = new ArrayList<> ();
		
		//validate
		try {
			db = DBConnection.getInstance();
			con = db.getCon();
    		stmt = ((Connection) con).createStatement();
    		
    		String sql= "SELECT * FROM customer WHERE C_email='"+email+"'";
    		
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int idCustomer = rs.getInt(1);
    			String C_fname = rs.getString(2);
    			String C_lname = rs.getString(3);
    			String C_email = rs.getString(4);
    			String C_contactNo = rs.getString(5);
    			String C_address =rs.getString(6);
    			String C_password = rs.getString(7);
    			
    			customer c = new customer (idCustomer,C_fname,C_lname,C_email,C_contactNo,C_address,C_password);
    			c.id = idCustomer;
    			cus.add(c);
    		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	//update
	public static boolean updateCustomer(String id,String fname,String lname,String email,String contact,String address) {
		try {
			db = DBConnection.getInstance();
			con = db.getCon();
    		stmt = ((Connection) con).createStatement();
    		
    		String sql ="UPDATE customer SET C_fname='"+fname+"',C_lname='"+lname+"',C_email='"+email+"',C_contactNo='"+contact+"',C_address='"+address+"'"+"WHERE idCustomer='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs>0) {
    			isSuccess=true;
    		}else {
    			isSuccess = false;
    		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	// Read data
	public static List<customer> getCustomerDetails(String id){
		ArrayList<customer> cus = new ArrayList<>();
		int convertedID =Integer.parseInt(id);
		
		try {
			db = DBConnection.getInstance();
			con = db.getCon();
    		stmt = ((Connection) con).createStatement();
    		
    		String sql="SELECT * from customer WHERE idCustomer='"+convertedID+"'";
    		rs=stmt.executeQuery(sql);
    		while(rs.next()) {
    		int idCustomer = rs.getInt(1);
			String C_fname = rs.getString(2);
			String C_lname = rs.getString(3);
			String C_email = rs.getString(4);
			String C_contactNo = rs.getString(5);
			String C_address =rs.getString(6);
			String C_password = rs.getString(7);
    		
			
			customer c = new customer (idCustomer,C_fname,C_lname,C_email,C_contactNo,C_address,C_password);
			cus.add(c);
    		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	//Delete Data
	public static boolean deleteCustomer(String id) {
		int convertedID = Integer.parseInt(id);
		 
		try {
			db = DBConnection.getInstance();
			con = db.getCon();
    		stmt = ((Connection) con).createStatement();
    		
    		String sql ="DELETE FROM customer WHERE idCustomer='"+convertedID+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs>0) {
    			isSuccess=true;
    		}else {
    			isSuccess = false;
    		}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
}
