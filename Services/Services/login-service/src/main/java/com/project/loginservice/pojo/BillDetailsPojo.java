package com.project.loginservice.pojo;

public class BillDetailsPojo {
	private int id;
	 BillPojo bill;
	 FlightPojo item;
	 HotelPojo hotel;
	
	
	
	public BillDetailsPojo(int id, BillPojo bill, FlightPojo item, HotelPojo hotel) {
		super();
		this.id = id;
		this.bill = bill;
		this.item = item;
		this.hotel = hotel;
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
	
}