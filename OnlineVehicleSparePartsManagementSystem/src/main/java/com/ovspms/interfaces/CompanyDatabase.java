/*
 * IT21260988
 * Randeniya R. A. D. S. E
 * 
 */

package com.ovspms.interfaces;

import com.ovspms.company.Company;

public interface CompanyDatabase {
	public boolean insertCompanyDetails(int sellerID, String name, int contactNo, String email, String logo,
			String address, String district, String city);

	public Company getCompanyInfo(int sellerID);

	public boolean updateCompanyDetails(int sellerID, String name, int contactNo, String email, String logo,
			String address, String district, String city);
}
