package org.memory.ischool.mapper;

import org.memory.ischool.domain.SchoolTraceLog;
import org.memory.ischool.query.SchoolTraceLogQueryObject;

import java.util.List;

public interface SchoolTraceLogMapper {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolTraceLog record);

	SchoolTraceLog selectByPrimaryKey(Long id);

	List<SchoolTraceLog> selectAll();

	int updateByPrimaryKey(SchoolTraceLog record);

	List<SchoolTraceLog> getListData(SchoolTraceLogQueryObject qo);

	Long getTotalCount(SchoolTraceLogQueryObject qo);

	void audit(SchoolTraceLog r);
}