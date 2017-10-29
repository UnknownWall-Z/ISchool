package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Systemdictionaryitem;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.service.ISystemdictionaryitemService;
import org.memory.ischool.util.PermissionName;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SystemdictionaryitemController extends BaseController{

    @Autowired
    private ISystemdictionaryitemService service;


    @RequiresPermissions("systemdictionaryitem:view")
    @PermissionName("字典明细页面")
    @RequestMapping("/systemdictionaryitem_view")
    public String emp(){
        return "systemdictionaryitem";
    }

    @RequestMapping("/systemdictionaryitem_list")
    @ResponseBody
    public List<Systemdictionaryitem> list(Long sid){
        return service.queryBysystemdictionId(sid);
    }


    @RequestMapping("/systemdictionaryitem_listAll")
    @ResponseBody
    public List<Systemdictionaryitem> listAll(){
        return service.selectAll();
    }

    @RequiresPermissions("systemdictionaryitem:save")
    @PermissionName("字典明细保存")
    @RequestMapping("/systemdictionaryitem_save")
    @ResponseBody
    public AjaxResult save(Systemdictionaryitem systemdictionaryitem){
        try{
            service.insert(systemdictionaryitem);
            return new AjaxResult(true,"字典明细保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"字典明细保存失败");
        }
    }

    @RequiresPermissions("systemdictionaryitem:edit")
    @PermissionName("字典明细编辑")
    @RequestMapping("/systemdictionaryitem_edit")
    @ResponseBody
    public AjaxResult edit(Systemdictionaryitem systemdictionaryitem){
        try{
            service.updateByPrimaryKey(systemdictionaryitem);
            return new AjaxResult(true,"字典明细编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"字典明细编辑失败");
        }
    }

    @RequiresPermissions("systemdictionaryitem:changState")
    @PermissionName("禁用字典明细")
    @RequestMapping("/systemdictionaryitem_changState")
    @ResponseBody
    public AjaxResult changState(Long sid){
        try{
            service.deleteByPrimaryKey(sid);
            return new AjaxResult(true,"字典明细禁用成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"字典明细禁用失败");
        }
    }
}
