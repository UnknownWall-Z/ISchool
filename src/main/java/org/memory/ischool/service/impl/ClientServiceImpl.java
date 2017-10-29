package org.memory.ischool.service.impl;


import org.apache.shiro.SecurityUtils;
import org.memory.ischool.domain.Client;
import org.memory.ischool.domain.Clienttrack;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Transfer;
import org.memory.ischool.mapper.ClientMapper;
import org.memory.ischool.mapper.TransferMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.mapper.ClienttrackMapper;
import org.memory.ischool.query.ClientQueryObject;
import org.memory.ischool.service.IClientService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class ClientServiceImpl implements IClientService{

    @Autowired
    private ClientMapper mapper;

    @Autowired
    private ClienttrackMapper clienttrackMapper;

    @Autowired
    private TransferMapper transferMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Client emp) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        emp.setBuildtime(new Date());
        emp.setInputtime(new Date());
        emp.setStatus("1");
        emp.setTracktime(0);
        emp.setInputuser((Employee) SecurityUtils.getSubject().getPrincipal());
        emp.setMarketuser((Employee) SecurityUtils.getSubject().getPrincipal());
        int count = mapper.insert(emp);
        return count;
    }

    @Override
    public Client selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Client> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Client emp) {
        emp.setBuildtime(new Date());
        emp.setInputtime(new Date());
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(ClientQueryObject qo) {
        Employee currentUser = (Employee) SecurityUtils.getSubject().getPrincipal();
        if(!currentUser.getAdmin()){
            qo.setId(currentUser.getId());
        }
        List<Client> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public PageResult pageQueryForPool(ClientQueryObject qo) {
        List<Client> listData = mapper.getListDataForPool(qo);
        Long totalCount = mapper.getTotalCountForPool(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public List<Client> queryClientFromEmp(Long id) {
        Client client = new Client();
        client.setInputuser((Employee) SecurityUtils.getSubject().getPrincipal());
        return mapper.queryClientFromEmp(client.getInputuser().getId());
    }

    @Override
    public void updateByTrack(Client client){
        client.setInputtime(new Date());
        Employee employee = (Employee) SecurityUtils.getSubject().getPrincipal();
        Clienttrack clienttrack = new Clienttrack();
        Integer tracktime = client.getTracktime();
        Date nexttime = client.getNexttime();
        client.setTracktime(++tracktime);
        clienttrack.setInputtime(new Date());
        clienttrack.setClient(client);
        clienttrack.setNexttime(nexttime);
        /*clienttrack.setConsultway(null);
        clienttrack.setFilePath(null);
        clienttrack.setPurpose(null);
        clienttrack.setSummary(null);*/
        clienttrackMapper.insert(clienttrack);
        mapper.updateByTrack(client);
    }

    @Override
    public List<Client> selectListForTrackForm() {
        return mapper.selectListForTrackForm();
    }

    @Override
    public void inPool(Client client) {
        Employee employee = (Employee) SecurityUtils.getSubject().getPrincipal();
        String reason = client.getInpoolreason();
        Transfer transfer = new Transfer();
        transfer.setClient(client);
        transfer.setTransfertime(new Date());
        transfer.setReason(reason);
        transfer.setPreowner(null);
        transfer.setAimowner(employee);
        transferMapper.insert(transfer);
        mapper.inPool(client);
    }

    @Override
    public void leftPool(Client client) {
        client.setStatus("1");
        mapper.leftPool(client);
    }

    @Override
    public void changeFormal(Long clientId) {
        mapper.changeFormal(clientId);
    }

}
