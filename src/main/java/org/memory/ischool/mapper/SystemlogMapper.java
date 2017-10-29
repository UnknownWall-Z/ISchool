package org.memory.ischool.mapper;

import org.memory.ischool.query.SystemLogQueryObject;
import org.memory.ischool.domain.Systemlog;

import java.util.List;

public interface SystemlogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Systemlog record);

    Systemlog selectByPrimaryKey(Long id);

    List<Systemlog> selectAll();

    int updateByPrimaryKey(Systemlog record);


    List<Systemlog> getListData(SystemLogQueryObject qo);

    Long getTotalCount(SystemLogQueryObject qo);


}