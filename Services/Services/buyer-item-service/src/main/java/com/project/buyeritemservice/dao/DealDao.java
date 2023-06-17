package com.project.buyeritemservice.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.project.buyeritemservice.entity.DealEntity;
import com.project.buyeritemservice.entity.FlightEntity;

@Repository
public interface DealDao extends JpaRepository<DealEntity,Integer>{
	DealEntity findByFlightNumber(String s);
}
