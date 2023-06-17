package com.project.buyeritemservice.service;

import java.util.HashSet;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.buyeritemservice.dao.BillDao;
import com.project.buyeritemservice.dao.BillDetailsDao;
import com.project.buyeritemservice.dao.BuyerSignupDao;
import com.project.buyeritemservice.dao.DealDao;
import com.project.buyeritemservice.dao.FlightDao;
import com.project.buyeritemservice.dao.HotelDao;
import com.project.buyeritemservice.entity.BillDetailsEntity;
import com.project.buyeritemservice.entity.BillEntity;
import com.project.buyeritemservice.entity.BuyerSignupEntity;
import com.project.buyeritemservice.entity.CategoryEntity;
import com.project.buyeritemservice.entity.DealEntity;
import com.project.buyeritemservice.entity.FlightEntity;
import com.project.buyeritemservice.entity.HotelEntity;
import com.project.buyeritemservice.entity.SellerSignupEntity;
import com.project.buyeritemservice.entity.SubCategoryEntity;
import com.project.buyeritemservice.pojo.BillDetailsPojo;
import com.project.buyeritemservice.pojo.BillPojo;
import com.project.buyeritemservice.pojo.BuyerSignupPojo;
import com.project.buyeritemservice.pojo.CategoryPojo;
import com.project.buyeritemservice.pojo.DealPojo;
import com.project.buyeritemservice.pojo.FlightPojo;
import com.project.buyeritemservice.pojo.HotelPojo;
import com.project.buyeritemservice.pojo.SellerSignupPojo;
import com.project.buyeritemservice.pojo.SubCategoryPojo;



@Service
public class BillServiceImpl implements BillService {

	static Logger LOG = Logger.getLogger(BillServiceImpl.class.getClass());


	@Autowired
	BillDao billDao;

	@Autowired
	BillDetailsDao billDetailsDao;

	@Autowired
	BuyerSignupDao buyerSignupDao;
	
	@Autowired 
	FlightDao fligthDao;
	
	@Autowired
	HotelDao hotelDao;
	
	@Autowired
	DealDao dealDao;

	@Override
	@Transactional

	//adding bill into the database from the received bill pojo

	public BillPojo addBill(BillPojo billPojo) {


		LOG.info("entered addBill()");
		LOG.info("Bill"+billPojo);
		BuyerSignupPojo buyerSignupPojo = billPojo.getBuyer();
		Optional<BuyerSignupEntity> optionalBuyerSignupEntity = buyerSignupDao.findById(buyerSignupPojo.getId());
		BuyerSignupEntity buyerSignupEntity = optionalBuyerSignupEntity.get();
		LOG.info("buyer entity is: --------------------------------------------------------------");
		LOG.info(buyerSignupEntity);

		BillEntity billEntity = new BillEntity();
		billEntity.setId(0);
		billEntity.setAmount(billPojo.getAmount());
		billEntity.setRemarks(billPojo.getRemarks());
		billEntity.setType(billPojo.getType());
		billEntity.setDate(billPojo.getDate());
		billEntity.setBuyer(buyerSignupEntity);

		billEntity = billDao.save(billEntity);
		LOG.info("bill entity after saving is ---------------------------");
		LOG.info(billEntity);
		LOG.info(billEntity.getId());
		
		billPojo.setId(billEntity.getId());

		BillEntity setbillEntity = billDao.findById(billEntity.getId()).get();
//		Set<BillDetailsEntity> allBillDetails = new HashSet<BillDetailsEntity>();
		Set<BillDetailsPojo> allBillDetailsPojo = billPojo.getAllBillDetails();

		//copying all pojo contents into respective entities

		for (BillDetailsPojo billDetailsPojo : allBillDetailsPojo) {
			FlightPojo itemPojo = billDetailsPojo.getItem();
			HotelPojo hotelPojo = billDetailsPojo.getHotel();
			DealPojo dealPojo = billDetailsPojo.getDeal();
			FlightEntity itemEntity = new FlightEntity();
			HotelEntity hotelEntity = new HotelEntity();
			DealEntity dealEntity = new DealEntity();
			LOG.info("Hotel details "+ hotelPojo);
			
			if(Objects.nonNull(itemPojo) && Objects.nonNull(itemPojo.getFlightNumber())) {
				LOG.info("Saving Flight Bill Details");
				itemEntity = fligthDao.findByFlightNumber(itemPojo.getFlightNumber());
				int miles = itemEntity.getMiles();
				buyerSignupEntity.setMiles(buyerSignupEntity.getMiles()+miles);
				buyerSignupDao.save(buyerSignupEntity);
				
			} else {
				itemEntity = null;
			}
			
			
			//deals
			if(Objects.nonNull(dealPojo) && Objects.nonNull(dealPojo.getFlightNumber())) {
				LOG.info("Saving Flight Bill Details");
				dealEntity = dealDao.findByFlightNumber(dealPojo.getFlightNumber());
				int miles = dealEntity.getMiles();
				buyerSignupEntity.setMiles(buyerSignupEntity.getMiles()+miles);
				buyerSignupDao.save(buyerSignupEntity);
				
			} else {
				dealEntity = null;
			}
			
			
			
			if(Objects.nonNull(hotelPojo) && Objects.nonNull(hotelPojo.getHotelNo())) {
				LOG.info("Saving hotel Bill Details");
			hotelEntity = hotelDao.findById(hotelPojo.getHotelNo()).get();
			
			} else {
				LOG.info("Not saving hotel bills details");
				hotelEntity = null;
			}

			BillDetailsEntity billDetailsEntity = new BillDetailsEntity(billDetailsPojo.getId(), setbillEntity, itemEntity, hotelEntity, dealEntity);

			billDetailsDao.save(billDetailsEntity);
		}
		LOG.info("Exited addBill()");
		BasicConfigurator.resetConfiguration();

		return billPojo;
	}
	
	@Override

	public void updateMiles(BuyerSignupPojo buyerPojo) {
		LOG.info("entered updateMiles()");
		Optional<BuyerSignupEntity> optionalBuyerSignupEntity =  buyerSignupDao.findById(buyerPojo.getId());
		BuyerSignupEntity buyerSignupEntity = optionalBuyerSignupEntity.get();
		buyerSignupEntity.setMiles(buyerPojo.getMiles());
		buyerSignupDao.save(buyerSignupEntity);

	}
		
}
