package com.czf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Admi;
import com.czf.service.IAdmiService;

@Controller
public class AdmiAddController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admiadd")
	public String AdmiAdd(String aname,String apassword,String aphone,String address,double afunds) {
		Admi a = new Admi();
		a.setAddress(address);
		a.setAname(aname);
		a.setApassword(apassword);
		a.setFunds(afunds);
		a.setPhone(aphone);
		a.setFlag(false);
		iadmiservice.AdmiAdd(a);
		return "redirect:/admilist";
		
	}
}
