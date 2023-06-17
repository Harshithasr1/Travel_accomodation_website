package com.project.buyeritemservice.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.buyeritemservice.dao.HotelDao;
import com.project.buyeritemservice.entity.CategoryEntity;
import com.project.buyeritemservice.entity.HotelEntity;
import com.project.buyeritemservice.entity.SellerSignupEntity;
import com.project.buyeritemservice.entity.SubCategoryEntity;
import com.project.buyeritemservice.pojo.CategoryPojo;
import com.project.buyeritemservice.pojo.HotelPojo;
import com.project.buyeritemservice.pojo.SellerSignupPojo;
import com.project.buyeritemservice.pojo.SubCategoryPojo;

import java.util.Iterator;

@Service
public class HotelServiceImpl implements HotelService {
	
	static Logger LOG = Logger.getLogger(ItemServiceImpl.class.getClass());

	@Autowired
	HotelDao hotelDao;
	
	@Override

	public List<HotelPojo> getAllHotels() {
		
		LOG.info("Entered getAllHotels()");

		List<HotelPojo> allHotelPojo = new ArrayList();
		Iterable<HotelEntity> allHotelEntity = hotelDao.findAll();
		Iterator itr = allHotelEntity.iterator();
		while (itr.hasNext()) {
			HotelEntity HotelEntity = (HotelEntity) itr.next();
			HotelPojo allHotelsPojo = new HotelPojo(HotelEntity.getHotelName(),
					HotelEntity.getHotelNo(),
                    HotelEntity.getSource(),
                    HotelEntity.getPlace(),
                    HotelEntity.getCheckInDate(),
                    HotelEntity.getCheckOutDate(),
                    HotelEntity.getDepartureTime(),
                    HotelEntity.getArrivalTime(),
                    HotelEntity.getDuration(),
                    HotelEntity.getCost(),
                    HotelEntity.getAddress(),
                    HotelEntity.getPhoneNumber(),
                    HotelEntity.getRatings(),
                    HotelEntity.getType()
                     );
//			System.out.println("date;" +   FlightEntity.getDate());
			allHotelPojo.add(allHotelsPojo);

		}
	
		LOG.info("Exited getAllHotels()");
		BasicConfigurator.resetConfiguration();
		return allHotelPojo;

	}

	

	@Override
	
	//retrieving all items
	
	public List<HotelPojo> getHotels(String source) {
		
		LOG.info("Entered gethotels()");

		List<HotelPojo> hotelsPojo = new ArrayList();
		Iterable<HotelEntity> allHotelEntity = hotelDao.findAll();
		Iterator itr = allHotelEntity.iterator();
		while (itr.hasNext()) {
			HotelEntity HotelEntity = (HotelEntity) itr.next();
			HotelPojo HotelPojo = new HotelPojo(HotelEntity.getHotelName(),
					                              HotelEntity.getHotelNo(),
					                              HotelEntity.getSource(),
					                              HotelEntity.getPlace(),
					                              HotelEntity.getCheckInDate(),
					                              HotelEntity.getCheckOutDate(),
					                              HotelEntity.getDepartureTime(),
					                              HotelEntity.getArrivalTime(),
					                              HotelEntity.getDuration(),
					                              HotelEntity.getCost(),
					                              HotelEntity.getAddress(),
					                              HotelEntity.getPhoneNumber(),
					                              HotelEntity.getRatings(),
					                              HotelEntity.getType()
					                               );
			
			if(HotelPojo.getPlace().equalsIgnoreCase(source)) {
				hotelsPojo.add(HotelPojo);
			}

		}
	
		LOG.info("Exited getAllitems()");
		BasicConfigurator.resetConfiguration();
		return hotelsPojo;

	}


}
