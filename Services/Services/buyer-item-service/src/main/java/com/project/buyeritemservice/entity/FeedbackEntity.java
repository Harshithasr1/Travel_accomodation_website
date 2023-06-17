package com.project.buyeritemservice.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "feedback_table")

public class FeedbackEntity {

	@Id
	@Column(name = "user_id")
	private int userid;
	
	@Column(name = "message")
	private String message;
	
	@Column(name = "rating")
	private int rating;
	
	public FeedbackEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public FeedbackEntity(int userid, String message, int rating) {
		super();
		this.userid = userid;
		this.message = message;
		this.rating = rating;
	}
	
	@Override
	public String toString() {
		return "FeedbackEntity [userid=" + userid + ", message =" + message + ", rating =" + message + "]";
		
	}
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getRating() {
		return rating;
	}

	public void setrating(int rating) {
		this.rating = rating;
	}
	
	
}
