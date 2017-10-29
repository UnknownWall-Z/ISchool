package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.SchoolClientQueryObject;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.service.ISchoolLinkManService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.SchoolClient;
import org.memory.ischool.service.ISchoolClientService;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SchoolClientController extends BaseController {

	@Autowired
	private ISchoolClientService service;

	@Autowired
	private IEmployeeService employeeService;

	@Autowired
	private ISchoolLinkManService linkManService;


	@RequiresPermissions("schoolClient:view")
	@PermissionName("学校客户页面")
	@RequestMapping("/schoolClient_view")
	public String schoolClient() {
		return "schoolClient";
	}

	@RequestMapping("/schoolClient_list")
	@ResponseBody
	public PageResult list(SchoolClientQueryObject qo) {
		System.out.println(qo);
		Employee emp = (Employee) SecurityUtils.getSubject().getPrincipal();
		if (emp.getAdmin()) {
			return service.pageQuery(qo);
		}
		//一般员工的userId= 他的id
		if (qo.getUserId() == null) {
			//设置当前userId为当前用户
			qo.setUserId(emp.getId());
		}
		return service.pageQuery(qo);
	}

	@RequestMapping("/schoolClient_listAll")
	@ResponseBody
	public List<SchoolClient> listAll() {
		return service.selectAll();
	}

	@RequestMapping("/schoolClient_getById")
	@ResponseBody
	public SchoolClient getById(Long id) {
		return service.selectByPrimaryKey(id);
	}

	@RequiresPermissions("schoolClient:save")
	@PermissionName("学校客户保存")
	@RequestMapping("/schoolClient_save")
	@ResponseBody
	public AjaxResult save(SchoolClient r) {
		try {
			service.insert(r);
			return new AjaxResult(true, "学校客户保存成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户保存失败");
		}
	}

	@RequiresPermissions("schoolClient:delete")
	@PermissionName("学校客户删除")
	@RequestMapping("/schoolClient_delete")
	@ResponseBody
	public AjaxResult del(Long id) {
		try {
			service.deleteByPrimaryKey(id);
			return new AjaxResult(true, "学校客户删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户删除失败");
		}
	}

	@RequiresPermissions("schoolClient:pushToPool")
	@PermissionName("学校客户放入资源池")
	@RequestMapping("/schoolClient_pushToPool")
	@ResponseBody
	public AjaxResult pushToPool(Long id) {
		try {
			service.pushToPool(id);
			return new AjaxResult(true, "学校客户放入资源池成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户放入资源池失败");
		}
	}

	@RequiresPermissions("schoolClient:edit")
	@PermissionName("学校客户编辑")
	@RequestMapping("/schoolClient_edit")
	@ResponseBody
	public AjaxResult edit(SchoolClient schoolClient) {
		try {
			service.updateByPrimaryKey(schoolClient);
			return new AjaxResult(true, "学校客户编辑成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户编辑失败");
		}
	}

	@RequiresPermissions("schoolClient:fileOut")
	@PermissionName("学校客户文件导出")
	@RequestMapping("/schoolClient_fileOut")
	@ResponseBody
	public void fileOut(HttpServletResponse response) {
		try {
			response.setHeader("Content-Disposition", "attachment;filename=schoolClient.xls");
			WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
			WritableSheet sheet = workbook.createSheet("学校客户", 0);
			sheet.addCell(new Label(0, 0, "编号"));
			sheet.addCell(new Label(1, 0, "名字"));
			sheet.addCell(new Label(2, 0, "地址"));
			sheet.addCell(new Label(3, 0, "重要度"));
			sheet.addCell(new Label(4, 0, "意向度"));
			sheet.addCell(new Label(5, 0, "学校电话"));
			sheet.addCell(new Label(6, 0, "意向学科"));
			sheet.addCell(new Label(7, 0, "联系人"));
			sheet.addCell(new Label(8, 0, "营销人员"));
			sheet.addCell(new Label(9, 0, "跟进人员"));
			sheet.addCell(new Label(10, 0, "上次跟新时间"));
			sheet.addCell(new Label(11, 0, "计划下次跟进时间"));
			sheet.addCell(new Label(12, 0, "跟进状态"));
			sheet.addCell(new Label(13, 0, "客户状态"));
			List<SchoolClient> schoolClients = service.selectAll();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (int i = 0; i < schoolClients.size(); i++) {
				SchoolClient schoolClient = schoolClients.get(i);
				sheet.addCell(new Label(0, i + 1, schoolClient.getId().toString()));
				sheet.addCell(new Label(1, i + 1, schoolClient.getName()));
				sheet.addCell(new Label(2, i + 1, schoolClient.getLocation()));
				sheet.addCell(new Label(3, i + 1, schoolClient.getImportance()));
				sheet.addCell(new Label(4, i + 1, schoolClient.getWantedLevel()));
				sheet.addCell(new Label(5, i + 1, schoolClient.getSchooleTel()));
				sheet.addCell(new Label(6, i + 1, schoolClient.getWantedSubject()));

				sheet.addCell(new Label(7, i + 1, schoolClient.getLinkmenName()));
				if (schoolClient.getRecruitre() != null) {
					sheet.addCell(new Label(8, i + 1, schoolClient.getRecruitre().getUsername()));
				}
				if (schoolClient.getTracer() != null) {
					sheet.addCell(new Label(9, i + 1, schoolClient.getTracer().getUsername()));
				}
				if (schoolClient.getLastTraceTime() != null) {
					sheet.addCell(new Label(10, i + 1, sdf.format(schoolClient.getLastTraceTime())));
				}
				if (schoolClient.getNextTraceTime() != null) {
					sheet.addCell(new Label(11, i + 1, sdf.format(schoolClient.getNextTraceTime())));
				}
				sheet.addCell(new Label(12, i + 1, schoolClient.getClientState() ? "已跟进" : "待跟进"));
				sheet.addCell(new Label(13, i + 1, schoolClient.getState()));
			}
			workbook.write();
			workbook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequiresPermissions("schoolClient:fileIn")
	@PermissionName("学校客户文件导入")
	@RequestMapping("/schoolClient_fileIn")
	@ResponseBody
	public AjaxResult fileIn(MultipartFile file) {
		try {
			Workbook workbook = Workbook.getWorkbook(file.getInputStream());
			Sheet sheet = workbook.getSheet(0);
			int rows = sheet.getRows();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (int i = 1; i < rows; i++) {
				SchoolClient schoolClient = new SchoolClient();
				schoolClient.setId(Long.valueOf(sheet.getCell(1, i).getContents()));
				schoolClient.setName(sheet.getCell(2, i).getContents());
				schoolClient.setLocation(sheet.getCell(3, i).getContents());
				schoolClient.setImportance(sheet.getCell(4, i).getContents());
				schoolClient.setWantedLevel(sheet.getCell(5, i).getContents());
				schoolClient.setSchooleTel(sheet.getCell(6, i).getContents());
				schoolClient.setWantedSubject(sheet.getCell(7, i).getContents());
				schoolClient.setLinkmen(linkManService.getByName(sheet.getCell(8, i).getContents()));
				schoolClient.setRecruitre(employeeService.getEmployeeByName(sheet.getCell(9, i).getContents()));
				schoolClient.setTracer(employeeService.getEmployeeByName(sheet.getCell(10, i).getContents()));
				schoolClient.setLastTraceTime(sdf.parse(sheet.getCell(11, i).getContents()));
				schoolClient.setNextTraceTime(sdf.parse(sheet.getCell(12, i).getContents()));
				schoolClient.setClientState("待跟进".equals(sheet.getCell(13, i).getContents()) ? false : true);
				schoolClient.setState(sheet.getCell(14, i).getContents());

				service.insert(schoolClient);
			}
			return new AjaxResult(true, "学校客户导入成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult(false, "学校客户导入失败");
		}
	}


}
