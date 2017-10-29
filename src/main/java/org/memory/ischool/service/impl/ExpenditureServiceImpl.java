package org.memory.ischool.service.impl;

import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Expenditure;
import org.memory.ischool.mapper.ExpenditureMapper;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IExpenditureService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class ExpenditureServiceImpl implements IExpenditureService {

    @Override
    public int insert(Expenditure expenditure) {
        int count = mapper.insert(expenditure);
        return count;
    }

    @Autowired
    private ExpenditureMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public Expenditure selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Expenditure> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Expenditure emp) {
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Expenditure> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public void changestate(Long id, Long auditorId) {
        mapper.changestate(id,auditorId);
    }

    @Override
    public void cancelaudit(Long id) {
        mapper.cancelaudit(id);
    }

}
