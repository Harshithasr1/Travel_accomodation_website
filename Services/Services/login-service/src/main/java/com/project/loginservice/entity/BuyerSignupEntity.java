package com.project.loginservice.entity;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "signup_table")
public class BuyerSignupEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "signup_id")
	private int id;
	
	@Column(name = "firstname")
	private String firstname;
	
	@Column(name = "middlename")
	private String middlename;
	
	@Column(name = "lastname")
	private String lastname;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "creditcardtype")
	private String creditcardtype;
	
	@Column(name = "cardnumber")
	private int cardnumber;
	
	
	@Column(name = "expiration")
	private String expiration;
	
	@Column(name = "cvv")
	private int cvv;
	
	@Column(name = "miles")
	private int miles;

	
	@OneToMany(mappedBy = "buyer")
	Set<BillEntity>allBills;

	public BuyerSignupEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BuyerSignupEntity(int id, String firstname, String middlename, String lastname, String address,String email, 
			String username, String password, String creditcardtype, int cardnumber, String expiration, int cvv, int miles,
			Set<BillEntity> allBills) {
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
		this.allBills = allBills;
	}

	@Override
	public String toString() {
		return "BuyerSignupEntity [id=" + id + ", firstname= "+ firstname +",middlename= "+ middlename +",lastname= "+ lastname + ",address=" + address + ",email=" + email + ", username=" + username + ", password=" + password + ", creditcardtype="+ creditcardtype + ", cardnumber=" + cardnumber + ", expiration=" + expiration +", cvv=" + cvv + ", miles="+ miles + "]";
		
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
	
	public void setMiles(int miles) {
		this.miles = miles;
	}
	
	public int getMiles() {
		return miles;
	}

	public Set<BillEntity> getAllBills() {
		return allBills;
	}

	public void setAllBills(Set<BillEntity> allBills) {
		this.allBills = allBills;
	}

	
	

}
