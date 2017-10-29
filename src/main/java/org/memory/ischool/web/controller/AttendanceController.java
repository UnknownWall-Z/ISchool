package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Attendance;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IAttendanceService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.query.QueryObject;

import java.util.List;


@Controller
public class AttendanceController extends BaseController{

    @Autowired
    private IAttendanceService service;

    @RequiresPermissions("attendance:view")
    @PermissionName("考勤管理")
    @RequestMapping("/attendance_view")
    public String view(){
        return "attendance";
    }

    @RequestMapping("/attendance_list")
    @ResponseBody
    public PageResult list(QueryObject qo){
        return service.pageQuery(qo);
    }

    @RequestMapping("/attendance_listAll")
    @ResponseBody
    public List<Attendance> listAll(){
        return service.selectAll();
    }

    @RequiresPermissions("attendance:save")
    @RequestMapping("/attendance_save")
    @ResponseBody
    public AjaxResult save(Attendance attendance){
        try{
            service.insert(attendance);
            return new AjaxResult(true,"签到成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"签到失败");
        }
    }

    @RequiresPermissions("attendance:edit")
    @RequestMapping("/attendance_edit")
    @ResponseBody
    public AjaxResult edit(Attendance attendance){
        try{
            service.updateByPrimaryKey(attendance);
            return new AjaxResult(true,"签退或补签成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"签退或补签失败");
        }
    }

}
