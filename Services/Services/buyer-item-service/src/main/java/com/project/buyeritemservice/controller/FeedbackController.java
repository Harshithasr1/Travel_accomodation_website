package com.project.buyeritemservice.controller;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.buyeritemservice.pojo.FeedbackPojo;
import com.project.buyeritemservice.service.FeedbackService;

@CrossOrigin
@RestController
public class FeedbackController {
	static Logger LOG = Logger.getLogger(FeedbackController.class.getClass());
	
	@Autowired
	FeedbackService feedbackservice;
	
	@PostMapping("feedback")

	FeedbackPojo addfeedback(@RequestBody FeedbackPojo feedbackPojo)
	{
		BasicConfigurator.configure();
		LOG.info("entered controller feedback");

		LOG.info("exited controller feedback");
		return feedbackservice.addfeedback(feedbackPojo);
	}
	
	
}
