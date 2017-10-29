package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Permission;
import org.memory.ischool.domain.Role;
import org.memory.ischool.mapper.RoleMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    private RoleMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        mapper.deleteRelation(id);
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Role role) {
        int count = mapper.insert(role);
        List<Permission> permissions = role.getPermissions();
        if(permissions.size()>0){
            for (Permission permission : permissions){
                mapper.saveRelation(role.getId(),permission.getId());
            }
        }
        return count;
    }

    @Override
    public Role selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Role> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Role role) {
        mapper.deleteRelation(role.getId());
        int count = mapper.updateByPrimaryKey(role);
        List<Permission> permissions = role.getPermissions();
        if(permissions.size()>0){
            for (Permission permission : permissions){
                mapper.saveRelation(role.getId(),permission.getId());
            }
        }
        return count;
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Role> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public List<Permission> getPms(Long id) {
        return mapper.getPms(id);
    }

}
