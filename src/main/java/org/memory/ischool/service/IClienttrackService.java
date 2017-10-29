package org.memory.ischool.service;

import org.memory.ischool.domain.Clienttrack;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.ClienttrackQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IClienttrackService {
    int deleteByPrimaryKey(Long id);

    int insert(Clienttrack record);

    Clienttrack selectByPrimaryKey(Long id);

    List<Clienttrack> selectAll();

    int updateByPrimaryKey(Clienttrack record);

    PageResult pageQuery(ClienttrackQueryObject qo);

}
