package com.czf.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Admi;
import com.czf.service.IAdmiService;

@Controller
public class AdmiLoginController {
	@Autowired
	private IAdmiService iadmiservice;
	@RequestMapping("/admilogin")
	public String AdimLogin(String aname,String apassword,HttpSession session) {
		Admi admi = iadmiservice.findByNP(aname, apassword);
		session.setAttribute("admi", admi);
		
		if(admi !=null&& admi.isFlag()==false ) {
			return "Admi" ;
		}else if(admi !=null&& admi.isFlag()==true ) {
			return "AdmiSuper" ;
		}else {
			return "AdmiLogin";
		}
	}
	
	
}
