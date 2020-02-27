package com.czf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.service.IUserService;

@Controller
public class UserDeleteUIController {
	@Autowired
	private IUserService iuserservice;
	@RequestMapping("/UserDeleteUI")
	public String deleteUser(Integer uid) {
		iuserservice.deleteuser(uid);
		return "redirect:/userlist";
		
	}
}
