package com.project.buyeritemservice.pojo;

import java.sql.Date;

public class HotelPojo {
	
	private String hotelName;
	private int hotelNo;
	private String source;
	private String place;
	private Date checkInDate;
	private Date checkOutDate;
	private String departureTime;
	private String arrivalTime;
	private String duration;
	private int cost;
	private String address;
	private String phoneNumber;
	private String ratings;
	private String type;
	
	public HotelPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public HotelPojo(String hotelName, int hotelNo, String source, String place, Date checkInDate,
			Date checkOutDate, String departureTime, String arrivalTime, String duration, int cost, String address,
			String phoneNumber, String ratings, String type)  {
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


}
