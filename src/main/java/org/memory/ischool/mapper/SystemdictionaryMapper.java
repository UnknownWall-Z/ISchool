package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.Systemdictionary;
import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.query.QueryObject;

public interface SystemdictionaryMapper {

    List<Systemdictionary> selectAll();

    List<Systemdictionaryitem> querySsnByItemParentSn(String ssn);

    Long getTotalCount(QueryObject qo);

    List<Systemdictionary> getListData(QueryObject qo);
}