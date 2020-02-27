package com.czf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.service.IAdmiService;

@Controller
public class AdmiDeleteController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admidelete")
	public String AdmiDelete(Integer aid) {
		iadmiservice.DeleteByaid(aid);
		return "redirect:/admilist";
		
	}
}
