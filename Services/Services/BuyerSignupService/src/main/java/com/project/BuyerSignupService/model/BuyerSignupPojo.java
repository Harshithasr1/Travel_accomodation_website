package com.project.BuyerSignupService.model;


public class BuyerSignupPojo {

	private int id,cardnumber,cvv, miles;
	private String firstname, middlename, lastname,address, creditcardtype;
	private String username, password;
	private String email;
	private String expiration;
	public BuyerSignupPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BuyerSignupPojo(int id, String firstname, String middlename, String lastname, String address,String email, String username, String password, String creditcardtype, int cardnumber, String expiration, int cvv, int miles) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.middlename = middlename;
		this.lastname = lastname;
		this.address = address;
		this.email = email;
		this.username = username;
		this.password = password;
		this.creditcardtype = creditcardtype;
		this.cardnumber = cardnumber;
		this.expiration = expiration;
		this.cvv = cvv;
		this.miles = miles;
		
	}
	@Override
	public String toString() {
		return "BuyerSignupEntity [id=" + id + ", firstname= "+ firstname +",middlename= "+ middlename +",lastname= "+ lastname + ",address=" + address + ",email=" + email + ", username=" + username + ", password=" + password + ", creditcardtype=" + creditcardtype + ", cardnumber=" + cardnumber + ", expiration=" + expiration +", cvv=" + cvv + "]";
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	
	public String getLastname() {
		return middlename;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setCreditcardtype(String creditcardtype) {
		this.creditcardtype = creditcardtype;
	}
	
	public String getCreditcardtype() {
		return creditcardtype;
	}
	
	public void setCardnumber(int cardnumber) {
		this.cardnumber = cardnumber;
	}
	
	public int getCardnumber() {
		return cardnumber;
	}
	
	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}
	
	public String getExpiration() {
		return expiration;
	}
	
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	
	public int getCvv() {
		return cvv;
	}
	
	public int getMiles() {
		return miles;
	}
	
	public void setMiles(int miles) {
		this.miles = miles;
	}
}

