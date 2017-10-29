package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Timetable;
import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.mapper.TimetableMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.query.TimetableQueryObject;
import org.memory.ischool.service.ITimetableService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class TimetableServiceImpl implements ITimetableService{

    @Autowired
    private TimetableMapper mapper;


    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Timetable dept) {
        return mapper.insert(dept);
    }

    @Override
    public Timetable selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Timetable> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Timetable dept) {
        return mapper.updateByPrimaryKey(dept);
    }

    @Override
    public PageResult pageQuery(TimetableQueryObject qo) {
        List<Timetable> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    public List<Timetableitem>  getTimetableitemById(Long id){
        return mapper.getTimetableitemById(id);
    };
}
