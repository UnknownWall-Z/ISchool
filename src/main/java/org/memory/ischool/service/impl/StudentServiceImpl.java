package org.memory.ischool.service.impl;

import org.memory.ischool.domain.Student;
import org.memory.ischool.mapper.StudentMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.StudentQueryObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.StudentChart;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IStudentService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class StudentServiceImpl implements IStudentService {

    @Autowired
    private StudentMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Student emp) {
        int count = mapper.insert(emp);
        return count;
    }

    @Override
    public Student selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Student> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Student emp) {
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<Student> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount, listData);
    }

    @Override
    public void changeClass(Long id, Long classname, Long newclass) {
        mapper.changeClass(id, classname, newclass);
    }

    @Override
    public void updateUpordown(Student student) {
        mapper.updateUpordown(student);
    }

    @Override
    public void upordownDelete(Long id, Long nowclass) {
        mapper.upordownDelete(id, nowclass);
    }

    @Override
    public List<Student> selectAllUpordown() {
        return mapper.selectAllUpordown();
    }

    @Override
    public Student getReceiptByRealName(String studentContent) {
        return mapper.getReceiptByRealName(studentContent);
    }

    @Override
    public void dropout(Long id) {
        mapper.dropout(id);
    }

    public PageResult queryChart(StudentQueryObject qo) {
        List<StudentChart> listData = mapper.queryChart(qo);
        Long count = mapper.getChartCount(qo);
        return new PageResult(count, listData);
    }


    public List<StudentChart> selectAllChart(StudentQueryObject qo) {
        return mapper.selectAllChart(qo);
    }

}
