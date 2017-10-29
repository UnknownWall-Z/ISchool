package org.memory.ischool.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.domain.Expenditure;
import org.memory.ischool.query.QueryObject;

public interface ExpenditureMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Expenditure record);

    Expenditure selectByPrimaryKey(Long id);

    List<Expenditure> selectAll();

    int updateByPrimaryKey(Expenditure record);

    Long getTotalCount(QueryObject qo);

    List<Expenditure> getListData(QueryObject qo);

    void changestate(@Param("id") Long id, @Param("auditorId") Long auditorId);

    void cancelaudit(Long id);
}