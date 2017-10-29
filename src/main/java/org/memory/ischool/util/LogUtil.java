package org.memory.ischool.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.aspectj.lang.JoinPoint;
import org.memory.ischool.domain.Systemlog;
import org.memory.ischool.service.ISystemlogService;
import org.memory.ischool.service.impl.SystemLogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

public class LogUtil {

    @Autowired
    private ISystemlogService service;


    public void writeLog(JoinPoint joinPoint) throws JsonProcessingException {
        Systemlog systemlog = new Systemlog();

        systemlog.setOptime(new Date());
        /*Object principal = SecurityUtils.getSubject().getPrincipal();
        if(principal != null){
            systemlog.setOpuser((Employee) principal);
        }*/
        String target = joinPoint.getTarget().getClass().getName();
        if(!SystemLogServiceImpl.class.getName().equals(target)){
            String methodName = joinPoint.getSignature().getName();
            systemlog.setFunction(target + ":" + methodName);

            Object[] args = joinPoint.getArgs();
            systemlog.setParams(new ObjectMapper().writeValueAsString(args));

            HttpServletRequest request = ThreadUtil.getRequest();

            if(request != null){
                systemlog.setOpip(request.getRemoteHost());
            }
            service.insert(systemlog);
        }



























    }

}
