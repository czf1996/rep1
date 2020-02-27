package com.czf.dao;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.czf.domain.User;
@Repository
public interface Iuserdao {
	@Select( "select * from user")
    List<User> findAll();
	
	@Select("select * from user where uname=#{uname} and upassword=#{upassword}")
	User findUserByNP(@Param("uname") String uname,@Param("upassword") String upassword);
	
	@Select("select * from user where uid=#{uid} ")
	User finduserByuid(Integer uid);
	
	@Select("select * from user where uname=#{uname}")
	User finduserByname(String uname);
	
	@Select("select * from user where uname like'${value}%'")
	List<User> finduserBylikename(String uname);
	
	@Insert("insert into user(uname,upassword,phone,address,funds) values(#{uname},#{upassword},#{phone},#{address},#{funds}) ")
	void adduser(User u);
	
	@Update("update user set uname=#{uname},upassword=#{upassword},phone=#{phone},address=#{address},funds=#{funds} where uid=#{uid}")
	void update(User u);
	
	@Delete("delete from user where uid=#{uid}")
	void deleteuser(Integer uid);
}
