package org.memory.ischool.service;

import org.memory.ischool.domain.Attendance;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;

import java.util.Date;
import java.util.List;


public interface IAttendanceService {
    int insert(Attendance record);

    int updateByPrimaryKey(Attendance record);

    Attendance selectByPrimaryKey(Long id);

    List<Attendance> selectAll();

    PageResult pageQuery(QueryObject qo);

    List<Date> getTimeAll(long id);

    Date getEndTime(long id);
}
