package com.czf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.User;
import com.czf.service.IUserService;

@Controller
public class UserEdit02Controller {
	@Autowired
	private IUserService iuserservice;
	@RequestMapping("/useredit02")
	public String useredit02(String uname,String upassword,String uaddress,String uphone, double ufunds,Integer uid) {
		User u = new User();
		u.setAddress(uaddress);
		u.setFunds(ufunds);
		u.setPhone(uphone);
		u.setUid(uid);
		u.setUname(uname);
		u.setUpassword(upassword);
		iuserservice.updateuser(u);
		return "redirect:/userlist";
		
		
	}
}
