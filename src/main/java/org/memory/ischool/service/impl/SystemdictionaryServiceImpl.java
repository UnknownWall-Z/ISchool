package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Systemdictionary;
import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.mapper.SystemdictionaryMapper;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.ISystemdictionaryService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SystemdictionaryServiceImpl implements ISystemdictionaryService{

    @Autowired
    private SystemdictionaryMapper mapper;

    @Override
    public List<Systemdictionary> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public List<Systemdictionaryitem> querySsnByItemParentSn(String ssn) {
        return mapper.querySsnByItemParentSn(ssn);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Systemdictionary> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }
}
