package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Permission;
import org.memory.ischool.domain.Role;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.QueryObject;
import org.memory.ischool.service.IDepartmentService;
import org.memory.ischool.service.IRoleService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class RoleController extends BaseController{

    @Autowired
    private IRoleService service;

    @Autowired
    private IDepartmentService deptService;

    @RequiresPermissions("role:view")
    @PermissionName("角色页面")
    @RequestMapping("/role_view")
    public String role(){
        return "role";
    }

    @RequestMapping("/role_list")
    @ResponseBody
    public PageResult list(QueryObject qo){

        return service.pageQuery(qo);
    }

    @RequestMapping("/role_listAll")
    @ResponseBody
    public List<Role> listAll(){
        return service.selectAll();
    }

    @RequiresPermissions("role:save")
    @PermissionName("角色保存")
    @RequestMapping("/role_save")
    @ResponseBody
    public AjaxResult save(Role r){
        try{
            System.out.println(r.getPermissions().size());
            service.insert(r);
            return new AjaxResult(true,"角色保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"角色保存失败");
        }
    }

    @RequiresPermissions("role:delete")
    @PermissionName("角色删除")
    @RequestMapping("/role_delete")
    @ResponseBody
    public AjaxResult del(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"角色删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"角色删除失败");
        }
    }

    @RequiresPermissions("role:edit")
    @PermissionName("角色编辑")
    @RequestMapping("/role_edit")
    @ResponseBody
    public AjaxResult edit(Role role){
        try{
            service.updateByPrimaryKey(role);
            return new AjaxResult(true,"角色编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"角色编辑失败");
        }
    }

    @RequestMapping("/role_getPermissionsById")
    @ResponseBody
    public List<Permission> getPms(Long id){
        return service.getPms(id);
    }



}
