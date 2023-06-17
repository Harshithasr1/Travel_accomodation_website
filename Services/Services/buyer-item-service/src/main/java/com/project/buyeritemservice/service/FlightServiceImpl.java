package com.project.buyeritemservice.service;



import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.buyeritemservice.dao.FlightDao;
import com.project.buyeritemservice.entity.FlightEntity;
import com.project.buyeritemservice.pojo.FlightPojo;
import java.util.Iterator;

@Service
public class FlightServiceImpl implements FlightService {

	static Logger LOG = Logger.getLogger(ItemServiceImpl.class.getClass());

	@Autowired
	FlightDao flightDao;

	

	@Override
	
	//retrieving all items
	
	public List<FlightPojo> getAllFlights() {
		
		LOG.info("Entered getAllitems()");

		List<FlightPojo> allFlightPojo = new ArrayList();
		Iterable<FlightEntity> allFlightEntity = flightDao.findAll();
		Iterator itr = allFlightEntity.iterator();
		while (itr.hasNext()) {
			FlightEntity FlightEntity = (FlightEntity) itr.next();
			FlightPojo FlightPojo = new FlightPojo(FlightEntity.getFlightName(),
					                              FlightEntity.getFlightNumber(),
					                              FlightEntity.getSource(),
					                              FlightEntity.getDestination(),
					                              FlightEntity.getDate(),
					                              FlightEntity.getReturnDate(),
					                              FlightEntity.getDepartureTime(),
					                              FlightEntity.getArrivalTime(),
					                              FlightEntity.getDuration(),
					                              FlightEntity.getCost(),
					                              FlightEntity.getFlightType(),
					                              FlightEntity.getFlightStatus(),
					                              FlightEntity.getMiles(),
					                              FlightEntity.getType()
					                               );
//			System.out.println("date;" +   FlightEntity.getDate());
			allFlightPojo.add(FlightPojo);

		}
	
//		LOG.info("Exited getAllitems()");
		BasicConfigurator.resetConfiguration();
		return allFlightPojo;

	}
	
	@Override
	public FlightPojo getFlightById(String id) {
		
		LOG.info("Entered getFlightStatus()");
		FlightPojo flightPojo1=null;

		
		Iterable<FlightEntity> statusEntity = flightDao.findAll();
		Iterator itr = statusEntity.iterator();
		while (itr.hasNext()) {
			FlightEntity FlightEntity = (FlightEntity) itr.next();
			FlightPojo flightPojo = new FlightPojo(FlightEntity.getFlightName(),
								           FlightEntity.getFlightNumber(),
					                       FlightEntity.getSource(),
					                       FlightEntity.getDestination(),
					                       FlightEntity.getDate(),
					                       FlightEntity.getReturnDate(),
					                       FlightEntity.getDepartureTime(),
					                       FlightEntity.getArrivalTime(),
					                       FlightEntity.getDuration(),
					                       FlightEntity.getCost(),
					                       FlightEntity.getFlightType(),
					                       FlightEntity.getFlightStatus(),
					                       FlightEntity.getMiles(),
					                       FlightEntity.getType()
					                        );
			if(flightPojo.getFlightNumber().equalsIgnoreCase(id)) {
				flightPojo1=flightPojo;
				break;
			}			

		}
	
//		LOG.info("Exited getAllitems()");
		BasicConfigurator.resetConfiguration();
		return flightPojo1;

	}
	
	@Override
	public List<FlightPojo> getFlights(String source, String destination, Date depdate) {
		
		LOG.info("Entered getFlights()");
		List<FlightPojo> flightPojos = new ArrayList();

		
		Iterable<FlightEntity> statusEntity = flightDao.findAll();
		Iterator itr = statusEntity.iterator();
		while (itr.hasNext()) {
			FlightEntity FlightEntity = (FlightEntity) itr.next();
			FlightPojo flightPojo = new FlightPojo(FlightEntity.getFlightName(),
								           FlightEntity.getFlightNumber(),
					                       FlightEntity.getSource(),
					                       FlightEntity.getDestination(),
					                       FlightEntity.getDate(),
					                       FlightEntity.getReturnDate(),
					                       FlightEntity.getDepartureTime(),
					                       FlightEntity.getArrivalTime(),
					                       FlightEntity.getDuration(),
					                       FlightEntity.getCost(),
					                       FlightEntity.getFlightType(),
					                       FlightEntity.getFlightStatus(),
					                       FlightEntity.getMiles(),
					                       FlightEntity.getType()
					                        );
			if(flightPojo.getSource().equalsIgnoreCase(source) && flightPojo.getDestination().equalsIgnoreCase(destination) && flightPojo.getDate().equals(depdate)) {
				flightPojos.add(flightPojo);
			}			

		}
	
		LOG.info("Exited getFlights()");
		BasicConfigurator.resetConfiguration();
		return flightPojos;

	}
	

}
