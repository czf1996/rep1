package com.czf.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.czf.domain.User;


public interface IUserService {
    User finduser(String username, String userpassword);
    User finduserByuid(Integer uid);
    List<User> FindAllUser();
	void adduser(User user);
	void deleteuser(Integer uid);
	void updateuser(User u);
	

}
