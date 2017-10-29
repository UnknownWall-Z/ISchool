package org.memory.ischool.service;

import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISystemdictionaryitemService {
    int deleteByPrimaryKey(Long id);

    int insert(Systemdictionaryitem dept);


    Systemdictionaryitem selectByPrimaryKey(Long id);

    List<Systemdictionaryitem> selectAll();

    int updateByPrimaryKey(Systemdictionaryitem dept);

    List<Systemdictionaryitem> queryBysystemdictionId(Long sid);

    PageResult pageQuery(QueryObject qo);
}
