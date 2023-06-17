package com.project.buyeritemservice.service;

import com.project.buyeritemservice.entity.BillEntity;
import com.project.buyeritemservice.entity.BuyerSignupEntity;
import com.project.buyeritemservice.pojo.BillPojo;
import com.project.buyeritemservice.pojo.BuyerSignupPojo;

public interface BillService {
	
	BillPojo addBill( BillPojo billPojo);

	void updateMiles(BuyerSignupPojo buyerPojo);

}
