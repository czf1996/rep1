package com.czf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.czf.domain.Admi;
@Repository("iadmidao")
public interface IAdmiDao {
	@Select( "select * from admi")
    List<Admi> findAll();
	//分页查询
	 @Select( "select * from admi limit #{startindex},#{pagesize}")
	 List<Admi> findBypage(@Param("startindex")	Integer startindex,@Param("pagesize")Integer pagesize);
	
	@Select("select * from Admi where aname=#{aname} and apassword=#{apassword}")
	Admi findAdmiByNP(@Param("aname") String aname,@Param("apassword") String apassword);
	
	@Select("select * from Admi where aid=#{aid} ")
	Admi findAdmiByaid(Integer aid);
	
	@Select("select * from Admi where aname=#{aname}")
	Admi findAdmiByname(String aname);
	
	@Select("select * from Admi where aname like'${value}%'")
	List<Admi> findAdmiBylikename(String aname);
	
	@Insert("insert into Admi(aname,apassword,phone,address,funds,flag) values(#{aname},#{apassword},#{phone},#{address},#{funds},#{flag}) ")
	void addAdmi(Admi a);
	
	@Update("update Admi set aname=#{aname},apassword=#{apassword},phone=#{phone},address=#{address},funds=#{funds},flag=#{flag} where aid=#{aid}")
	void update(Admi a);
	
	@Delete("delete from Admi where aid=#{aid}")
	void deleteAdmi(Integer aid);
}


