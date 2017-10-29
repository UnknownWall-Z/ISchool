package org.memory.ischool.service.impl;


import org.memory.ischool.mapper.ClientMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IClienttrackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Client;
import org.memory.ischool.domain.Clienttrack;
import org.memory.ischool.mapper.ClienttrackMapper;
import org.memory.ischool.query.ClienttrackQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class ClienttrackServiceImpl implements IClienttrackService {

    @Autowired
    private ClienttrackMapper mapper;

    @Autowired
    private ClientMapper clientMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Clienttrack emp) {
        Client client = emp.getClient();
        Integer tracktime = clientMapper.selectByPrimaryKey(client.getId()).getTracktime();
        client.setTracktime(++tracktime);
        clientMapper.updateByTrack(client);
        int count = mapper.insert(emp);
        return count;
    }

    @Override
    public Clienttrack selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Clienttrack> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Clienttrack emp) {
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(ClienttrackQueryObject qo) {
        List<Clienttrack> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

}
