package org.memory.ischool.service;

import org.memory.ischool.page.PageResult;
import org.memory.ischool.domain.Expenditure;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IExpenditureService {

    int deleteByPrimaryKey(Long id);

    int insert(Expenditure expenditure);

    Expenditure selectByPrimaryKey(Long id);

    List<Expenditure> selectAll();

    int updateByPrimaryKey(Expenditure expenditure);

    PageResult pageQuery(QueryObject qo);

    void changestate(Long id, Long auditorId);

    void cancelaudit(Long id);
}
