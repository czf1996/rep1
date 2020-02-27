package com.czf.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.service.IAdmiService;

@Controller
public class AdmiOutController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admiout")
	public String AdmiOut(HttpSession session){
		session.removeAttribute("admi");
		return "AdmiLogin";
		
	}
	@RequestMapping("/admiout02")
	public String AdmiOut02(HttpSession session){
		session.removeAttribute("admi");
		return "redirect:/beforeindex";
		
	}
}
