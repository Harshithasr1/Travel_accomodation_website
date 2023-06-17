package com.project.buyeritemservice.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.buyeritemservice.entity.FeedbackEntity;

@Repository
public interface FeedbackDao extends JpaRepository<FeedbackEntity,Integer> {

}
