package org.memory.ischool.service;

import org.memory.ischool.domain.Department;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.DepartmentQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IDepartmentService {
    int deleteByPrimaryKey(Long id);

    int insert(Department dept);

    Department selectByPrimaryKey(Long id);

    List<Department> selectAll();

    int updateByPrimaryKey(Department dept);

    PageResult pageQuery(DepartmentQueryObject qo);

    void changState(Long id);

    void restoreChangState(Long id);
}
