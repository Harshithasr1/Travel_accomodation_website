package com.project.buyeritemservice.pojo;

import com.project.buyeritemservice.entity.DealEntity;

public class BillDetailsPojo {
	private int id;
	 BillPojo bill;
	 FlightPojo item;
	 HotelPojo hotel;
	 DealPojo deal;
	
	
	public BillDetailsPojo(int id, BillPojo bill, FlightPojo item, HotelPojo hotel, DealPojo deal) {
		super();
		this.id = id;
		this.bill = bill;
		this.item = item;
		this.hotel = hotel;
		this.deal = deal;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public BillPojo getBill() {
		return bill;
	}
	public void setBill(BillPojo bill) {
		this.bill = bill;
	}
	public FlightPojo getItem() {
		return item;
	}
	public void setItem(FlightPojo item) {
		this.item = item;
	}
	
	public HotelPojo getHotel() {
		return hotel;
	}
	public void setHotel(HotelPojo hotel) {
		this.hotel = hotel;
	}
	
	public DealPojo getDeal() {
		return deal;
	}

	public void setDeal(DealPojo deal) {
		this.deal = deal;
	}
	
}