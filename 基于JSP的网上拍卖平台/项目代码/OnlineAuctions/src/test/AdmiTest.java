package test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.czf.dao.IAdmiDao;

import com.czf.domain.Admi;

public class AdmiTest {
	
	private IAdmiDao iadmidao;

@Before
public void before() {
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	iadmidao = (IAdmiDao)ac.getBean("iadmidao");
}
@Test
public void findAll() {
	List<Admi> Admis = iadmidao.findAll();
	for (Admi Admi : Admis) {
		System.out.println(Admi);
	}
}
@Test
public void findAdmiByNP() {
	/*Admi Admi = new Admi();
	Admi.setUname("程子丰");
	Admi.setUpassword("123456");
	System.out.println(Admi);*/
	Admi a= iadmidao.findAdmiByNP("程子丰","czf123");
	System.out.println(a);
	
}
@Test
public void findAdmiByaid() {
	Admi a = iadmidao.findAdmiByaid(1);
	System.out.println(a);
}

@Test
public void findAdmiByname() {
	Admi a = iadmidao.findAdmiByname("程子丰");
	System.out.println(a);
}
@Test
public void findAdmiBylikename() {
	List<Admi> a = iadmidao.findAdmiBylikename("程");
	for (Admi Admi : a) {
		System.out.println(Admi);
	}
}
@Test
public void addAdmi() {
	Admi Admi = new Admi();
	Admi.setAname("张林虎4");
	Admi.setApassword("951236");
	Admi.setPhone("18856623300");
	Admi.setAddress("无锡");
	Admi.setFunds(100);
	Admi.setFlag(true);
	iadmidao.addAdmi(Admi);
}

@Test
public void updateAdmi() {
	Admi Admi = new Admi();
	Admi.setAid(2);
	Admi.setFunds(1250);
	Admi.setAname("杨某人");
	Admi.setApassword("yjk123");
	Admi.setPhone("17879651234");
	Admi.setAddress("上海");
	Admi.setFlag(true);;
	iadmidao.update(Admi);
}

@Test
public void deleteAdmi() {
	iadmidao.deleteAdmi(3);

}
@Test
public void findBypage() {
	List<Admi> admis = iadmidao.findBypage(3, 2);
	System.out.println(admis);
}






}