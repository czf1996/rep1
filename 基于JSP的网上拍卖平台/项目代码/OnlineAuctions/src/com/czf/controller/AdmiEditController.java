package com.czf.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Admi;
import com.czf.service.IAdmiService;

@Controller
public class AdmiEditController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admiedit01")
	public String AdmiEdit(Integer aid ,HttpServletRequest request) {
	    Admi admi =	iadmiservice.FindByaid(aid);
	    request.setAttribute("admi", admi);
		return "AdmiEditUI";
		
		
	}
}
