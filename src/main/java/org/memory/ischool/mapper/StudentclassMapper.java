package org.memory.ischool.mapper;

import org.memory.ischool.domain.Studentclass;
import org.memory.ischool.query.StudentClassQueryObject;

import java.util.List;

public interface StudentclassMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Studentclass record);

    Studentclass selectByPrimaryKey(Long id);

    List<Studentclass> selectAll();

    int updateByPrimaryKey(Studentclass record);

    Long getTotalCount(StudentClassQueryObject qo);

    List<Studentclass> getListData(StudentClassQueryObject qo);

    Long  getEmployeeById(Long id);

    void changState(Long id);
}