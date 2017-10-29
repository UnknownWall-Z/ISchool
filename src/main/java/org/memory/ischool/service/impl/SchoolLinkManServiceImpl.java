package org.memory.ischool.service.impl;

import org.memory.ischool.domain.SchoolLinkMan;
import org.memory.ischool.service.ISchoolLinkManService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.mapper.SchoolLinkManMapper;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SchoolLinkManServiceImpl implements ISchoolLinkManService {

	@Autowired
	private SchoolLinkManMapper mapper;


	@Override
	public int deleteByPrimaryKey(Long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(SchoolLinkMan schoolLinkMan) {
		return mapper.insert(schoolLinkMan);
	}

	@Override
	public SchoolLinkMan selectByPrimaryKey(Long id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<SchoolLinkMan> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(SchoolLinkMan schoolLinkMan) {
		return mapper.updateByPrimaryKey(schoolLinkMan);
	}

	@Override
	public List<SchoolLinkMan> getBySchoolId(Long id) {

		return mapper.getBySchoolId(id);
	}

	@Override
	public List<SchoolLinkMan> getByName(String contents) {
		 return mapper.getByName(contents);
	}

}
