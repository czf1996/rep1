package com.czf.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Admi;
import com.czf.service.IAdmiService;

@Controller
public class AdmiListController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admilist")
	public String AdmiList( String action,HttpSession session) {
		List<Admi> admis =  iadmiservice.FindAll();
		session.setAttribute("admis", admis);
		if(("edit").equals(action)) {
			return "AdmiEdit";
		}else if(("delete").equals(action)) {
			return "AdmiDelete";
			
		}
		return "AdmiList";
		
		
	}
}
