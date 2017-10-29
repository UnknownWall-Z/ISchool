package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.SchoolTraceLog;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SchoolTraceLogQueryObject;
import org.memory.ischool.service.ISchoolClientService;
import org.memory.ischool.service.ISchoolTraceLogService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SchoolTraceLogController extends BaseController {

	@Autowired
	private ISchoolTraceLogService service;
	@Autowired
	private ISchoolClientService clientService;

	@RequiresPermissions("schoolTraceLog:view")
	@PermissionName("学校客户日志页面")
	@RequestMapping("/schoolTraceLog_view")
	public String schoolTraceLog() {
		return "schoolTraceLog";
	}

	@RequestMapping("/schoolTraceLog_list")
	@ResponseBody
	public PageResult list(SchoolTraceLogQueryObject qo) {
//		PageResult result = service.pageQuery(qo);

		return service.pageQuery(qo);
	}

	@RequestMapping("/schoolTraceLog_listAll")
	@ResponseBody
	public List<SchoolTraceLog> listAll() {
		return service.selectAll();
	}


	@RequiresPermissions("schoolTraceLog:save")
	@PermissionName("学校客户日志保存")
	@RequestMapping("/schoolTraceLog_save")
	@ResponseBody
	public AjaxResult save(SchoolTraceLog r) {
		try {
			service.insert(r);
			clientService.traced(r.getClient().getId(),new Date());
			return new AjaxResult(true, "学校客户日志保存成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户日志保存失败");
		}
	}
	@RequiresPermissions("schoolTraceLog:audit")
	@PermissionName("学校客户日志审核")
	@RequestMapping("/schoolTraceLog_audit")
	@ResponseBody
	public AjaxResult audit(SchoolTraceLog r) {
		try {
			service.audit(r);
			return new AjaxResult(true, "学校客户日志审核成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户日志审核失败");
		}
	}

	@RequiresPermissions("schoolTraceLog:delete")
	@PermissionName("学校客户日志删除")
	@RequestMapping("/schoolTraceLog_delete")
	@ResponseBody
	public AjaxResult del(Long id) {
		try {
			service.deleteByPrimaryKey(id);
			return new AjaxResult(true, "学校客户日志删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户日志删除失败");
		}
	}

	@RequiresPermissions("schoolTraceLog:edit")
	@PermissionName("学校客户日志编辑")
	@RequestMapping("/schoolTraceLog_edit")
	@ResponseBody
	public AjaxResult edit(SchoolTraceLog schoolTraceLog) {
		try {
			service.updateByPrimaryKey(schoolTraceLog);
			return new AjaxResult(true, "学校客户日志编辑成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户日志编辑失败");
		}
	}


}
