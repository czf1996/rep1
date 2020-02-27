package test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.czf.dao.Iuserdao;
import com.czf.domain.User;

public class usertest {
	private Iuserdao iuserdao;

@Before
public void before() {
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	iuserdao = (Iuserdao)ac.getBean("iuserdao");
}
@Test
public void findAll() {
	List<User> users = iuserdao.findAll();
	for (User user : users) {
		System.out.println(user);
	}
}
@Test
public void findUserByNP() {
	/*User user = new User();
	user.setUname("程子丰");
	user.setUpassword("123456");
	System.out.println(user);*/
	User u = iuserdao.findUserByNP("程子丰","czf123");
	System.out.println(u);
	
}
@Test
public void finduserByuid() {
	User u = iuserdao.finduserByuid(1);
	System.out.println(u);
}
//uname为中文就匹配不上有问题，解决：?userUnicode=true&amp;characterEncoding=utf8
@Test
public void finduserByname() {
	User u = iuserdao.finduserByname("程子丰");
	System.out.println(u);
}
@Test
public void finduserBylikename() {
	List<User> u = iuserdao.finduserBylikename("程");
	for (User user : u) {
		System.out.println(user);
	}
}
@Test
public void adduser() {
	User user = new User();
	user.setUname("张林虎");
	user.setUpassword("951236");
	user.setPhone("18856623300");
	user.setAddress("无锡");
	user.setFunds(100);
	iuserdao.adduser(user);
}

@Test
public void updateuser() {
	User user = new User();
	user.setUid(2);
	user.setFunds(1250);
	user.setUname("杨继坤");
	user.setUpassword("yjk123");
	user.setPhone("17879651234");
	user.setAddress("上海");
	iuserdao.update(user);
}

@Test
public void deleteuser() {
	iuserdao.deleteuser(3);

}







}