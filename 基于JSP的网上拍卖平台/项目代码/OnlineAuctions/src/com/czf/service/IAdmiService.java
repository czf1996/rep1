package com.czf.service;

import java.util.List;

import com.czf.domain.*;

public interface IAdmiService {
	Admi findByNP(String arname,String apassword);
	List<Admi> FindAll();
	void AdmiAdd(Admi a);
	Admi FindByaid(Integer aid);
	void UpdateByaid(Admi a);
	void DeleteByaid(Integer aid);
}
