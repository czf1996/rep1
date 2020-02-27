package com.czf.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.czf.domain.PageBean;
import com.czf.domain.Product;
import com.czf.service.IProductService;

@Controller
public class ProductController {
	@Autowired
	private IProductService iproductservice;
	@RequestMapping("/productlist")
	public String ProductList(HttpServletRequest request,String action,Integer pagenum) {
		//分页查询
		PageBean pb;
		int pagesize=3;
		if(pagenum ==null) {
			pagenum=1;
			 pb = iproductservice.findBypage(pagenum, pagesize);
		}else {
			 pb = iproductservice.findBypage(pagenum, pagesize);
		}
		request.setAttribute("pagebean", pb);
		//查询所有，为修改、删除提供数据
		List<Product> products =(List<Product> ) iproductservice.find();
		request.setAttribute("products", products);
		if("edit".equals(action)) {
			return "ProductEdit";
		}else if("delete".equals(action)) {
			return "ProductDelete";
		}else {
			return "ProductList";
		}
	}
	
	@RequestMapping("/productadd")
	public String AddProduct( HttpServletRequest request,String pname,String pdesc,double firstprice,Integer time,Integer kid,MultipartFile picture) throws Exception {
		System.out.println(firstprice);
		System.out.println(picture);
		//设置上传文件夹
		File file = new File("D:\\online");
		// 判断路径是否存在，如果不存在，创建该路径  
		if(!file.exists()) {  
			file.mkdirs();        
			} 
		  // 获取到上传文件的名称
		String filename = picture.getOriginalFilename();
		System.out.println(filename);
		String uuid = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase(); 
		// 把文件的名称唯一化
		filename = uuid+"_"+filename;        
		// 上传文件        
		picture.transferTo(new File(file,filename)); 
		
		//图片地址路径(虚拟目录)
		String picturepath = "/pic/"+filename;
		Product p = new Product();
		p.setFirstprice(firstprice);
		p.setHours(time);
		p.setKid(kid);
		p.setLastprice(0);
		p.setPdesc(pdesc);
		p.setPname(pname);
		p.setPicture(picturepath);
		iproductservice.add(p);
		return "redirect:/productlist";
	}
	
	@RequestMapping("/productdelete")
	public String ProductDelete(Integer pid) {
		iproductservice.delete(pid);
		return "redirect:/productlist";
	}
	
	@RequestMapping("/productedit01")
	public String ProductEdit01(Integer pid,HttpServletRequest request) {
		Product product = iproductservice.findBypid(pid);
		request.setAttribute("product",product);
		return "ProductEditUI";
	}
	
	@RequestMapping("/productedit02")
	public String ProductEdit02( HttpServletRequest request,Integer pid, String pname,String pdesc,double firstprice,Integer time,Integer kid,MultipartFile picture,double lastprice) throws Exception, IOException {
				System.out.println(pid);
				//设置上传文件夹
				File file = new File("D:\\online");
				// 判断路径是否存在，如果不存在，创建该路径  
				if(!file.exists()) {  
					file.mkdirs();        
					} 
				  // 获取到上传文件的名称
				String filename = picture.getOriginalFilename();
				String uuid = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase(); 
				// 把文件的名称唯一化
				filename = uuid+"_"+filename;        
				// 上传文件        
				picture.transferTo(new File(file,filename)); 
				
				//图片地址路径(虚拟目录)
				String picturepath = "/pic/"+filename;
				Product p2 = new Product();
				p2.setFirstprice(firstprice);
				p2.setHours(time);
				p2.setKid(kid);
				p2.setLastprice(0);
				p2.setPdesc(pdesc);
				p2.setPname(pname);
				p2.setPicture(picturepath);
				p2.setLastprice(lastprice);
				p2.setPid(pid);
				System.out.println(p2);
				iproductservice.update(p2);
				return "redirect:/productlist";
		
	}
	
	
	
}
