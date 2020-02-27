package test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.czf.dao.IRecordsDao;
import com.czf.dao.Iuserdao;
import com.czf.domain.Records;

public class RecordsTest {
	private IRecordsDao iRecordsdao;
	@Before
	public void before() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		iRecordsdao = (IRecordsDao)ac.getBean("iRecordsDao");
	}
	@Test
	public void findAll() {
	  List<Records> r =	(List<Records>) iRecordsdao.findAll();
	  System.out.println(r);
	}
	@Test
	public void add() {
	  Records r =new Records();
	  r.setNowprice(250);
	  r.setPname("测试用例");
	  r.setUname("测试人");
	  r.setTime("2020/2/19 18:21");
	  iRecordsdao.recordsAdd(r);
	}
}
