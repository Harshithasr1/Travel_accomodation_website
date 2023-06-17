package com.project.buyeritemservice.pojo;


public class FeedbackPojo {
	private int userid;
	private String message;
	private int rating;
	
	public FeedbackPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public FeedbackPojo(int userid, String message, int rating) {
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
