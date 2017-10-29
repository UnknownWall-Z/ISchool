package org.memory.ischool.service.impl;

import org.apache.shiro.SecurityUtils;
import org.memory.ischool.domain.SchoolClientTransferLog;
import org.memory.ischool.mapper.SchoolClientMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SchoolClientQueryObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.SchoolClient;
import org.memory.ischool.mapper.SchoolClientTransferLogMapper;
import org.memory.ischool.service.ISchoolClientService;

import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SchoolClientServiceImpl implements ISchoolClientService {

	@Autowired
	private SchoolClientMapper mapper;

	@Autowired
	private SchoolClientTransferLogMapper logMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(SchoolClient client) {
		//设定建表时间
		client.setBuildingTime(new Date());
		if (client.getNextTraceTime() != null) {
			client.setClientState(Boolean.FALSE);
		} else {
			client.setClientState(Boolean.TRUE);
		}
		if (client.getTracer() == null) {
			client.setState("共享");
		} else {
			client.setState("正常");
		}
		client.setCooperationNum(Integer.valueOf("0"));
		//设定现在为上一次跟进时间
		client.setLastTraceTime(new Date());
		Employee cruiter = (Employee) SecurityUtils.getSubject().getPrincipal();
		client.setRecruitre(cruiter);

		int count = mapper.insert(client);

		return count;
	}

	@Override
	public SchoolClient selectByPrimaryKey(Long id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<SchoolClient> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(SchoolClient client) {
		return mapper.updateByPrimaryKey(client);
	}

	@Override
	public PageResult pageQuery(SchoolClientQueryObject qo) {
		List<SchoolClient> listData = mapper.getListData(qo);
		Long totalCount = mapper.getTotalCount(qo);
		return new PageResult(totalCount, listData);
	}

	@Override
	public void traced(Long id, Date date) {

		mapper.traced(id, date);
	}

	@Override
	public void pushToPool(Long id) {
		SchoolClient schoolClient = mapper.selectByPrimaryKey(id);
		schoolClient.setState("待审核");
		Employee employee = (Employee) SecurityUtils.getSubject().getPrincipal();
		SchoolClientTransferLog log = new SchoolClientTransferLog();
		log.setAuditState(false);
		log.setClientSchool(schoolClient);
		log.setOutEmp(employee);
		log.setInputTime(new Date());
		log.setInEmp(null);

		logMapper.insert(log);
		mapper.updateByPrimaryKey(schoolClient);
	}

/*	@Override
	public void takeFromPool(Long id) {
//		Employee user = (Employee) SecurityUtils.getSubject().getPrincipal();
		//假数据
		Employee user = new Employee();
		mapper.takeFromPool(id,user.getId());
	}*/

}
