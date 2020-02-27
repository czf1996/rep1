package com.czf.service;

import java.util.List;

import com.czf.domain.PageBean;
import com.czf.domain.Product;

public interface IProductService {
	List<Product> find();
	//分页查询
	PageBean<Product> findBypage(Integer pagenum,Integer pagesize);
	Product findBypid(Integer pid);
	List<Product>findBykid(Integer kid);
	void add(Product p);
	void update(Product p);
	void delete(Integer pid);
	void updatebypname(String pname,double firstprice);
}
