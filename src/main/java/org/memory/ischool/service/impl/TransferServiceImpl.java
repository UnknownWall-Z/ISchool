package org.memory.ischool.service.impl;


import org.memory.ischool.mapper.ClientMapper;
import org.memory.ischool.mapper.TransferMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Client;
import org.memory.ischool.domain.Transfer;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.ITransferService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class TransferServiceImpl implements ITransferService {

    @Autowired
    private TransferMapper mapper;

    @Autowired
    private ClientMapper clientMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Transfer emp) {
        emp.setPreowner(clientMapper.selectByPrimaryKey(emp.getClient().getId()).getMarketuser());
        Client client = emp.getClient();
        clientMapper.transferByClientId(client.getId(),emp.getAimowner().getId());
        int count = mapper.insert(emp);
        return count;
    }

    @Override
    public Transfer selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Transfer> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Transfer emp) {
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Transfer> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

}
