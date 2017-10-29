package org.memory.ischool.service;

import org.memory.ischool.domain.StudentLoss;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IStudentLossService {

    int deleteByPrimaryKey(Long id);

    int insert(StudentLoss studentLoss);

    StudentLoss selectByPrimaryKey(Long id);

    List<StudentLoss> selectAll();

    int updateByPrimaryKey(StudentLoss studentLoss);

    PageResult pageQuery(QueryObject qo);

}
