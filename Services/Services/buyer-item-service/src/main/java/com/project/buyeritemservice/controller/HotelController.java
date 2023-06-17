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

import com.project.buyeritemservice.pojo.HotelPojo;
import com.project.buyeritemservice.service.HotelService;

@CrossOrigin
@RestController
@RequestMapping("hotel")
public class HotelController {
	
static Logger LOG = Logger.getLogger(ItemController.class.getClass());
	
	@Autowired
	HotelService HotelService;

	
	@GetMapping("/all")
	List<HotelPojo> getAllhotels() {
		BasicConfigurator.configure();
		LOG.info("entered controller get allItems");
		LOG.info("exited controller get allItems");
		return HotelService.getAllHotels();
	}
	
	@GetMapping("/hotel-list/{source}")
	List<HotelPojo> getHotels(@PathVariable("") String source) {
		BasicConfigurator.configure();
		LOG.info("entered controller get hotels");
		return HotelService.getHotels(source);
	}
	

}
