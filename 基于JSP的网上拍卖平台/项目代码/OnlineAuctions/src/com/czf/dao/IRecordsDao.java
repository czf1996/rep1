package com.czf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.czf.domain.Records;

@Repository("iRecordsDao")
public interface IRecordsDao {
	@Select("select * from records")
	List<Records> findAll();
	//分页查询
	@Select("select * from records limit #{startindex},#{pagesize} ")
	List<Records> findBypage( @Param("startindex")	Integer startindex,@Param("pagesize")Integer pagesize);
	@Delete("delete from records where id=#{id}")
	void recordsdelete(Integer id );
	@Insert("insert records(uname,pname,nowprice,time) values(#{uname},#{pname},#{nowprice},#{time})")
	void recordsAdd(Records r );
}
