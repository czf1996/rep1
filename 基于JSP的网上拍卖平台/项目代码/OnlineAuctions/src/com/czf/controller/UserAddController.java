package com.czf.controller;

import java.lang.ProcessBuilder.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.User;
import com.czf.service.IUserService;

@Controller
public class UserAddController {
	@Autowired
	private IUserService iuserservice;
	@RequestMapping("/useradd")
	public String adduser(String username,String userpassword,String userphone,String useraddress,double userfunds) {
		User u = new User();
		u.setAddress(useraddress);
		u.setFunds(userfunds);
		u.setPhone(userphone);
		u.setUname(username);
		u.setUpassword(userpassword);
		iuserservice.adduser(u);
		
		return "redirect:/userlist";
		
		
	}

}
