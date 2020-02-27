package com.czf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.czf.dao.IRecordsDao;
import com.czf.domain.PageBean;
import com.czf.domain.Product;
import com.czf.domain.Records;
@Service
public class RecordsServiceImpl implements IRecordsService {
	@Autowired
	private IRecordsDao iRecordsdao;
	@Override
	public List<Records> findAll() {
		// TODO Auto-generated method stub
		return iRecordsdao.findAll();
	}
	//分页查询
	@Override
	public PageBean<Records> findBypage(Integer pagenum, Integer pagesize) {
		List<Records> records = iRecordsdao.findAll();
		int totalRecord = records.size();
		//有了这3个数据就可以创建pagebean对象了
		PageBean pb =  new PageBean(pagenum,pagesize,totalRecord) ;
		//获取当前pagebean对象中的startindex(计算得来)
		int startindex =pb.getStartindex();
		//有了startindex和pagesize,就可以拿到每页的数据
		pb.setList(iRecordsdao.findBypage(startindex, pagesize));
		return pb;
	}
	@Override
	public void recordsDelete(Integer id) {
		// TODO Auto-generated method stub
		iRecordsdao.recordsdelete(id);
	}
	@Override
	public void recordsAdd(Records r) {
		// TODO Auto-generated method stub
		iRecordsdao.recordsAdd(r);
	}

}
