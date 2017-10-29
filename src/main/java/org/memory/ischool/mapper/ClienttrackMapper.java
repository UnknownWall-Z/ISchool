package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.Clienttrack;
import org.memory.ischool.query.ClienttrackQueryObject;

public interface ClienttrackMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Clienttrack record);

    Clienttrack selectByPrimaryKey(Long id);

    List<Clienttrack> selectAll();

    int updateByPrimaryKey(Clienttrack record);

    Long getTotalCount(ClienttrackQueryObject qo);

    List<Clienttrack> getListData(ClienttrackQueryObject qo);
}