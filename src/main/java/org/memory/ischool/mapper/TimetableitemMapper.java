package org.memory.ischool.mapper;

import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.query.TimetableitemQueryObject;

import java.util.List;

public interface TimetableitemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Timetableitem record);

    Timetableitem selectByPrimaryKey(Long id);

    List<Timetableitem> selectAll();

    int updateByPrimaryKey(Timetableitem record);

    Long getTotalCount(TimetableitemQueryObject qo);

    List<Timetableitem> getListData(TimetableitemQueryObject qo);

    List<Timetableitem> getTimetableitemById(Long id);

    /*Long  getTimetableitemById(Long id);*/

}