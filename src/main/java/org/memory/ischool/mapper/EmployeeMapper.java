package org.memory.ischool.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.domain.Department;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.query.QueryObject;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Employee record);

    Employee selectByPrimaryKey(Long id);

    List<Employee> selectAll();

    int updateByPrimaryKey(Employee record);

    Long getTotalCount(QueryObject qo);

    List<Employee> getListData(QueryObject qo);

    void changState(Long id);

    void deleteRelation(Long id);

    void saveRelation(@Param("employeeId")Long employeeId, @Param("roleId") Long roleId);

    List<Long> getRolesId(Long id);

    Department getDeptByName(String contents);

    Employee getEmployeeByName(String name);

    Employee getEmployeeByRealName(String realname);
}