package com.czf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.czf.dao.IKindDao;
import com.czf.domain.Kind;
@Service
public class KindServiceImpl implements IKindService {
	@Autowired
	private IKindDao ikinddao;
	@Override
	public List<Kind> findAll() {
		List<Kind> ks = ikinddao.findAll();
		return ks;
	}
	
	@Override
	public void Add(Kind k) {
		// TODO Auto-generated method stub
		ikinddao.addKind(k);
	}

	@Override
	public void update(Integer kid , String kname ) {
		// TODO Auto-generated method stub
		ikinddao.updateKind(kid, kname);
	}

	@Override
	public Kind findBykid(Integer kid) {
		// TODO Auto-generated method stub
		return ikinddao.findByKid(kid);
	}

	@Override
	public void delete(Integer kid) {
		// TODO Auto-generated method stub
		ikinddao.deleteKind(kid);
	}

}
