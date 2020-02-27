package com.czf.domain;

public class User {
	private int uid;
	private String uname;
	private String upassword;
	private String phone;
	private String address;
	private double funds;
	public User() {
		super();
	}
	public User(int uid, String uname, String upassword, String phone, String address, double funds) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upassword = upassword;
		this.phone = phone;
		this.address = address;
		this.funds = funds;
	}



	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getFunds() {
		return funds;
	}
	public void setFunds(double funds) {
		this.funds = funds;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", phone=" + phone + ", address="
				+ address + ", funds=" + funds + "]";
	}

	
	
}
