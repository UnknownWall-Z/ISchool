package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.SchoolClientTransferLog;
import org.memory.ischool.query.SchoolClientTransferLogQueryObject;

public interface SchoolClientTransferLogMapper {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolClientTransferLog record);

	SchoolClientTransferLog selectByPrimaryKey(Long id);

	List<SchoolClientTransferLog> selectAll();

	int updateByPrimaryKey(SchoolClientTransferLog record);

	List<SchoolClientTransferLog> getListData(SchoolClientTransferLogQueryObject qo);

	Long getTotalCount(SchoolClientTransferLogQueryObject qo);

	void audit(SchoolClientTransferLog r);

}