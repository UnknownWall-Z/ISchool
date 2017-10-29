package org.memory.ischool.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.domain.Client;
import org.memory.ischool.query.ClientQueryObject;


public interface ClientMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Client record);

    Client selectByPrimaryKey(Long id);

    List<Client> selectAll();

    int updateByPrimaryKey(Client record);

    Long getTotalCount(ClientQueryObject qo);

    List<Client> getListData(ClientQueryObject qo);

    List<Client> queryClientFromEmp(Long id);

    Long getTotalCountForPool(ClientQueryObject qo);

    List<Client> getListDataForPool(ClientQueryObject qo);

    void updateByTrack(Client client);

    List<Client> selectListForTrackForm();

    /**
     * 转正
     * @param client
     */
    /*void toRegular(Client client);*/

    void inPool(Client client);

    void transferByClientId(@Param("id") Long id, @Param("aimId") Long id1);

    void leftPool(Client client);


    void changeFormal(Long clientId);
}