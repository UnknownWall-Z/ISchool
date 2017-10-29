package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.StudentLoss;
import org.memory.ischool.query.QueryObject;

public interface StudentLossMapper {
    int deleteByPrimaryKey(Long id);

    int insert(StudentLoss record);

    StudentLoss selectByPrimaryKey(Long id);

    List<StudentLoss> selectAll();

    int updateByPrimaryKey(StudentLoss record);

    Long getTotalCount(QueryObject qo);

    List<StudentLoss> getListData(QueryObject qo);
}