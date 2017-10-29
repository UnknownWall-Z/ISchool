package org.memory.ischool.service;

import org.memory.ischool.domain.Receipt;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IReceiptService {

    int deleteByPrimaryKey(Long id);

    int insert(Receipt receipt);

    Receipt selectByPrimaryKey(Long id);

    List<Receipt> selectAll();

    int updateByPrimaryKey(Receipt receipt);

    PageResult pageQuery(QueryObject qo);

    void changestate(Long id);

    void cancelaudit(Long id);
}
