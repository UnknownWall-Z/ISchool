package org.memory.ischool.service;

import org.memory.ischool.domain.Salary;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SalaryQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface ISalaryService {

    int deleteByPrimaryKey(Long id);

    int insert(Salary salary);

    Salary selectByPrimaryKey(Long id);

    List<Salary> selectAll();

    int updateByPrimaryKey(Salary record);

    PageResult pageQuery(SalaryQueryObject qo);

    void balance(Integer year, Integer month);
}
