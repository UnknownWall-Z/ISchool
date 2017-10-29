package org.memory.ischool.service;

import org.memory.ischool.domain.Studentclass;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.StudentClassQueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IStudentclassService{
    int deleteByPrimaryKey(Long id);

    int insert(Studentclass studentclass);

    Studentclass selectByPrimaryKey(Long id);

    List<Studentclass> selectAll();

    int updateByPrimaryKey(Studentclass studentclass);

    PageResult pageQuery(StudentClassQueryObject qo);

    Long  getEmployeeById(Long id);

    void changState(Long id);
}
