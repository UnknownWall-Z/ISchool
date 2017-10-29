package org.memory.ischool.service;

import org.memory.ischool.domain.Student;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.StudentQueryObject;
import org.memory.ischool.domain.StudentChart;
import org.memory.ischool.query.QueryObject;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */

public interface IStudentService {

    int deleteByPrimaryKey(Long id);

    int insert(Student student);

    Student selectByPrimaryKey(Long id);

    List<Student> selectAll();

    int updateByPrimaryKey(Student student);

    PageResult pageQuery(QueryObject qo);

    void changeClass(Long id, Long classname, Long newclass);

    void updateUpordown(Student student);

    void upordownDelete(Long id,Long nowclass);

    List<Student> selectAllUpordown();

    Student getReceiptByRealName(String studentContent);

    void dropout(Long id);

    PageResult queryChart(StudentQueryObject qo);

	List<StudentChart> selectAllChart(StudentQueryObject qo);
}
