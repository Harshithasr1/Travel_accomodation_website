package com.project.buyeritemservice.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "bill_details_table")
public class BillDetailsEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "bill_details_id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name = "bill_id")
	BillEntity bill;
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "flight_no")
	FlightEntity item;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "hotel_no")
	HotelEntity hotel;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "deal_no")
	DealEntity deal;
	
		public BillDetailsEntity(int id, BillEntity bill, FlightEntity itemEntity,HotelEntity hotelEntity, DealEntity dealEntity) {
		super();
		this.id = id;
		this.bill = bill;
		this.item = itemEntity;
		this.hotel = hotelEntity;
		this.deal = dealEntity;

	}
		
//		@ManyToOne
//		@JoinColumn(name = "hotel_no")
//		HotelEntity hotel;
//		
//			public BillDetailsEntity(int id, BillEntity bill, HotelEntity hotelEntity) {
//			super();
//			this.id = id;
//			this.bill = bill;
//			this.hotel = hotelEntity;
//
//		}

	public BillDetailsEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BillEntity getBill() {
		return bill;
	}

	public void setBill(BillEntity bill) {
		this.bill = bill;
	}

	public FlightEntity getItem() {
		return item;
	}

	public void setItem(FlightEntity item) {
		this.item = item;
	}
	
	public HotelEntity getHotel() {
		return hotel;
	}

	public void setHotel(HotelEntity hotel) {
		this.hotel = hotel;
	}
	
	public DealEntity getDeal() {
		return deal;
	}

	public void setDeal(DealEntity deal) {
		this.deal = deal;
	}
	
}
