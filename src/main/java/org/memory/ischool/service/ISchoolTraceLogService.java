package org.memory.ischool.service;

import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SchoolTraceLogQueryObject;
import org.memory.ischool.domain.SchoolTraceLog;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISchoolTraceLogService {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolTraceLog record);

	SchoolTraceLog selectByPrimaryKey(Long id);

	List<SchoolTraceLog> selectAll();

	int updateByPrimaryKey(SchoolTraceLog record);

	PageResult pageQuery(SchoolTraceLogQueryObject qo);

	void audit(SchoolTraceLog r);
}
