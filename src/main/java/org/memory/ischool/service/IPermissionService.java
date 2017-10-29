package org.memory.ischool.service;

import org.memory.ischool.domain.Permission;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IPermissionService {
    int deleteByPrimaryKey(Long id);

    int insert(Permission permission);

    Permission selectByPrimaryKey(Long id);

    List<Permission> selectAll();

    int updateByPrimaryKey(Permission permission);

    void reload();

    List<String> getResourceByEmployeeId(Long id);
}
