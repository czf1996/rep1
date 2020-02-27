package com.czf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.czf.dao.IAdmiDao;
import com.czf.domain.Admi;
import com.czf.domain.User;
@Service
public class AdmiServiceImpl implements IAdmiService {
	@Autowired
	private IAdmiDao iadmidao;
	@Override
	public Admi findByNP(String aname, String apassword) {
		// TODO Auto-generated method stub
		return iadmidao.findAdmiByNP(aname, apassword);
	}
	@Override
	public List<Admi> FindAll() {
		// TODO Auto-generated method stub
		return iadmidao.findAll();
	}
	@Override
	public void AdmiAdd(Admi a) {
		// TODO Auto-generated method stub
		iadmidao.addAdmi(a);
	}
	@Override
	public Admi FindByaid(Integer aid) {
		// TODO Auto-generated method stub
		return iadmidao.findAdmiByaid(aid);
	}
	@Override
	public void UpdateByaid(Admi a) {
		// TODO Auto-generated method stub
		iadmidao.update(a);
	}
	@Override
	public void DeleteByaid(Integer aid) {
		// TODO Auto-generated method stub
		iadmidao.deleteAdmi(aid);
		
	}
	
}
