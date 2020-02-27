package com.czf.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Product;
import com.czf.domain.User;
import com.czf.service.IKindService;
import com.czf.service.IProductService;

@Controller
public class BeforeShowController {
	@Autowired
	private IProductService iproductservice;
	@Autowired
	private IKindService ikindservice;
	@RequestMapping("/beforeshow")
	public String BeforeShow(Integer pid,HttpSession session,HttpServletRequest request) {
		System.out.println(pid);
		User user = (User) session.getAttribute("user");
		if(user !=null) {
			Product product = iproductservice.findBypid(pid);
			request.setAttribute("product", product);
			request.setAttribute("kinds", ikindservice.findAll());
			System.out.println( "beforeshow控制层"+product);
			return "show";
		}else {
			return "Userlogin";
		}
		
		
	}
}
