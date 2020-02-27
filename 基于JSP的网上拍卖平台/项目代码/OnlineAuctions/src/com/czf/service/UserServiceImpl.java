package com.czf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.czf.dao.Iuserdao;
import com.czf.domain.User;
@Service("userserviceimpl")
public class UserServiceImpl implements IUserService {
	@Autowired
	private Iuserdao iuserdao;
	@Override
	public User finduser(String username, String userpassword) {
		// TODO Auto-generated method stub
		User user = iuserdao.findUserByNP(username,  userpassword);
		return user;
	}
	@Override
	public void adduser(User user) {
		iuserdao.adduser(user);
	}
	@Override
	public List<User> FindAllUser() {
		List<User> users =iuserdao.findAll();
		return users;
	}
	@Override
	public void deleteuser(Integer uid) {
		// TODO Auto-generated method stub
		iuserdao.deleteuser(uid);
		
	}
	@Override
	public User finduserByuid(Integer uid) {
		User u = iuserdao.finduserByuid(uid);
		return u;
	}
	@Override
	public void updateuser(User u) {
		// TODO Auto-generated method stub
		iuserdao.update(u);
		
	}

}
