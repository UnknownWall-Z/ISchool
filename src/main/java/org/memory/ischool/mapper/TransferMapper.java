package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.Transfer;
import org.memory.ischool.query.QueryObject;

public interface TransferMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Transfer record);

    Transfer selectByPrimaryKey(Long id);

    List<Transfer> selectAll();

    int updateByPrimaryKey(Transfer record);

    Long getTotalCount(QueryObject qo);

    List<Transfer> getListData(QueryObject qo);
}
