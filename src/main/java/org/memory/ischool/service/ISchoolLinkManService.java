package org.memory.ischool.service;

import org.memory.ischool.domain.SchoolLinkMan;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISchoolLinkManService {
    int deleteByPrimaryKey(Long id);

    int insert(SchoolLinkMan schoolLinkMan);

    SchoolLinkMan selectByPrimaryKey(Long id);

    List<SchoolLinkMan> selectAll();

    int updateByPrimaryKey(SchoolLinkMan schoolLinkMan);


    List<SchoolLinkMan> getBySchoolId(Long id);

	List<SchoolLinkMan> getByName(String contents);
}
