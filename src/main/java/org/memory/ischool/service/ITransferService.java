package org.memory.ischool.service;

import org.memory.ischool.page.PageResult;
import org.memory.ischool.domain.Transfer;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ITransferService {
    int deleteByPrimaryKey(Long id);

    int insert(Transfer record);

    Transfer selectByPrimaryKey(Long id);

    List<Transfer> selectAll();

    int updateByPrimaryKey(Transfer record);

    PageResult pageQuery(QueryObject qo);

}
