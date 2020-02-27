package com.czf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.*;
import com.czf.service.*;

@Controller

public class IndexController {
	@Autowired
	private IKindService ikindservice;
	@Autowired
	private IProductService iproductserrvice;
	@RequestMapping("/beforeindex")
	public String Index(HttpServletRequest request) {
		List<Kind> kinds = ikindservice.findAll();
		request.setAttribute("kinds", kinds);
		List<Product> products =iproductserrvice.find();
		request.setAttribute("products", products);
		
		return "IndexShow";
		
		
	}
}
