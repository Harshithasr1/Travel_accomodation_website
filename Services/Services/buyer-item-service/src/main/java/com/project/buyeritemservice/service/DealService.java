package com.project.buyeritemservice.service;

import java.sql.Date;
import java.util.List;
import com.project.buyeritemservice.pojo.DealPojo;

public interface DealService {

	List<DealPojo> getDeals();
//	DealPojo getFlightById(String id);
//	List<DealPojo> getFlights(String source, String destination, Date depdate);

	List<DealPojo> getDeals(String source, String destination, Date fromdate, Date todate, int minprice, int maxprice);

}
