package org.memory.ischool.mapper;

import java.util.List;

import org.memory.ischool.domain.Permission;

public interface PermissionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Permission record);

    Permission selectByPrimaryKey(Long id);

    List<Permission> selectAll();

    int updateByPrimaryKey(Permission record);

    List<String> getAllResource();

    List<String> getResourceByEmployeeId(Long id);
}