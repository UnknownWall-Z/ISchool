package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Systemlog;
import org.memory.ischool.mapper.SystemlogMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SystemLogQueryObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.service.ISystemlogService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SystemLogServiceImpl implements ISystemlogService{

    @Autowired
    private SystemlogMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {

        return  mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Systemlog log) {

        return  mapper.insert(log);
    }

    @Override
    public Systemlog selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Systemlog> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Systemlog log) {
        return mapper.updateByPrimaryKey(log);
    }

    @Override
    public PageResult pageQuery(SystemLogQueryObject qo) {
        Long count = mapper.getTotalCount(qo);
        List<Systemlog> listData = mapper.getListData(qo);
        return new PageResult(count,listData);
    }
}
