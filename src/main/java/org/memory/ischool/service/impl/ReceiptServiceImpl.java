package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Receipt;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.mapper.ReceiptMapper;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IReceiptService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class ReceiptServiceImpl implements IReceiptService {

    @Override
    public int insert(Receipt receipt) {
        int count = mapper.insert(receipt);
        return count;
    }

    @Autowired
    private ReceiptMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public Receipt selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Receipt> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Receipt emp) {
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Receipt> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public void changestate(Long id) {
        mapper.changestate(id);
    }

    @Override
    public void cancelaudit(Long id) {
        mapper.cancelaudit(id);
    }

}
