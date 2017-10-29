package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.Receipt;
import org.memory.ischool.query.QueryObject;

public interface ReceiptMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Receipt record);

    Receipt selectByPrimaryKey(Long id);

    List<Receipt> selectAll();

    int updateByPrimaryKey(Receipt record);

    Long getTotalCount(QueryObject qo);

    List<Receipt> getListData(QueryObject qo);

    void changestate(Long id);

    void cancelaudit(Long id);
}