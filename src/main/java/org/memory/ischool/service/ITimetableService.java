package org.memory.ischool.service;

import org.memory.ischool.domain.Timetable;
import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.TimetableQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ITimetableService {
    int deleteByPrimaryKey(Long id);

    int insert(Timetable dept);

    Timetable selectByPrimaryKey(Long id);

    List<Timetable> selectAll();

    int updateByPrimaryKey(Timetable dept);

    PageResult pageQuery(TimetableQueryObject qo);

    List<Timetableitem>  getTimetableitemById(Long id);
}
