package com.czf.domain;

import java.util.List;

public  class PageBean<T> {
	//已知数据
	private int pageNum; //当前页
	private int pagesize;
	private int totalRecord; //总记录，通过查询数据库
	//需要计算得来的数据
	private int totalpage;
	private int startindex;
	//每页显示的数据放在list集合中
	private List<T> list;
	//分页显示的页数
	private int start;
	private int end;

	
	public PageBean() {
		super();
	}
	public PageBean(int pageNum, int pagesize, int totalRecord) {
		super();
		this.pageNum = pageNum;
		this.pagesize = pagesize;
		this.totalRecord = totalRecord;
		//总页数
		if(totalRecord%pagesize==0) {
			this.totalpage = totalRecord/pagesize;
		}else {
			this.totalpage = totalRecord/pagesize +1;
		}
		this.startindex=(pageNum-1)*pagesize;//数据库中的开始索引
		this.start=1;
		this.end=5;
		if(totalpage<=5) {
			this.end=this.totalpage;
		}else {
			//总页数大于5，就根据当前是第几页，来判断start和end是多少
			this.start=this.pageNum-2;//共5页,当前页为中间页，以此算出start和end
			this.end=this.pageNum+2;
			if(start<=0) {
				//如果当前页是第一页或第二页，就不符合上面的-2规则了
				this.start=1;
				this.end=5;
			}
			if(end>this.totalpage) {
				//如果当前页是最后一页或倒数第二页，也不符合上面的-2规则了
				this.end=pageNum;
				this.start=pageNum-5;
			}
		}
		
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getStartindex() {
		return startindex;
	}
	public void setStartindex(int startindex) {
		this.startindex = startindex;
	}
	@Override
	public String toString() {
		return "PageBean [pageNum=" + pageNum + ", pagesize=" + pagesize + ", totalRecord=" + totalRecord
				+ ", totalpage=" + totalpage + ", startindex=" + startindex + ", list=" + list + ", start=" + start
				+ ", end=" + end + "]";
	}
	
	
	
	
}
