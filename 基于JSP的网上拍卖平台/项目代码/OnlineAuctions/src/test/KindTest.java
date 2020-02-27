package test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.czf.dao.IKindDao;
import com.czf.domain.Kind;
public class KindTest {
private IKindDao ikinddao;

@Before
public void before(){
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	ikinddao = (IKindDao)ac.getBean("ikinddao");
}
@Test
public void findall() {
	List<Kind> kinds =  ikinddao.findAll();
	for (Kind k : kinds) {
		System.out.println(k);
		
	}
}
@Test
public void findByKid() {
	Kind k = ikinddao.findByKid(1);
	System.out.println(k);
}

@Test
public void add() {
	Kind k = new Kind();
	k.setKname("名画");
	ikinddao.addKind(k);
}

@Test
public void update() {
	
	ikinddao.updateKind(3, "古币");
	System.out.println(ikinddao.findByKid(3));
	
	
}
@Test
public void delete() {
	ikinddao.deleteKind(3);

}






}
