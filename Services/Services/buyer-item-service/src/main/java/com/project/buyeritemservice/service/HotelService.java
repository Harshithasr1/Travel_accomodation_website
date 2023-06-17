//package com.project.buyeritemservice.service;
//
//import java.util.List;
//import com.project.buyeritemservice.pojo.HotelPojo;
//import com.project.buyeritemservice.pojo.ItemPojo;
//
//public interface HotelService {
//	
//	List<HotelPojo> getAllitems();
//
//}
package com.project.buyeritemservice.service;

import java.util.List;
import com.project.buyeritemservice.pojo.HotelPojo;

public interface HotelService {
	
	List<HotelPojo> getAllHotels();
	
	List<HotelPojo> getHotels(String source);
}
