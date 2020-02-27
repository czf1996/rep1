package com.czf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.*;
import com.czf.service.*;

@Controller
public class BeforeKindShowController {
	@Autowired
	private IProductService iproductservice;
	@Autowired
	private IKindService ikindservice;
	@RequestMapping("/beforekindshow")
	public String BeforeKindShow(Integer kid,HttpServletRequest request) {
		List<Product> products =(List<Product>) iproductservice.findBykid(kid);
		request.setAttribute("products",products);
		List<Kind> kinds =ikindservice.findAll(); 
		request.setAttribute("kinds",kinds);
		return "BeforeKindShow";
		
	}
}
