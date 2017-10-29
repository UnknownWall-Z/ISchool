package org.memory.ischool.service;

import org.memory.ischool.page.PageResult;
import org.memory.ischool.domain.Department;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IEmployeeService {
    int deleteByPrimaryKey(Long id);

    int insert(Employee record);

    Employee selectByPrimaryKey(Long id);

    List<Employee> selectAll();

    int updateByPrimaryKey(Employee record);

    PageResult pageQuery(QueryObject qo);

    void changState(Long id);

    List<Long> getRolesId(Long id);

    Department getDeptByName(String contents);

    Employee getEmployeeByName(String name);

    Employee getEmployeeByRealName(String realname);
}
