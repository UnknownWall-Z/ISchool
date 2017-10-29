package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Timetableitem;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.query.TimetableitemQueryObject;
import org.memory.ischool.service.ITimetableitemService;
import org.memory.ischool.util.PermissionName;

import java.util.List;

@Controller
public class TimetableitemController extends BaseController{

    @Autowired
    private ITimetableitemService service;

    @RequiresPermissions("timetableitemdictionary:view")
    @PermissionName("课程表明细页面")
    @RequestMapping("/timetableitemdictionary_view")
    public String timetableitemdictionary(){
        return "timetableitemdictionary";
    }

    @RequestMapping("/timetableitemdictionary_list")
    @ResponseBody
    public PageResult list(TimetableitemQueryObject qo){
       return service.pageQuery(qo);
    }
//    @RequiresPermissions("timetableitemdictionary:delete")
//    @PermissionName("系统日志删除")
//    @RequestMapping("/timetableitemdictionary_delete")
//    @ResponseBody
//    public AjaxResult del(Long id){
//        try{
//            service.deleteByPrimaryKey(id);
//            return new AjaxResult(true,"系统日志删除成功");
//        }catch (Exception e){
//            e.printStackTrace();
//            return new AjaxResult(false,"系统日志删除失败");
//        }
//    }


    @RequestMapping("/timetableitemdictionary_listAll")
    @ResponseBody
    public List<Timetableitem> listAll(){
        return service.selectAll();
    }

    @RequestMapping("/timetabledictionary_getTimetableitemByid")
    @ResponseBody
    public List<Timetableitem> getTimetableitemByid(Long id){
        return service.getTimetableitemById(id);
    }

    @RequiresPermissions("timetableitemdictionary:save")
    @PermissionName("课程表明细保存")
    @RequestMapping("/timetableitemdictionary_save")
    @ResponseBody
    public AjaxResult save(Timetableitem timetableitemdictionary){
        try{
            service.insert(timetableitemdictionary);
            return new AjaxResult(true,"课程表明细保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"课程表明细保存失败");
        }
    }

/*    @RequestMapping("/timetableitemdictionary_getTimetableitem")
    @ResponseBody
    public Long getTimetableitem(Long id){
        return service.getTimetableitemById(id);
    }*/


    @RequiresPermissions("timetableitemdictionary:edit")
    @PermissionName("课程表明细编辑")
    @RequestMapping("/timetableitemdictionary_edit")
    @ResponseBody
    public AjaxResult edit(Timetableitem timetableitemdictionary){
        try{
            service.updateByPrimaryKey(timetableitemdictionary);
            return new AjaxResult(true,"课程表明细编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"课程表明细编辑失败");
        }
    }

    /*@RequiresPermissions("timetableitemdictionary:changState")
    @PermissionName("设置使用状态")
    @RequestMapping("/timetableitemdictionary_changState")
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
