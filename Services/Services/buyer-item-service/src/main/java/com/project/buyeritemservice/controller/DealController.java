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

import com.project.buyeritemservice.pojo.DealPojo;
import com.project.buyeritemservice.service.DealService;

@CrossOrigin
@RestController
@RequestMapping("deal")
public class DealController {

static Logger LOG = Logger.getLogger(DealController.class.getClass());
	
	@Autowired
	DealService DealService;
	
	@GetMapping("/deal-list")
	List<DealPojo> getDeals() {
		BasicConfigurator.configure();
		LOG.info("entered controller get deals");
		LOG.info("exited controller get deals");
		return DealService.getDeals();
	}
	
	@GetMapping("/deal-list/{source}/{destination}/{fromdate}/{todate}/{minprice}/{maxprice}")
	List<DealPojo> getDeals(@PathVariable("") String source, @PathVariable("") String destination, @PathVariable("") Date fromdate, @PathVariable("") Date todate, @PathVariable("") int minprice, @PathVariable("") int maxprice) {
		BasicConfigurator.configure();
		LOG.info("entered controller get dealsearch");
//		System.out.println("flight num " + flightNumber);
//		System.out.println("flight status " + FlightService.getFlightById(flightNumber).getFlightStatus());
		return DealService.getDeals(source, destination, fromdate, todate, minprice, maxprice);
	}
}

