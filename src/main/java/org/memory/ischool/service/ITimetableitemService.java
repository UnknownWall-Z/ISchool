package org.memory.ischool.service;

import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.TimetableitemQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ITimetableitemService {
    int deleteByPrimaryKey(Long id);

    int insert(Timetableitem dept);

    Timetableitem selectByPrimaryKey(Long id);

    List<Timetableitem> selectAll();

    int updateByPrimaryKey(Timetableitem dept);

    PageResult pageQuery(TimetableitemQueryObject qo);

    List<Timetableitem> getTimetableitemById(Long id);

    /*Long getTimetableitemById(Long id);*/
}
