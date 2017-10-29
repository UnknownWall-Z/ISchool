package org.memory.ischool.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.domain.Permission;
import org.memory.ischool.domain.Role;
import org.memory.ischool.query.QueryObject;

public interface RoleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Role record);

    Role selectByPrimaryKey(Long id);

    List<Role> selectAll();

    int updateByPrimaryKey(Role record);

    Long getTotalCount(QueryObject qo);

    List<Role> getListData(QueryObject qo);

    List<Permission> getPms(Long id);

    void deleteRelation(Long id);

    void saveRelation(@Param("roleId")Long roleId,@Param("permissionId")Long permissionId);
}