package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.ISystemdictionaryitemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.mapper.SystemdictionaryitemMapper;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SystemdictionaryitemServiceImpl implements ISystemdictionaryitemService {

    @Autowired
    private SystemdictionaryitemMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Systemdictionaryitem systemdictionaryitem) {
        return mapper.insert(systemdictionaryitem);
    }

    @Override
    public Systemdictionaryitem selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Systemdictionaryitem> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Systemdictionaryitem systemdictionaryitem) {
        return mapper.updateByPrimaryKey(systemdictionaryitem);
    }

    @Override
    public List<Systemdictionaryitem> queryBysystemdictionId(Long sid) {
        return mapper.queryBysystemdictionId(sid);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Systemdictionaryitem> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }
}
