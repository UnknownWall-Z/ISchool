package org.memory.ischool.service.impl;

import org.apache.shiro.SecurityUtils;
import org.memory.ischool.domain.SchoolClientTransferLog;
import org.memory.ischool.mapper.EmployeeMapper;
import org.memory.ischool.mapper.SchoolClientMapper;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.ISchoolClientTransferLogService;
import org.memory.ischool.vo.SchoolTransferLogVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.SchoolClient;
import org.memory.ischool.mapper.SchoolClientTransferLogMapper;
import org.memory.ischool.query.SchoolClientTransferLogQueryObject;

import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Service
public class SchoolClientTransferLogServiceImpl implements ISchoolClientTransferLogService {

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private SchoolClientTransferLogMapper mapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private SchoolClientMapper clientMapper;

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        return mapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(SchoolClientTransferLog log) {

        int count = mapper.insert(log);
        return count;
    }

    @Override
    public SchoolClientTransferLog selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<SchoolClientTransferLog> selectAll() {
        return mapper.selectAll();
    }

    @Override
    public int updateByPrimaryKey(SchoolClientTransferLog log) {
        return mapper.updateByPrimaryKey(log);
    }

    @Override
    public PageResult pageQuery(SchoolClientTransferLogQueryObject qo) {
        List<SchoolClientTransferLog> listData = mapper.getListData(qo);
        Long totalCount = mapper.getTotalCount(qo);
        return new PageResult(totalCount, listData);
    }

    @Override
    public void audit(SchoolClientTransferLog log) {
        //设置
        /*SchoolClientTransferLog transferLog = mapper.selectByPrimaryKey(r.getId());
		SchoolClient clientSchool = transferLog.getClientSchool();
		clientSchool.setState("正常");
		clientMapper.updateByPrimaryKey(clientSchool);*/

        //审核失败--将转交记录-结果-更新为审核失败...将clientschool的状态改成"审核不通过"
        SchoolClient schoolClient = clientMapper.selectByPrimaryKey(log.getClientSchool().getId());
        if (log.getResult()) {
            //成功的话.将lient的tracer id设置为log中的in
            if (log.getInEmp().getId() != null) {
                schoolClient.setTracer(employeeMapper.selectByPrimaryKey(log.getInEmp().getId()));
            } else {
                schoolClient.setTracer(null);
            }
            clientMapper.updateByPrimaryKey(schoolClient);
        }
        clientMapper.auditFaile(log.getClientSchool().getId());
        Employee inEmp = log.getInEmp();
        schoolClient.setTracer(inEmp);
        log.setAuditTime(new Date());
        Employee manager = (Employee) SecurityUtils.getSubject().getPrincipal();
        log.setManager(manager);
        log.setAuditState(true);
        mapper.audit(log);

    }

    @Override
    public void takeFromPool(Long clientId) {
        Employee principal = (Employee) SecurityUtils.getSubject().getPrincipal();
        //接手一个任务.还要改变client 的状态
        SchoolClient client = clientMapper.selectByPrimaryKey(clientId);
        SchoolClientTransferLog log = new SchoolClientTransferLog();
        log.setOutEmp(client.getTracer());
        //改变client的tracer为当前用户
        client.setState("待审核");
        client.setTracer(principal);
        clientMapper.updateByPrimaryKey(client);

        log.setInEmp(principal);
        log.setInputTime(new Date());
        log.setAuditState(false);

        mapper.insert(log);
    }

    @Override
    public void distribute(SchoolTransferLogVO logsVO) {
        List<SchoolClient> clients = logsVO.getClientSchools();
        for (SchoolClient client : clients) {
            client = clientMapper.selectByPrimaryKey(client.getId());

            SchoolClientTransferLog log = new SchoolClientTransferLog();
            log.setClientSchool(client);
            //每一个学校客户的分配要设置:审核通过.
            log.setAuditState(logsVO.getAuditState());
            //分配的员工
            //Employee inEmp = employeeMapper.selectByPrimaryKey(logsVO.getInEmp().getId());
            log.setInEmp(logsVO.getInEmp());
            //审核时间
            log.setAuditTime(new Date());
            //备注
            log.setRemark(logsVO.getRemark());
            log.setInputTime(new Date());
            //审核人
            Employee manager = (Employee) SecurityUtils.getSubject().getPrincipal();
            log.setManager(manager);

            client.setTracer(logsVO.getInEmp());
            client.setState("正常");
            clientMapper.distributeUpdate(client);


            //日志新增一条
            mapper.insert(log);
        }
    }


}
