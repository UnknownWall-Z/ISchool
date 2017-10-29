package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Timetable;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.query.TimetableQueryObject;
import org.memory.ischool.service.ITimetableService;
import org.memory.ischool.service.ITimetableitemService;
import org.memory.ischool.util.PermissionName;

import java.util.List;

@Controller
public class TimetableController extends BaseController{

    @Autowired
    private ITimetableService service;


    @Autowired
    private ITimetableitemService itemService;


    @RequiresPermissions("timetabledictionary:view")
    @PermissionName("课程表页面")
    @RequestMapping("/timetabledictionary_view")
    public String timetabledictionary(){
        return "timetabledictionary";
    }

    @RequestMapping("/timetabledictionary_list")
    @ResponseBody
    public PageResult list(TimetableQueryObject qo){
        PageResult result = service.pageQuery(qo);
        return result;

    }

    @RequestMapping("/timetabledictionary_listAll")
    @ResponseBody
    public List<Timetable> listAll(){
        return service.selectAll();
    }

    @RequiresPermissions("timetabledictionary:save")
    @PermissionName("课程表保存")
    @RequestMapping("/timetabledictionary_save")
    @ResponseBody
    public AjaxResult save(Timetable timetabledictionary){
        try{
            service.insert(timetabledictionary);
            return new AjaxResult(true,"课程表保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"课程表保存失败");
        }
    }




    @RequiresPermissions("timetabledictionary:edit")
    @PermissionName("课程表编辑")
    @RequestMapping("/timetabledictionary_edit")
    @ResponseBody
    public AjaxResult edit(Timetable timetabledictionary){
        try{
            service.updateByPrimaryKey(timetabledictionary);
            return new AjaxResult(true,"课程表编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"课程表编辑失败");
        }
    }

    /*@RequiresPermissions("timetabledictionary:changState")
    @PermissionName("设置使用状态")
    @RequestMapping("/timetabledictionary_changState")
    @ResponseBody
    public AjaxResult changState(Long id){
        try{
            service.changState(id);
            return new AjaxResult(true,"状态设置成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"状态设置失败");
        }
    }*/

}
