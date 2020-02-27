package test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.czf.dao.IProductDao;
import com.czf.dao.Iuserdao;
import com.czf.domain.Admi;
import com.czf.domain.Product;

public class ProductTest {
	private IProductDao iproductdao;
	@Before
	public void before() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		iproductdao = (IProductDao)ac.getBean("iproductdao");
	}

@Test
public void findall() {
	List<Product> p = iproductdao.FindAll();
	for (Product product : p) {
		System.out.println(product);
	}
}
@Test
public void findbylikename() {
	List<Product> products = iproductdao.FindBylikename("李朝");
	for (Product product : products) {
		System.out.println(product);
	}
}
@Test
public void Addproduct() {
	Product p2 = new Product();
	p2.setFirstprice(1002);
	p2.setHours(10);
	p2.setKid(2);
	p2.setLastprice(2000);
	p2.setPdesc("中国名画");
	p2.setPicture("pic/2131.jpg");
	p2.setPname("唐伯虎点秋香");
	iproductdao.AddProduct(p2);
}

@Test
public void UpdateProduct() {
	Product p2 = new Product();
	p2.setPid(5);
	p2.setFirstprice(1002);
	p2.setHours(12);
	p2.setKid(22);
	p2.setLastprice(2002);
	p2.setPdesc("中国名画02");
	p2.setPicture("pic/21312.jpg");
	p2.setPname("唐伯虎点秋香02");
	iproductdao.UpdateProduct(p2);
}

@Test
public void DeleteProduct() {
	iproductdao.DeleteProduct(2);
}
@Test
public void findBypage() {
	List<Product> products = iproductdao.FindBypage(3, 3);
	System.out.println(products );
}

@Test
public void findBypid() {
	Product p = iproductdao.findBypid(9);
	System.out.println(p);
}
@Test
public void findBykid() {
	List<Product> p = iproductdao.findBykid(1);
	System.out.println(p);
}

}