package com.project.buyeritemservice.pojo;

import java.sql.Date;

public class DealPojo {
	private String flightName;
	private String flightNumber;
	private String source;
	private String destination;
	private Date date;
	private String departureTime;
	private String arrivalTime;
	private String duration;
	private String status;
	private int cost, miles;
	private String flightType;
	private String type;
	
	public DealPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DealPojo(String flightName, String flightNumber, String source, String destination, Date date,
			String departureTime, String arrivalTime, String duration, String status, int cost, String flight_type,
			String type, int miles) {
		super();
		this.flightName = flightName;
		this.flightNumber = flightNumber;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.duration = duration;
		this.status = status;
		this.cost = cost;
		this.flightType = flight_type;
		this.type = type;
		this.miles = miles;
	}
	@Override
	public String toString() {
		return "FlightEntity [flightName=" + flightName + ", flightNumber=" + flightNumber + ", status=" + status + ", source=" + source + ", destination=" + destination
				+ ", date=" + date + ", departureTime=" + departureTime + ", arrivalTime=" + arrivalTime + ", duration=" + duration
				+ ", cost=" + cost + ", flight_type=" + flightType + ", type=" + type + " miles=" + miles + "]";
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

	public void setFlightType(String flight_type) {
		this.flightType = flight_type;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public int getMiles() {
		return miles;
	}

	public void setMiles(int miles) {
		this.miles = miles;
	}
}
