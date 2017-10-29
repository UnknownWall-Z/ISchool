package org.memory.ischool.service;

import org.memory.ischool.domain.Permission;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.domain.Role;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IRoleService {
    int deleteByPrimaryKey(Long id);

    int insert(Role role);

    Role selectByPrimaryKey(Long id);

    List<Role> selectAll();

    int updateByPrimaryKey(Role role);

    PageResult pageQuery(QueryObject qo);

    List<Permission> getPms(Long id);
}
