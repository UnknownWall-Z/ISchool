package org.memory.ischool.mapper;

import org.memory.ischool.domain.Timetable;
import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.query.TimetableQueryObject;

import java.util.List;

public interface TimetableMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Timetable record);

    Timetable selectByPrimaryKey(Long id);

    List<Timetable> selectAll();

    int updateByPrimaryKey(Timetable record);


    Long getTotalCount(TimetableQueryObject qo);

    List<Timetable> getListData(TimetableQueryObject qo);

    List<Timetableitem>  getTimetableitemById(Long id);

}