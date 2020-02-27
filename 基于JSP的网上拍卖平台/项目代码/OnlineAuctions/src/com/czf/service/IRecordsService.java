package com.czf.service;

import java.util.List;

import com.czf.domain.PageBean;
import com.czf.domain.Records;

public interface IRecordsService {
	List<Records> findAll();
	//分页查询
	PageBean<Records> findBypage(Integer pagenum,Integer pagesize);
	void recordsDelete(Integer id );
	void recordsAdd(Records r );
}
