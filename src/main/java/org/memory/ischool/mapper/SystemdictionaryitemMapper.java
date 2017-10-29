package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.query.QueryObject;

public interface SystemdictionaryitemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Systemdictionaryitem record);

    Systemdictionaryitem selectByPrimaryKey(Long id);

    List<Systemdictionaryitem> selectAll();

    int updateByPrimaryKey(Systemdictionaryitem record);

    List<Systemdictionaryitem> queryBysystemdictionId(Long sid);

    Long getTotalCount(QueryObject qo);

    List<Systemdictionaryitem> getListData(QueryObject qo);
}