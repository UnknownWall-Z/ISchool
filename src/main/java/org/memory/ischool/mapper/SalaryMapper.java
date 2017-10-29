package org.memory.ischool.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.memory.ischool.domain.Salary;
import org.memory.ischool.query.SalaryQueryObject;
import org.memory.ischool.vo.BalanceVO;

public interface SalaryMapper {

    int insert(Salary salary);

    int deleteByPrimaryKey(Long id);

    Salary selectByPrimaryKey(Long id);

    List<Salary> selectAll();

    int updateByPrimaryKey(Salary record);

    Long queryPageCount(SalaryQueryObject qo);

    List<Salary> queryPageResult(SalaryQueryObject qo);

    List<BalanceVO> balance(@Param("year")Integer year, @Param("month")Integer month);

    Salary selectbyline(@Param("year")Integer year,@Param("month")Integer month,@Param("employeeId") Long employeeId);
}