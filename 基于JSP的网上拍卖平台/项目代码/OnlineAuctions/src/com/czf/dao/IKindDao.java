package com.czf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.czf.domain.Kind;



@Repository("ikinddao")
public interface IKindDao {
	@Select("select * from kind")
	List<Kind> findAll();
	@Select("select * from kind where kid=#{kid}")
	Kind findByKid(Integer kid);
	@Insert("insert into kind(kname) value(#{kname})")
	void addKind(Kind k);
	@Update("update kind set kname=#{kname} where kid=#{kid}")
	void updateKind(@Param("kid") int kid,@Param("kname") String kname);
	@Delete("delete from kind where kid=#{kid}")
	void deleteKind(Integer kid);
}
