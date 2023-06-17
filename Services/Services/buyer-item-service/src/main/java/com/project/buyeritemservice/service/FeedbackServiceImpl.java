package com.project.buyeritemservice.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.buyeritemservice.dao.FeedbackDao;
import com.project.buyeritemservice.entity.FeedbackEntity;
import com.project.buyeritemservice.pojo.FeedbackPojo;

@Service
public class FeedbackServiceImpl implements FeedbackService {

static Logger LOG = Logger.getLogger(FeedbackServiceImpl.class.getClass());
	
	@Autowired
	FeedbackDao feedbackdao;
	
	@Override
	@Transactional
	public FeedbackPojo addfeedback(FeedbackPojo feedbackpojo) {
		LOG.info("entered addfeedback()");
		FeedbackEntity feedbackEntity = new FeedbackEntity(feedbackpojo.getUserid(), 
											feedbackpojo.getMessage(),
											feedbackpojo.getRating());

		
		feedbackdao.save(feedbackEntity);
		LOG.info("Exited addBuyer()");
		return feedbackpojo;
	}		

	
}
