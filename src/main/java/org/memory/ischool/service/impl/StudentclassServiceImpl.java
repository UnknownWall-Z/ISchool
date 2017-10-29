package org.memory.ischool.service.impl;

import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Studentclass;
import org.memory.ischool.mapper.EmployeeMapper;
import org.memory.ischool.mapper.StudentclassMapper;
import org.memory.ischool.query.StudentClassQueryObject;
import org.memory.ischool.service.IStudentclassService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class StudentclassServiceImpl implements IStudentclassService{

    @Autowired
    private StudentclassMapper mapper;

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Studentclass studentclass) {
        //employeeMapper.insert(studentclass.getHeadteacher());
        return mapper.insert(studentclass);
    }

    @Override
    public Studentclass selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Studentclass> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Studentclass studentclass) {
        return mapper.updateByPrimaryKey(studentclass);
    }

    @Override
    public PageResult pageQuery(StudentClassQueryObject qo) {
        List<Studentclass> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

    @Override
    public Long getEmployeeById(Long id) {
        return mapper.getEmployeeById(id);
    }

    @Override
    public void changState(Long id) {
        mapper.changState(id);
    }
}
