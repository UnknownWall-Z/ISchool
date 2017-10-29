package org.memory.ischool.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.memory.ischool.domain.Information;
import org.memory.ischool.service.IInformationService;
import org.memory.ischool.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.util.DatabaseBackAndRestore;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zmh on 2017/8/24.
 */
@Controller
public class IndexController {

    @Autowired
    private IMenuService service;

    @Autowired
    private IInformationService information;


    @RequestMapping("/index")
    public String index(HttpServletRequest request,String module){

        String url = "/dasssss/responsive_table.html";
        String urlByModule = service.getUrl(module);

        Subject subject = SecurityUtils.getSubject();
        Employee employee = (Employee) subject.getPrincipal();

        Information information = this.information.get(employee.getId());


        if(urlByModule!=null){
            url=urlByModule;
        }

        request.setAttribute("url",url);
        request.setAttribute("user",information);
        return "main";
    }

    @RequestMapping("/backup")
    @ResponseBody
    public void backup(){
        DatabaseBackAndRestore.backup();
    }
}
