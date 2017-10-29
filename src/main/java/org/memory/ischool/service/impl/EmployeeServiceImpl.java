package org.memory.ischool.service.impl;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.memory.ischool.domain.Department;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Role;
import org.memory.ischool.mapper.EmployeeMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class EmployeeServiceImpl implements IEmployeeService {

    @Autowired
    private EmployeeMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        mapper.deleteRelation(id);
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Employee emp) {

        emp.setPassword((new Md5Hash(emp.getPassword(),emp.getUsername())).toString());
        int count = mapper.insert(emp);
        List<Role> roles = emp.getRoles();
        if(roles != null && roles.size()>0){
            for (Role role : roles) {
                mapper.saveRelation(emp.getId(),role.getId());
            }
        }
        return count;
    }

    @Override
    public Employee selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Employee> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Employee emp) {
        mapper.deleteRelation(emp.getId());
        List<Role> roles = emp.getRoles();
        for (Role role : roles) {
            mapper.saveRelation(emp.getId(),role.getId());
        }
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Employee> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public void changState(Long id) {
        mapper.changState(id);
    }

    @Override
    public List<Long> getRolesId(Long id) {
        return mapper.getRolesId(id);
    }

    @Override
    public Department getDeptByName(String contents) {
        return mapper.getDeptByName(contents);
    }

    @Override
    public Employee getEmployeeByName(String name) {
        try {
            return mapper.getEmployeeByName(name);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Employee getEmployeeByRealName(String realname) {
        try {
            return mapper.getEmployeeByRealName(realname);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
