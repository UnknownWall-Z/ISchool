package org.memory.ischool.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Permission;
import org.memory.ischool.mapper.PermissionMapper;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.memory.ischool.service.IPermissionService;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class PermissionServiceImpl implements IPermissionService,ApplicationContextAware{

    @Autowired
    private PermissionMapper mapper;

    private ApplicationContext cpx;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.cpx = applicationContext;
    }

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Permission permission) {
        return mapper.insert(permission);
    }

    @Override
    public Permission selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Permission> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Permission permission) {
        return mapper.updateByPrimaryKey(permission);
    }

    @Override
    public void reload() {
        List<String> allResource = mapper.getAllResource();

        Map<String, Object> beans = cpx.getBeansWithAnnotation(Controller.class);
        for (Object bean : beans.values()) {
            Method[] methods = bean.getClass().getSuperclass().getDeclaredMethods();
            for (Method method : methods) {
                if(method.isAnnotationPresent(RequiresPermissions.class)){
                    RequiresPermissions requiresPermissions = method.getAnnotation(RequiresPermissions.class);
                    String[] values = requiresPermissions.value();
                    String join = StringUtils.join(values, ",");
                    if(!allResource.contains(join)){
                        Permission pm = new Permission();
                        PermissionName permissionName = method.getAnnotation(PermissionName.class);
                        pm.setName(permissionName.value());
                        pm.setResource(join);
                        mapper.insert(pm);
                    }
                }
            }
        }
    }

    @Override
    public List<String> getResourceByEmployeeId(Long id) {
        return mapper.getResourceByEmployeeId(id);
    }


}
