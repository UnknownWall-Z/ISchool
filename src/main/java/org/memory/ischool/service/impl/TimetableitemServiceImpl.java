package org.memory.ischool.service.impl;

import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.mapper.TimetableitemMapper;
import org.memory.ischool.query.TimetableitemQueryObject;
import org.memory.ischool.service.ITimetableitemService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class TimetableitemServiceImpl implements ITimetableitemService{

    @Autowired
    private TimetableitemMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Timetableitem dept) {
        return mapper.insert(dept);
    }

    @Override
    public Timetableitem selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Timetableitem> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Timetableitem dept) {
        return mapper.updateByPrimaryKey(dept);
    }

    @Override
    public PageResult pageQuery(TimetableitemQueryObject qo) {
        List<Timetableitem> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public List<Timetableitem> getTimetableitemById(Long id) {
        return mapper.getTimetableitemById(id);
    }


   /* public Long getTimetableitemById(Long id){
           return mapper.getTimetableitemById(id);
    };*/
}
