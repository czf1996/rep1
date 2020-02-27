package com.czf.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.czf.domain.User;
import com.czf.service.IKindService;
import com.czf.service.IProductService;
import com.czf.service.IUserService;

@Controller

public class UserLoginController {
	@Autowired
	private IUserService iuserservice;
	@Autowired
	private IKindService ikindservice;
	@Autowired
	private IProductService iproductservice;
	@RequestMapping("/beforeuserlogin")
	public ModelAndView userlogin(String username,String userpassword,HttpSession session) {
		User user = iuserservice.finduser(username, userpassword);
		ModelAndView mv = new ModelAndView();
		mv.addObject("kinds",ikindservice.findAll());
		mv.addObject("products",iproductservice.find());
		if(user !=null) {
			mv.setViewName("IndexShow");
			/*mv.addObject("user", user);*/
			session.setAttribute("user", user);
			return mv ;
		}else {
			mv.setViewName("Userlogin");
			return mv;
		}
		
	}
	@RequestMapping("/beforeuserout")
	public ModelAndView  UserOut( HttpSession session) {
		session.removeAttribute("user");
		ModelAndView mv = new ModelAndView();
		mv.addObject("kinds",ikindservice.findAll());
		mv.addObject("products",iproductservice.find());
		mv.setViewName("IndexShow");
		return 	mv;
	}
}
