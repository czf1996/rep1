package com.czf.domain;

public class Records {
	private Integer id;
	private String uname;
	private double nowprice;
	private String time;
	private String pname;
	public Records() {
		super();
	}
	
	public Records(Integer id, String uname, double nowprice, String time, String pname) {
		super();
		this.id = id;
		this.uname = uname;
		this.nowprice = nowprice;
		this.time = time;
		this.pname = pname;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public double getNowprice() {
		return nowprice;
	}
	public void setNowprice(double nowprice) {
		this.nowprice = nowprice;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	@Override
	public String toString() {
		return "Records [id=" + id + ", uname=" + uname + ", nowprice=" + nowprice + ", time=" + time + ", pname="
				+ pname + "]";
	}
	
}
