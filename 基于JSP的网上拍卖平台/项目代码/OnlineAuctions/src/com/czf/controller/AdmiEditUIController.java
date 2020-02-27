package com.czf.controller;

import org.hibernate.validator.constraints.Range;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Admi;
import com.czf.service.IAdmiService;

@Controller
public class AdmiEditUIController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admiedit02")
	public String AdmiEdit02(Integer aid,String aname,String apassword,String aphone,String address,double afunds,Boolean flag) {
		Admi a = new Admi();
		a.setAddress(address);
		a.setAid(aid);
		a.setAname(aname);
		a.setApassword(apassword);
		a.setFlag(flag);
		a.setFunds(afunds);
		a.setPhone(aphone);
		iadmiservice.UpdateByaid(a);
		return "redirect:/admilist";
		
		
		
	}
}
