package org.memory.ischool.service;

import org.memory.ischool.page.PageResult;
import org.memory.ischool.domain.Client;
import org.memory.ischool.query.ClientQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IClientService {
    int deleteByPrimaryKey(Long id);

    int insert(Client record);

    Client selectByPrimaryKey(Long id);

    List<Client> selectAll();

    int updateByPrimaryKey(Client record);

    PageResult pageQuery(ClientQueryObject qo);

    PageResult pageQueryForPool(ClientQueryObject qo);

    List<Client> queryClientFromEmp(Long id);

    void updateByTrack(Client client);

    List<Client> selectListForTrackForm();

    void inPool(Client client);

    void leftPool(Client client);

    void changeFormal(Long clientId);
}
