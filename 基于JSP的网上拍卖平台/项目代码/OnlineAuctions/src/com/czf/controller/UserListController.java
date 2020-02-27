package com.czf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.User;
import com.czf.service.IUserService;

@Controller
public class UserListController {
	@Autowired
	private IUserService iuserservice;
	@RequestMapping("/userlist")
	public String listuser(HttpServletRequest request ,String action) {
		List<User> users = iuserservice.FindAllUser();
		System.out.println(action);
		request.setAttribute("userlist", users);
		if("delete".equals(action)) {
			return "UserDelete";
		}else if("edit".equals(action)) {
			return "UserEdit";
		}
		else {
			return "UserList";
		}
	}

}
