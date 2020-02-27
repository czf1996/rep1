package com.czf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.dao.Iuserdao;
import com.czf.domain.User;
import com.czf.service.IUserService;

@Controller
public class UserRegisterController {
	@Autowired
	private IUserService iuserservice;
	@RequestMapping("/beforeUserRegister")
	public String Register(String username,String userpassword,String userphone,String useraddress) {
		User user = new User();
		user.setUname(username);
		user.setUpassword(userpassword);
		user.setPhone(userphone);
		user.setAddress(useraddress);
		user.setFunds(0);
		iuserservice.adduser(user);
		return "Userlogin";
		
	}
}
