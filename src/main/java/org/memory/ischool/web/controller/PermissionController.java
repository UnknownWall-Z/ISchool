package org.memory.ischool.web.controller;

import org.memory.ischool.domain.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.service.IPermissionService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class PermissionController extends BaseController{

    @Autowired
    private IPermissionService service;

    @RequestMapping("/permission")
    public void emp(){
        service.reload();
    }

    @RequestMapping("/permission_listAll")
    @ResponseBody
    public List<Permission> listAll(){
        return service.selectAll();
    }

}
