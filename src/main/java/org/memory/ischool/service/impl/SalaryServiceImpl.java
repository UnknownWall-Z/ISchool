package org.memory.ischool.service.impl;

import org.memory.ischool.mapper.SalaryMapper;
import org.memory.ischool.page.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Salary;
import org.memory.ischool.query.SalaryQueryObject;
import org.memory.ischool.service.ISalaryService;
import org.memory.ischool.vo.BalanceVO;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SalaryServiceImpl implements ISalaryService {

    @Autowired
    private SalaryMapper mapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Salary salary) {
        return mapper.insert(salary);
    }

    @Override
    public Salary selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Salary> selectAll() {

        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(Salary salary) {

        return mapper.updateByPrimaryKey(salary);
    }

    @Override
    public PageResult pageQuery(SalaryQueryObject qo) {

        Long count = mapper.queryPageCount(qo);

        if (count == 0) {
            return new PageResult(count, Collections.EMPTY_LIST);
        }

        return new PageResult(count, mapper.queryPageResult(qo));
    }

    @Override
    public void balance(Integer year, Integer month) {
        List<BalanceVO> balances = mapper.balance(year, month);
        for (BalanceVO balance : balances) {
            Salary salary = new Salary();
            salary.setBalancedate(new Date());
            Employee employee = new Employee();
            employee.setId(balance.getEmployeeId());
            salary.setEmployee(employee);
            salary.setIndays(balance.getIndays());
            salary.setYear(year);
            salary.setMonth(month);
            salary.setSalary(balance.getBasicwage().multiply(new BigDecimal(balance.getIndays())));
            Salary sal = mapper.selectbyline(year,month,balance.getEmployeeId());
            if(sal != null){
                mapper.updateByPrimaryKey(salary);
            }else {
                mapper.insert(salary);
            }
        }
    }
}




