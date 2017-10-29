package org.memory.ischool.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.query.SchoolClientQueryObject;
import org.memory.ischool.domain.SchoolClient;

public interface SchoolClientMapper {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolClient record);

	SchoolClient selectByPrimaryKey(Long id);

	List<SchoolClient> selectAll();

	int updateByPrimaryKey(SchoolClient record);

	Long getTotalCount(SchoolClientQueryObject qo);

	List<SchoolClient> getListData(SchoolClientQueryObject qo);

	void changeState(Long id);

	void traced(@Param("id") Long id, @Param("date") Date date);

	void pushToPool(Long id);


	void distributeUpdate(SchoolClient client);

	void audit(Long id);

	void auditFaile(Long id);
}