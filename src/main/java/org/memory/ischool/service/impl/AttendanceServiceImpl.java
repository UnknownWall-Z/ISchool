package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Attendance;
import org.memory.ischool.mapper.AttendanceMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IAttendanceService;

import java.util.Collections;
import java.util.Date;
import java.util.List;

@Service
public class AttendanceServiceImpl implements IAttendanceService {
    @Autowired
    private AttendanceMapper mapper;

    @Override
    public int insert(Attendance record) {
        return mapper.insert(record);
    }

    @Override
    public int updateByPrimaryKey(Attendance record) {
        return mapper.updateByPrimaryKey(record);
    }

    @Override
    public Attendance selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Attendance> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public List<Date> getTimeAll(long id) {
        return mapper.getTimeAll(id);
    }

    @Override
    public Date getEndTime(long id) {
        return mapper.getEndTime(id);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        Long totalCount = mapper.getTotalCount(qo);
        if(totalCount==0){
            return new PageResult(totalCount, Collections.emptyList());
        }
        List<Attendance> listData = mapper.getListData(qo);

        return new PageResult(totalCount,listData);
    }
}
