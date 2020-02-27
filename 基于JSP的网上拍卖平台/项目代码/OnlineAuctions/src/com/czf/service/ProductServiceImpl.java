package com.czf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.czf.dao.IProductDao;
import com.czf.domain.PageBean;
import com.czf.domain.Product;
@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
	private IProductDao iproductdao;
	@Override
	public List<Product> find() {
		// TODO Auto-generated method stub
		return iproductdao.FindAll();
	}

	@Override
	public Product findBypid(Integer pid) {
		// TODO Auto-generated method stub
		System.out.println("serviceimpl"+iproductdao.findBypid(pid));
		return iproductdao.findBypid(pid);
	}

	@Override
	public void add(Product p) {
		// TODO Auto-generated method stub
		iproductdao.AddProduct(p);
	}

	@Override
	public void update(Product p) {
		// TODO Auto-generated method stub
		iproductdao.UpdateProduct(p);
	}

	@Override
	public void delete(Integer pid) {
		// TODO Auto-generated method stub
		iproductdao.DeleteProduct(pid);
	}
	//分页查询
	@Override
	public PageBean<Product> findBypage(Integer pagenum, Integer pagesize) {
		// TODO Auto-generated method stub
		List<Product> products = iproductdao.FindAll();
		int totalRecord = products.size();
		//有了这3个数据就可以创建pagebean对象了
		PageBean pb =  new PageBean(pagenum,pagesize,totalRecord) ;
		//获取当前pagebean对象中的startindex(计算得来)
		int startindex =pb.getStartindex();
		//有了startindex和pagesize,就可以拿到每页的数据
		pb.setList(iproductdao.FindBypage(startindex, pagesize));
		return pb;
	}

	@Override
	public List<Product> findBykid(Integer kid) {
		// TODO Auto-generated method stub
		return iproductdao.findBykid(kid);
	}

	@Override
	public void updatebypname(String pname,double firstprice) {
		// TODO Auto-generated method stub
		iproductdao.updatebypname(pname, firstprice);
		
	}

}
