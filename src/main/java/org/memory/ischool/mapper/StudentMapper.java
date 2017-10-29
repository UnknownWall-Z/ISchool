package org.memory.ischool.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.domain.Student;
import org.memory.ischool.query.StudentQueryObject;
import org.memory.ischool.domain.StudentChart;
import org.memory.ischool.query.QueryObject;

public interface StudentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Student record);

    Student selectByPrimaryKey(Long id);

    List<Student> selectAll();

    int updateByPrimaryKey(Student record);

    Long getTotalCount(QueryObject qo);

    List<Student> getListData(QueryObject qo);

    void changeClass(@Param("id") Long id,@Param("oldclass") Long classname, @Param("newclass") Long newclass);

    void updateUpordown(Student student);

    void upordownDelete(@Param("id") Long id,@Param("nowclass") Long nowclass);

    List<Student> selectAllUpordown();

    Student getReceiptByRealName(String studentContent);

    void dropout(Long id);

	List<StudentChart> queryChart(StudentQueryObject qo);

	Long getChartCount(StudentQueryObject qo);

	List<StudentChart> selectAllChart(StudentQueryObject qo);
}