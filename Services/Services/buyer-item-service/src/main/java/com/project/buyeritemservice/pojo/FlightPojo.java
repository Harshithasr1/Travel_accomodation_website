package com.project.buyeritemservice.pojo;

import java.sql.Date;

public class FlightPojo {

	private String flightName;
	private String flightNumber;
	private String source;
	private String destination;
	private Date date;
	private Date returnDate;
	private String departureTime;
	private String arrivalTime;
	private String duration;
	private int cost;
	private String flightType;
	private String status;
	private int miles;
	private String type;
	
	public FlightPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public FlightPojo(String flightName, String flightNumber, String source, String destination, Date date,
			Date returnDate, String departureTime, String arrivalTime, String duration, int cost, String flightType,
			String status, int miles, String type) {
		super();
		this.flightName = flightName;
		this.flightNumber = flightNumber;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.returnDate = returnDate;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.duration = duration;
		this.cost = cost;
		this.flightType = flightType;
		this.status = status;
		this.miles = miles;
		this.type = type;
	}
	@Override
	public String toString() {
		return "FlightEntity [flightName=" + flightName + ", flightNumber=" + flightNumber + ", source=" + source
				+ ", destination=" + destination + ", date=" + date + ", returnDate=" + returnDate + ", departureTime="
				+ departureTime + ", arrivalTime=" + arrivalTime + ", duration=" + duration + ", cost=" + cost
				+ ", flightType=" + flightType + ", status=" + status + ", miles=" + miles + ", type=" + type + "]";
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}
	
	public String getFlightStatus() {
		return status;
	}

	public void setFlightStatus(String flightStatus) {
		this.status = flightStatus;
	}
	
	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
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

	public String getFlightType() {
		return flightType;
	}

	public void setFlightType(String flightType) {
		this.flightType = flightType;
	}



	public int getMiles() {
		return miles;
	}

	public void setMiles(int miles) {
		this.miles = miles;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
