package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.SchoolLinkMan;

public interface SchoolLinkManMapper {
	int deleteByPrimaryKey(Long id);

	int insert(SchoolLinkMan record);

	SchoolLinkMan selectByPrimaryKey(Long id);

	List<SchoolLinkMan> selectAll();

	int updateByPrimaryKey(SchoolLinkMan record);

	List<SchoolLinkMan> getBySchoolId(Long id);

	List<SchoolLinkMan> getByName(String name);
}