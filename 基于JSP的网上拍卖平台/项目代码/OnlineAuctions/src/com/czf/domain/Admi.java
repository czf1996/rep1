package com.czf.domain;

public class Admi {
	private int aid;
	private String aname;
	private String apassword;
	private String phone;
	private String address;
	private double funds;
	private boolean flag;
	public Admi() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Admi(int aid, String aname, String apassword, String phone, String address, double funds, boolean flag) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.apassword = apassword;
		this.phone = phone;
		this.address = address;
		this.funds = funds;
		this.flag = flag;
	}


	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
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


	public boolean isFlag() {
		return flag;
	}


	public void setFlag(boolean flag) {
		this.flag = flag;
	}


	@Override
	public String toString() {
		return "Admi [aid=" + aid + ", aname=" + aname + ", apassword=" + apassword + ", phone=" + phone + ", address="
				+ address + ", funds=" + funds + ", flag=" + flag + "]";
	}


	
	
	
	
}
