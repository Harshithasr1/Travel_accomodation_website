package com.project.buyeritemservice.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hotel_table")
public class HotelEntity {
	
	@Column(name = "hotel_name")
	private String hotelName;
	@Id
	@Column(name = "hotel_no")
	private int hotelNo;
	
	@Column(name = "source")
	private String source;
	
	@Column(name = "destination")
	private String place;
	
	@Column(name = "check_in")
	private Date checkInDate;
	
	@Column(name = "check_out")
	private Date checkOutDate;
	
	@Column(name = "depart_time")
	private String departureTime;
	
	@Column(name = "arrival_time")
	private String arrivalTime;

	@Column(name = "duration")
	private String duration;

	@Column(name = "cost")
	private int cost;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "phone_no")
	private String phoneNumber;
	
	@Column(name = "ratings")
	private String ratings;
	
	@Column(name = "type")
	private String type;

	
	public HotelEntity(String hotelName, int hotelNo, String source, String place, Date checkInDate,
			Date checkOutDate, String departureTime, String arrivalTime, String duration, int cost, String address,
			String phoneNumber, String ratings, String type) {
		super();
		this.hotelName = hotelName;
		this.hotelNo = hotelNo;
		this.source = source;
		this.place = place;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.duration = duration;
		this.cost = cost;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.ratings = ratings;
		this.type = type;
	}

	

	@Override
	public String toString() {
		return "HotelEntity [hotelName=" + hotelName + ", hotelNo=" + hotelNo + ", source=" + source + ", destination="
				+ place + ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate + ", departureTime="
				+ departureTime + ", arrivalTime=" + arrivalTime + ", duration=" + duration + ", cost=" + cost
				+ ", address=" + address + ", phoneNumber=" + phoneNumber + ", ratings=" + ratings + ", type=" + type
				+ "]";
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}


	public int getHotelNo() {
		return hotelNo;
	}



	public void setHotelNo(int hotelNo) {
		this.hotelNo = hotelNo;
	}



	public String getSource() {
		return source;
	}



	public void setSource(String source) {
		this.source = source;
	}



	public String getPlace() {
		return place;
	}



	public void setPlace(String place) {
		this.place = place;
	}



	public Date getCheckInDate() {
		return checkInDate;
	}



	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}



	public Date getCheckOutDate() {
		return checkOutDate;
	}



	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}



	public String getDepartureTime() {
		return departureTime;
	}



	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}



	public String getArrivalTime() {
		return arrivalTime;
	}



	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}



	public String getDuration() {
		return duration;
	}



	public void setDuration(String duration) {
		this.duration = duration;
	}



	public int getCost() {
		return cost;
	}



	public void setCost(int cost) {
		this.cost = cost;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getRatings() {
		return ratings;
	}



	public void setRatings(String ratings) {
		this.ratings = ratings;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public HotelEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

}
