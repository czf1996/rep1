package com.czf.domain;

public class Product {
	private int pid;
	private String pname;
	private double firstprice;
	private double lastprice;
	private String pdesc;
	private int kid;
	private String picture;
	private int hours;
	public Product() {
		super();
	}
	
	public Product(int pid, String pname, double firstprice, double lastprice, String pdesc, int kid, String picture,
			int hours) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.firstprice = firstprice;
		this.lastprice = lastprice;
		this.pdesc = pdesc;
		this.kid = kid;
		this.picture = picture;
		this.hours = hours;
	}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getFirstprice() {
		return firstprice;
	}
	public void setFirstprice(double firstprice) {
		this.firstprice = firstprice;
	}
	public double getLastprice() {
		return lastprice;
	}
	public void setLastprice(double lastprice) {
		this.lastprice = lastprice;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", firstprice=" + firstprice + ", lastprice=" + lastprice
				+ ", pdesc=" + pdesc + ", kid=" + kid + ", picture=" + picture + ", hours=" + hours + "]";
	}

	
}
