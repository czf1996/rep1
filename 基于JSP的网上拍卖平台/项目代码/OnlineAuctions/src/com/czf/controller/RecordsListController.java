package com.czf.controller;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.PageBean;
import com.czf.domain.Product;
import com.czf.domain.Records;
import com.czf.domain.User;
import com.czf.service.IKindService;
import com.czf.service.IProductService;
import com.czf.service.IRecordsService;

@Controller
public class RecordsListController {
	@Autowired
	private IProductService iproductservice;
	@Autowired
	private IKindService ikindservice;
	@Autowired
	private IRecordsService irecordsservice;
	@RequestMapping("/recordslist")
	public String FindAll(HttpServletRequest request, Integer pagenum) {
		//分页查询
		PageBean pb;
		int pagesize=10;
		if(pagenum ==null) {
			pagenum=1;
			 pb = irecordsservice.findBypage(pagenum, pagesize);
		}else {
			 pb = irecordsservice.findBypage(pagenum, pagesize);
		}
		request.setAttribute("pagebean", pb);
		return "RecordsList";
	}
	@RequestMapping("/recordsdelete")
	public String RecordsDelete(Integer id ) {
		irecordsservice.recordsDelete(id);
		return "redirect:/recordslist";
	}
	@RequestMapping("/beforerecordsadd")
	public String BeforeRecordsAdd(double nowprice ,String pname ,HttpServletRequest request,Integer pid,HttpSession session) {
		//获取时间，并格式化
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String time = sdf.format(now);
		//创建Records对象
		Records r = new Records();
		double  price =nowprice +200;;
		r.setNowprice(price);
		r.setPname(pname);
		r.setTime(time);
		User u = (User) session.getAttribute("user");
		String uname =u.getUname();
		r.setUname(uname);
		irecordsservice.recordsAdd(r);
		//同时对Product数据库中的firstprice进行修改（根据pname修改firstprice）
		iproductservice.updatebypname(pname, price);
		//绑定相应数据
		request.setAttribute("kinds", ikindservice.findAll());
		Product p =iproductservice.findBypid(pid);
		request.setAttribute("product", p);
		return "show";
		
	}
}
