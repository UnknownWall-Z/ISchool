package org.memory.ischool.service.impl;

import org.apache.shiro.SecurityUtils;
import org.memory.ischool.mapper.SchoolTraceLogMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.SchoolTraceLog;
import org.memory.ischool.query.SchoolTraceLogQueryObject;
import org.memory.ischool.service.ISchoolTraceLogService;

import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SchoolTraceLogServiceImpl implements ISchoolTraceLogService {

	@SuppressWarnings("SpringJavaAutowiringInspection")
	@Autowired
	private SchoolTraceLogMapper mapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(SchoolTraceLog log) {
		log.setInputTime(new Date());
		log.setState(false);
		Employee tracer = (Employee) SecurityUtils.getSubject().getPrincipal();
		log.setTracer(tracer);
		int count = mapper.insert(log);
		return count;
	}

	@Override
	public SchoolTraceLog selectByPrimaryKey(Long id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<SchoolTraceLog> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(SchoolTraceLog log) {
		return mapper.updateByPrimaryKey(log);
	}

	@Override
	public PageResult pageQuery(SchoolTraceLogQueryObject qo) {
		List<SchoolTraceLog> listData = mapper.getListData(qo);
		Long totalCount = mapper.getTotalCount(qo);
		return new PageResult(totalCount, listData);
	}

	@Override
	public void audit(SchoolTraceLog r) {
		r.setState(true);
		Employee manager = (Employee) SecurityUtils.getSubject().getPrincipal();
		r.setManager(manager);
		mapper.audit(r);
	}

}
