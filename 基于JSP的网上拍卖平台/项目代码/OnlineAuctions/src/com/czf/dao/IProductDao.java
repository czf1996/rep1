package com.czf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.czf.domain.Product;
@Repository("iproductdao")
public interface IProductDao {
	@Select("select * from product")
	List<Product> FindAll();
	
	//分页查询
	@Select( "select * from product limit #{startindex},#{pagesize}")
	List<Product> FindBypage(@Param("startindex")	Integer startindex,@Param("pagesize")Integer pagesize);
	
	@Select("select * from product where pname like '%${value}%'")
	List<Product> FindBylikename(String pname);
	
	@Select("select * from product where pid=#{pid}")
	Product findBypid(Integer pid);
	
	@Select("select * from product where kid=#{kid}")
	List<Product> findBykid(Integer kid);
	
	@Insert("insert into product(pname,firstprice,pdesc,kid,lastprice,picture,hours) values(#{pname},#{firstprice},#{pdesc},#{kid},#{lastprice},#{picture},#{hours})")
	void AddProduct(Product p);
	
	@Update("update product set pname=#{pname},firstprice=#{firstprice},pdesc=#{pdesc},kid=#{kid},lastprice=#{lastprice},picture=#{picture},hours=#{hours} where pid=#{pid}")
	void UpdateProduct(Product p);
	
	@Delete("delete from product where pid=#{pid}")
	void DeleteProduct(Integer pid);
	
	@Update("update product set firstprice=#{firstprice} where pname=#{pname}")
	void updatebypname(@Param("pname") String pname,@Param("firstprice") double firstprice);
}
