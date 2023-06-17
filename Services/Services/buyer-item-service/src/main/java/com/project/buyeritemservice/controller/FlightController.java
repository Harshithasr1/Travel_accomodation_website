package com.project.buyeritemservice.controller;

import java.sql.Date;
import java.util.List;



import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.buyeritemservice.pojo.FlightPojo;
import com.project.buyeritemservice.service.FlightService;

@CrossOrigin
@RestController
@RequestMapping("flight")
public class FlightController {

static Logger LOG = Logger.getLogger(ItemController.class.getClass());
	
	@Autowired
	FlightService FlightService;

	
	@GetMapping("/all")
	List<FlightPojo> getAllflights() {
		BasicConfigurator.configure();
		LOG.info("entered controller get allItems");
		LOG.info("exited controller get allItems");
		return FlightService.getAllFlights();
	}
	
	@GetMapping("/flight-status/{flightNumber}")
	FlightPojo getFlightStatus(@PathVariable(value = "") String flightNumber) {
		BasicConfigurator.configure();
		LOG.info("entered controller get FlightStatus");
		LOG.info("exited controller get FlightStatus");
//		System.out.println("flight num " + flightNumber);
//		System.out.println("flight status " + FlightService.getFlightById(flightNumber).getFlightStatus());
		return FlightService.getFlightById(flightNumber);
	}
	
	@GetMapping("/flight-list/{source}/{destination}/{depdate}")
	List<FlightPojo> getFlights(@PathVariable("") String source, @PathVariable("") String destination, @PathVariable("") Date depdate) {
		BasicConfigurator.configure();
		LOG.info("entered controller get FlightSearch");
//		System.out.println("flight num " + flightNumber);
//		System.out.println("flight status " + FlightService.getFlightById(flightNumber).getFlightStatus());
		return FlightService.getFlights(source, destination, depdate);
	}
}
