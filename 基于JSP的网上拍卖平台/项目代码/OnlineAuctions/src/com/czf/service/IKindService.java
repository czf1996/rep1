package com.czf.service;

import java.util.List;

import com.czf.domain.Kind;

public interface IKindService {
	List<Kind> findAll();
	Kind findBykid(Integer kid);
	void Add(Kind k);
	void update(Integer kid,String kname);
	void delete(Integer kid);
}
