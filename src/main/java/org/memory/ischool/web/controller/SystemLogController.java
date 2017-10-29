package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SystemLogQueryObject;
import org.memory.ischool.service.ISystemlogService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SystemLogController extends BaseController{

    @Autowired
    private ISystemlogService service;

    @RequiresPermissions("systemlog:view")
    @PermissionName("系统日志页面")
    @RequestMapping("/systemlog_view")
    public String systemlog(){
        return "systemlog";
    }

    @RequestMapping("/systemlog_list")
    @ResponseBody
    public PageResult list(SystemLogQueryObject qo){
        PageResult result = service.pageQuery(qo);
        return result;
    }



    @RequiresPermissions("systemlog:delete")
    @PermissionName("系统日志删除")
    @RequestMapping("/systemlog_delete")
    @ResponseBody
    public AjaxResult del(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"系统日志删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"系统日志删除失败");
        }
    }

}
