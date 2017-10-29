package org.memory.ischool.web.controller;

import org.memory.ischool.domain.Student;
import org.memory.ischool.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wall on 2017/8/31.
 */
@Controller
public class ShowEmployee {

    @Autowired
    private IStudentService service;

    @RequestMapping("/show_view")
    public String show(HttpServletRequest request, Long id){
        if(id==null){
            id=13L;
        }
        Student student = service.selectByPrimaryKey(id);
        request.setAttribute("student",student);
        return "showEmployee";
    }

    @RequestMapping("/showCompany_view")
    public String showCompany(HttpServletRequest request, Long id){
        if(id==null){
            id=13L;
        }
        Student student = service.selectByPrimaryKey(id);
        request.setAttribute("student",student);
        return "showCompany";
    }
    @RequestMapping("/showAway_view")
    public String showAway(HttpServletRequest request, Long id){
        if(id==null){
            id=13L;
        }
        Student student = service.selectByPrimaryKey(id);
        request.setAttribute("student",student);
        return "showAway";
    }

}
