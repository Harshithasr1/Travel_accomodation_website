package com.project.buyeritemservice.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.buyeritemservice.entity.FlightEntity;

@Repository
public interface FlightDao extends JpaRepository<FlightEntity,Integer>{
	
	FlightEntity findByFlightNumber(String s);

}
