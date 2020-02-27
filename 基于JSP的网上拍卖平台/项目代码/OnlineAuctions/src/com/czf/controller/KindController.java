package com.czf.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.czf.domain.Kind;
import com.czf.service.IKindService;

@Controller
public class KindController {
	@Autowired
	private IKindService ikindservice;
	@RequestMapping("/kindlist")
	public String FindAllKind(HttpServletRequest request,String action) {
	  List<Kind>  ks= ikindservice.findAll();
	  request.setAttribute("kinds",ks);
	  System.out.println("request域"+request.getAttribute("kinds"));
	  if("edit".equals(action)) {
		  return "KindEdit";
	  }else if("delete".equals(action)){
		  return "KindDelete";
		  
	  }else if("addproduct".equals(action)){
			return "ProductAdd";
	  }else {
		  return "KindList";
	  }

	}
	
	@RequestMapping("/kindadd")
	public String KindAdd(String kname) {
		Kind k = new Kind();
		k.setKname(kname);
		ikindservice.Add(k);
		return "redirect:/kindlist";
		
	}
	@RequestMapping("/kindedit01")
	public String KindEdit01(Integer kid,HttpServletRequest request) {
		Kind k =ikindservice.findBykid(kid);
		request.setAttribute("kind", k);
		return "KindEditUI";
	}
	
	@RequestMapping("/kindedit02")
	public String KindEdit02(Integer kid,String kname) {
		ikindservice.update(kid, kname);
		return "redirect:/kindlist";
		
		
	}
	
	@RequestMapping("/kinddelete")
	public String KindDelete(Integer kid) {
		ikindservice.delete(kid);
		return "redirect:/kindlist";
		
		
	}
	
	
	
}
