package com.ovspms.customer;

public class customer {
	 public int id;
	    private String C_fname;
	    private String C_lname;
	    private String C_email;
	    private String C_contactNo;
	    private String C_address;
	    private String C_password;
	    
		public customer(int id, String c_fname, String c_lname, String c_email, String c_contactNo, String c_address,
				String c_password) {
			super();
			this.id = id;
			C_fname = c_fname;
			C_lname = c_lname;
			C_email = c_email;
			C_contactNo = c_contactNo;
			C_address = c_address;
			C_password = c_password;
		}

		public  int getId() {
			return id;
		}

		public String getC_fname() {
			return C_fname;
		}

		public String getC_lname() {
			return C_lname;
		}

		public String getC_email() {
			return C_email;
		}

		public String getC_contactNo() {
			return C_contactNo;
		}

		public String getC_address() {
			return C_address;
		}

		public String getC_password() {
			return C_password;
		}


	    
}


