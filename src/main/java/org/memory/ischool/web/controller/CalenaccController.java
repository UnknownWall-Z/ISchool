package org.memory.ischool.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.memory.ischool.domain.Attendance;
import org.memory.ischool.service.IAttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.memory.ischool.domain.Employee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Controller
public class CalenaccController {
	@Autowired
    IAttendanceService calendarService;
	
	@RequestMapping("/calenacc_view")
	public String index(HttpServletRequest request) throws ParseException {
        Subject subject = SecurityUtils.getSubject();
        Employee employee = (Employee) subject.getPrincipal();
        List<Date> timeAll = calendarService.getTimeAll(employee.getId());
        request.setAttribute("dates",timeAll);
        return "calenacc";
	}

	@RequestMapping("/reload_view")
	public String reload(HttpServletRequest request) throws ParseException {
        Subject subject = SecurityUtils.getSubject();
        Employee employee = (Employee) subject.getPrincipal();
        Long id = employee.getId();

        Date endTime = calendarService.getEndTime(id);
        Date currentDate = new Date();

        HttpSession session = request.getSession();
        if(session.getAttribute("SESSION_IN_FLAG")==null){
            session.setAttribute("SESSION_IN_FLAG","flag");
                System.out.println(endTime+"---------------------------->");
                if(currentDate.getHours()<9){
                    Attendance attendance = new Attendance();
                    attendance.setEmployee(employee);
                    attendance.setCurrenttime(currentDate);
                    attendance.setSignintime(currentDate);
                    attendance.setOndutystate("正常打卡");
                    calendarService.insert(attendance);
                }else{
                    Attendance attendance = new Attendance();
                    attendance.setEmployee(employee);
                    attendance.setCurrenttime(currentDate);
                    attendance.setSignintime(currentDate);
                    attendance.setOndutystate("迟到");
                    System.out.println(attendance+"------------------------------->");
                    calendarService.insert(attendance);
                }
        }
        List<Date> timeAll = calendarService.getTimeAll(employee.getId());
        request.setAttribute("dates",timeAll);
		return "calenacc";
	}
}
