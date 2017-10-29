package org.memory.ischool.service.impl;

import org.memory.ischool.domain.StudentLoss;
import org.memory.ischool.mapper.StudentLossMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IStudentLossService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class StudentLossServiceImpl implements IStudentLossService {

    @Override
    public int insert(StudentLoss studentLoss) {
        int count = mapper.insert(studentLoss);
        return count;
    }

    @Autowired
    private StudentLossMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public StudentLoss selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<StudentLoss> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(StudentLoss emp) {
        return mapper.updateByPrimaryKey(emp);
    }

    @Override
    public PageResult pageQuery(QueryObject qo) {
        List<StudentLoss> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount,listData);
    }

}
