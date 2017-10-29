package org.memory.ischool.service;

import org.memory.ischool.domain.SchoolClientTransferLog;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.vo.SchoolTransferLogVO;
import org.memory.ischool.query.SchoolClientTransferLogQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISchoolClientTransferLogService {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolClientTransferLog record);

	SchoolClientTransferLog selectByPrimaryKey(Long id);

	List<SchoolClientTransferLog> selectAll();

	int updateByPrimaryKey(SchoolClientTransferLog record);

	PageResult pageQuery(SchoolClientTransferLogQueryObject qo);

	void audit(SchoolClientTransferLog r);

	void takeFromPool(Long clientId);

	void distribute(SchoolTransferLogVO logsVO);
}
