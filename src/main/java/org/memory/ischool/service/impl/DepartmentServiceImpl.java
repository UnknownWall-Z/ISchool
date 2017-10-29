package org.memory.ischool.service.impl;

import org.memory.ischool.mapper.DepartmentMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Department;
import org.memory.ischool.query.DepartmentQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class DepartmentServiceImpl implements IDepartmentService {

    @Autowired
    private DepartmentMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Department dept) {
        return mapper.insert(dept);
    }

    @Override
    public Department selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Department> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Department dept) {
        return mapper.updateByPrimaryKey(dept);
    }

    @Override
    public PageResult pageQuery(DepartmentQueryObject qo) {
        List<Department> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public void changState(Long id) {
        mapper.changState(id);
    }

    @Override
    public void restoreChangState(Long id) {
        mapper.restoreChangState(id);
    }
}
