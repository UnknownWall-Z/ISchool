package org.memory.ischool.service;

import org.memory.ischool.domain.Systemlog;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SystemLogQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISystemlogService {
    int deleteByPrimaryKey(Long id);

    int insert(Systemlog log);

    Systemlog selectByPrimaryKey(Long id);

    List<Systemlog> selectAll();

    int updateByPrimaryKey(Systemlog log);

    PageResult pageQuery(SystemLogQueryObject qo);
}
