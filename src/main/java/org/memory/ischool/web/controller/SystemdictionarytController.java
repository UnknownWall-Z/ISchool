package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Systemdictionary;
import org.memory.ischool.domain.Systemdictionaryitem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.service.ISystemdictionaryService;
import org.memory.ischool.util.PermissionName;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SystemdictionarytController extends BaseController{

    @Autowired
    private ISystemdictionaryService service;

    @RequiresPermissions("Systemdictionary:view")
    @PermissionName("字典页面")
    @RequestMapping("/systemdictionary_view")
    public String emp(){
        return "systemdictionary";
    }
    
    @RequestMapping("/systemdictionary_listAll")
    @ResponseBody
    public List<Systemdictionary> listAll(){
        return service.selectAll();
    }


    @RequestMapping("/systemdictionary_querySsnByItemParentSn")
    @ResponseBody
    public List<Systemdictionaryitem> listItem(String ssn){
        return service.querySsnByItemParentSn(ssn);
    }
}
