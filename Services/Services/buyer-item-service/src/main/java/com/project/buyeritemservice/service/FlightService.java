//package com.project.buyeritemservice.service;
//
//public class FlightService {
//
//}
package com.project.buyeritemservice.service;

import java.sql.Date;
import java.util.List;

import com.project.buyeritemservice.pojo.FlightPojo;
import com.project.buyeritemservice.pojo.ItemPojo;

public interface FlightService {

	List<FlightPojo> getAllFlights();
	
	FlightPojo getFlightById(String id);
	
	List<FlightPojo> getFlights(String source, String destination, Date depdate);

}