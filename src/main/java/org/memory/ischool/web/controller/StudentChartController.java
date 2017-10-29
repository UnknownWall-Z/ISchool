package org.memory.ischool.web.controller;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.StudentQueryObject;
import org.memory.ischool.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.StudentChart;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class StudentChartController extends BaseController {

	@Autowired
	private IStudentService service;

	@RequiresPermissions("studentChart:view")
	@PermissionName("学员报表页面")
	@RequestMapping("/studentChart_view")
	public String studentChart() {
		return "studentChart";
	}

	@RequestMapping("/studentChart_list")
	@ResponseBody
	public PageResult list(StudentQueryObject qo) {

		return service.queryChart(qo);
	}

	/*@RequestMapping("/studentChart_listGroupType")
	@ResponseBody
	public List<String> listGroupType() {
		return StudentQueryObject.groupTypes;
	}*/


	@RequiresPermissions("studentChart:fileOut")
	@PermissionName("学员缴费报表文件导出")
	@RequestMapping("/studentChart_fileOut")
	@ResponseBody
	public void fileOut(HttpServletResponse response, StudentQueryObject qo) {
		try {
			System.out.println(qo);
			response.setHeader("Content-Disposition", "attachment;filename=studentChart.xls");
			WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
			WritableSheet sheet = workbook.createSheet("学员缴费报表", 0);
			sheet.addCell(new Label(0, 0, "分组类型"));
			sheet.addCell(new Label(1, 0, "已付总款"));
			sheet.addCell(new Label(2, 0, "未付总款"));
			sheet.addCell(new Label(3, 0, "未付清人数"));
			List<StudentChart> listChart = service.selectAllChart(qo);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < listChart.size(); i++) {
				StudentChart chart = listChart.get(i);
				sheet.addCell(new Label(0, i + 1, chart.getGroupType().toString()));
				sheet.addCell(new Label(1, i + 1, chart.getTotalPayedfee().toString()));
				sheet.addCell(new Label(2, i + 1, chart.getTotalOwnedfee().toString()));
				sheet.addCell(new Label(3, i + 1, chart.getTotalFinished().toString()));
			}
			workbook.write();
			workbook.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

