package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.service.ISchoolLinkManService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.SchoolLinkMan;
import org.memory.ischool.util.PermissionName;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SchoolLinkManController extends BaseController {

	@Autowired
	private ISchoolLinkManService service;

	@RequiresPermissions("schoolLinkMan:view")
	@PermissionName("学校联系人页面")
	@RequestMapping("/schoolLinkMan_view")
	public String schoolLinkMan() {
		return "schoolLinkMan";
	}
/*
    @RequestMapping("/schoolLinkMan_list")
    @ResponseBody
    public PageResult list(QueryObject qo){

        return service.pageQuery(qo);
    }*/

	@RequestMapping("/schoolLinkMan_listAll")
	@ResponseBody
	public List<SchoolLinkMan> listAll() {
		return service.selectAll();
	}

	@RequiresPermissions("schoolLinkMan:save")
	@PermissionName("学校联系人保存")
	@RequestMapping("/schoolLinkMan_save")
	@ResponseBody
	public AjaxResult save(SchoolLinkMan r) {
		try {
			service.insert(r);
			return new AjaxResult(true, "学校联系人保存成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校联系人保存失败");
		}
	}

	@RequiresPermissions("schoolLinkMan:delete")
	@PermissionName("学校联系人删除")
	@RequestMapping("/schoolLinkMan_delete")
	@ResponseBody
	public AjaxResult del(Long id) {
		try {
			service.deleteByPrimaryKey(id);
			return new AjaxResult(true, "学校联系人删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校联系人删除失败");
		}
	}

	@RequiresPermissions("schoolLinkMan:edit")
	@PermissionName("学校联系人编辑")
	@RequestMapping("/schoolLinkMan_edit")
	@ResponseBody
	public AjaxResult edit(SchoolLinkMan schoolLinkMan) {
		try {
			service.updateByPrimaryKey(schoolLinkMan);
			return new AjaxResult(true, "学校联系人编辑成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校联系人编辑失败");
		}
	}

	@RequiresPermissions("schoolLinkMan:getBySchoolId")
	@PermissionName("按学校查询联系人")
	@RequestMapping("/schoolLinkMan_getBySchoolId")
	@ResponseBody
	public List<SchoolLinkMan> getBySchoolId(Long id) {
		return service.getBySchoolId(id);
	}


}
