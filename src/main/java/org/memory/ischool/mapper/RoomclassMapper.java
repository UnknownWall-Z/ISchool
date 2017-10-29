package org.memory.ischool.mapper;

import org.memory.ischool.domain.Roomclass;
import org.memory.ischool.query.RoomclassQueryObject;

import java.util.List;

public interface RoomclassMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Roomclass record);

    Roomclass selectByPrimaryKey(Long id);

    List<Roomclass> selectAll();

    int updateByPrimaryKey(Roomclass record);

    Long getTotalCount(RoomclassQueryObject qo);

    List<Roomclass> getListData(RoomclassQueryObject qo);

    Long  getRoomclassById( Long id);

    void changState(Long id);
}