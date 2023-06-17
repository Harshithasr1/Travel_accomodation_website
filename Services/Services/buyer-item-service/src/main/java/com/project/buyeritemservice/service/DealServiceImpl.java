package com.project.buyeritemservice.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.buyeritemservice.dao.DealDao;
import com.project.buyeritemservice.entity.DealEntity;
import com.project.buyeritemservice.pojo.DealPojo;
import java.util.Iterator;

@Service
public class DealServiceImpl implements DealService {

	static Logger LOG = Logger.getLogger(ItemServiceImpl.class.getClass());

	@Autowired
	DealDao dealDao;

	@Override	
	//retrieving all items
	
	public List<DealPojo> getDeals() {
		
		LOG.info("Entered getAllDeals()");

		List<DealPojo> allDealPojo = new ArrayList();
		Iterable<DealEntity> allDealEntity = dealDao.findAll();
		Iterator itr = allDealEntity.iterator();
		while (itr.hasNext()) {
			DealEntity DealEntity = (DealEntity) itr.next();
			DealPojo dealPojo = new DealPojo(DealEntity.getFlightName(),
												DealEntity.getFlightNumber(),
												DealEntity.getSource(),
												DealEntity.getDestination(),
												DealEntity.getDate(),
												DealEntity.getDepartureTime(),
												DealEntity.getArrivalTime(),
												DealEntity.getDuration(),
												DealEntity.getFlightStatus(),
												DealEntity.getCost(),
												DealEntity.getFlightType(),
												DealEntity.getType(),
												DealEntity.getMiles()
					                               );
			allDealPojo.add(dealPojo);

		}
	
//		LOG.info("Exited getAllitems()");
		BasicConfigurator.resetConfiguration();
		return allDealPojo;

	}
	
	@Override	
	//retrieving all items
	
	public List<DealPojo> getDeals(String source, String destination, Date fromdate, Date todate, int minprice, int maxprice) {
		
		LOG.info("Entered getAllDeals()");

		List<DealPojo> allDealPojo = new ArrayList();
		Iterable<DealEntity> allDealEntity = dealDao.findAll();
		Iterator itr = allDealEntity.iterator();
		while (itr.hasNext()) {
			DealEntity DealEntity = (DealEntity) itr.next();
			DealPojo dealPojo = new DealPojo(DealEntity.getFlightName(),
												DealEntity.getFlightNumber(),
												DealEntity.getSource(),
												DealEntity.getDestination(),
												DealEntity.getDate(),
												DealEntity.getDepartureTime(),
												DealEntity.getArrivalTime(),
												DealEntity.getDuration(),
												DealEntity.getFlightStatus(),
												DealEntity.getCost(),
												DealEntity.getFlightType(),
												DealEntity.getType(),
												DealEntity.getMiles()
					                               );
//			System.out.println("date;" +   FlightEntity.getDate());
			if(dealPojo.getSource().equalsIgnoreCase(source) && dealPojo.getDestination().equalsIgnoreCase(destination) 
					&& dealPojo.getDate().after(fromdate) && dealPojo.getDate().before(todate) && 
					dealPojo.getCost() > minprice && dealPojo.getCost() < maxprice) {
				allDealPojo.add(dealPojo);
			}
		}
	
//		LOG.info("Exited getAllitems()");
		BasicConfigurator.resetConfiguration();
		return allDealPojo;

	}
	
//	@Override
//	public List<FlightPojo> getFlights(String source, String destination, Date depdate) {
//		
//		LOG.info("Entered getFlights()");
//		FlightPojo flightPojo2=null;
//		List<FlightPojo> flightPojos = new ArrayList();
//
//		
//		Iterable<FlightEntity> statusEntity = flightDao.findAll();
//		Iterator itr = statusEntity.iterator();
//		while (itr.hasNext()) {
//			FlightEntity FlightEntity = (FlightEntity) itr.next();
//			FlightPojo flightPojo = new FlightPojo(FlightEntity.getFlightName(),
//					                              FlightEntity.getFlightNumber(),
//					                              FlightEntity.getSource(),
//					                              FlightEntity.getDestination(),
//					                              FlightEntity.getDate(),
//					                              FlightEntity.getDepartureTime(),
//					                              FlightEntity.getArrivalTime(),
//					                              FlightEntity.getDuration(),
//					                              FlightEntity.getFlightStatus(),
//					                              FlightEntity.getCost()
//					                               );
//			if(flightPojo.getSource().equalsIgnoreCase(source) && flightPojo.getDestination().equalsIgnoreCase(destination) && flightPojo.getDate().equals(depdate)) {
//				flightPojos.add(flightPojo);
//			}			
//
//		}
//	
//		LOG.info("Exited getFlights()");
//		BasicConfigurator.resetConfiguration();
//		return flightPojos;
//
//	}
	

}
