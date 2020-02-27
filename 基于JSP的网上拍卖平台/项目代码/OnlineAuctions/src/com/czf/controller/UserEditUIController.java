package com.czf.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.User;
import com.czf.service.IUserService;

@Controller
public class UserEditUIController {
	@Autowired
	private IUserService iuserservice;
	@RequestMapping("/UserEditUI")
	public String edituserui(Integer uid ,HttpServletRequest request) {
		User user =  iuserservice.finduserByuid(uid);
		request.setAttribute("user", user);
		return "UserEditUI";
		
		
	}
}
