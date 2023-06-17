package com.project.buyeritemservice.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.buyeritemservice.entity.FlightEntity;
import com.project.buyeritemservice.entity.HotelEntity;

@Repository
public interface HotelDao extends JpaRepository<HotelEntity,Integer>{

}
