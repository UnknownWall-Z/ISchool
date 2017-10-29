package org.memory.ischool.mapper;

import org.memory.ischool.domain.Attendance;
import org.memory.ischool.query.QueryObject;

import java.util.Date;
import java.util.List;

public interface AttendanceMapper {


    int insert(Attendance record);

    int updateByPrimaryKey(Attendance record);

    Attendance selectByPrimaryKey(Long id);

    List<Attendance> selectAll();

    Long getTotalCount(QueryObject qo);

    List<Attendance> getListData(QueryObject qo);

    List<Date> getTimeAll(long id);

    Date getEndTime(long id);
}
