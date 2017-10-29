package org.memory.ischool.service;

import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SchoolClientQueryObject;
import org.memory.ischool.domain.SchoolClient;

import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISchoolClientService {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolClient record);

	SchoolClient selectByPrimaryKey(Long id);

	List<SchoolClient> selectAll();

	int updateByPrimaryKey(SchoolClient record);

	PageResult pageQuery(SchoolClientQueryObject qo);

	void traced(Long id, Date date);

	void pushToPool(Long id);

/*	void takeFromPool(Long id);*/
}
