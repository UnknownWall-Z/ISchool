package org.memory.ischool.mapper;

import java.util.List;
import org.memory.ischool.domain.Department;
import org.memory.ischool.query.DepartmentQueryObject;

public interface DepartmentMapper {

    int deleteByPrimaryKey(Long id);

    int insert(Department record);

    Department selectByPrimaryKey(Long id);

    List<Department> selectAll();

    int updateByPrimaryKey(Department record);

    Long getTotalCount(DepartmentQueryObject qo);

    List<Department> getListData(DepartmentQueryObject qo);

    void changState(Long id);

    void restoreChangState(Long id);
}