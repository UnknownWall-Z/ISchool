package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.SchoolClientTransferLog;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.ISchoolClientTransferLogService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.memory.ischool.vo.SchoolTransferLogVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.query.SchoolClientTransferLogQueryObject;
import org.memory.ischool.service.ISchoolClientService;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SchoolClientTransferLogController extends BaseController {

	@Autowired
	private ISchoolClientTransferLogService service;
	@Autowired
	private ISchoolClientService clientService;

	@RequiresPermissions("schoolClientTransferLog:view")
	@PermissionName("学校客户转接日志页面")
	@RequestMapping("/schoolClientTransferLog_view")
	public String schoolClientTransferLog() {
		return "schoolClientTransferLog";
	}

	@RequestMapping("/schoolClientTransferLog_list")
	@ResponseBody
	public PageResult list(SchoolClientTransferLogQueryObject qo) {
//		PageResult result = service.pageQuery(qo);

		return service.pageQuery(qo);
	}

	@RequestMapping("/schoolClientTransferLog_listAll")
	@ResponseBody
	public List<SchoolClientTransferLog> listAll() {
		return service.selectAll();
	}


	@RequiresPermissions("schoolClientTransferLog:save")
	@PermissionName("学校客户转接日志保存")
	@RequestMapping("/schoolClientTransferLog_save")
	@ResponseBody
	public AjaxResult save(SchoolClientTransferLog r) {
		try {
			service.insert(r);
//			clientService.traced(r.getClient().getId(),new Date());
			return new AjaxResult(true, "学校客户转接日志保存成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户转接日志保存失败");
		}
	}
	@RequiresPermissions("schoolClientTransferLog:audit")
	@PermissionName("学校客户转接日志审核")
	@RequestMapping("/schoolClientTransferLog_audit")
	@ResponseBody
	public AjaxResult audit(SchoolClientTransferLog r) {
		try {
			service.audit(r);
			return new AjaxResult(true, "学校客户转接日志审核成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户转接日志审核失败");
		}
	}
	@RequiresPermissions("schoolClientTransferLog:takeFromPool")
	@PermissionName("学校客户转接日志")
	@RequestMapping("/schoolClientTransferLog_takeFromPool")
	@ResponseBody
	public AjaxResult takeFromPool(Long id) {
		try {
			System.out.println(id);
			service.takeFromPool(id);
			return new AjaxResult(true, "学校客户转接日志成功,请等待审核");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户转接日志失败");
		}
	}

	@RequiresPermissions("schoolClientTransferLog:delete")
	@PermissionName("学校客户转接日志删除")
	@RequestMapping("/schoolClientTransferLog_delete")
	@ResponseBody
	public AjaxResult del(Long id) {
		try {
			service.deleteByPrimaryKey(id);
			return new AjaxResult(true, "学校客户转接日志删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户转接日志删除失败");
		}
	}

	@RequiresPermissions("schoolClientTransferLog:edit")
	@PermissionName("学校客户转接日志编辑")
	@RequestMapping("/schoolClientTransferLog_edit")
	@ResponseBody
	public AjaxResult edit(SchoolClientTransferLog schoolClientTransferLog) {
		try {
			service.updateByPrimaryKey(schoolClientTransferLog);
			return new AjaxResult(true, "学校客户转接日志编辑成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户转接日志编辑失败");
		}
	}

	@RequiresPermissions("schoolClientTransferLog:distribute")
	@PermissionName("学校客户分配")
	@RequestMapping("/schoolClientTransferLog_distribute")
	@ResponseBody
	public AjaxResult distribute(SchoolTransferLogVO logsVO) {
		try {
			service.distribute(logsVO);

			System.out.println(logsVO);
			return new AjaxResult(true, "学校客户分配成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户分配失败");
		}
	}


}
