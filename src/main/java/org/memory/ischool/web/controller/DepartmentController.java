package org.memory.ischool.web.controller;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IDepartmentService;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.Department;
import org.memory.ischool.query.DepartmentQueryObject;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class DepartmentController extends BaseController {

    @Autowired
    private IDepartmentService service;

    @Autowired
    private IEmployeeService employeeService;

    @RequestMapping("/department_view")
    @RequiresPermissions("department:view")
    @PermissionName("部门页面")
    public String emp() {
        return "department";
    }

    @RequestMapping("/department_list")
    @ResponseBody
    @RequiresPermissions("department:list")
    @PermissionName("部门列表")
    public PageResult list(DepartmentQueryObject qo) {

        return service.pageQuery(qo);
    }

    @RequestMapping("/department_listAll")
    @ResponseBody
    public List<Department> listAll() {
        return service.selectAll();
    }

    @RequestMapping("/department_save")
    @ResponseBody
    @RequiresPermissions("department:save")
    @PermissionName("部门保存")
    public AjaxResult save(Department dept) {
        try {
            service.insert(dept);
            return new AjaxResult(true, "部门保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "部门保存失败");
        }
    }

    @RequestMapping("/department_edit")
    @ResponseBody
    @RequiresPermissions("department:edit")
    @PermissionName("部门编辑")
    public AjaxResult edit(Department dept) {
        try {
            service.updateByPrimaryKey(dept);
            return new AjaxResult(true, "部门编辑成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "部门编辑失败");
        }
    }

    @RequestMapping("/department_changState")
    @ResponseBody
    @RequiresPermissions("department:changState")
    @PermissionName("部门停用")
    public AjaxResult changState(Long id) {
        try {
            service.changState(id);
            return new AjaxResult(true, "部门停用成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "部门停用失败");
        }
    }


    @RequiresPermissions("department:restoreChangState")
    @PermissionName("部门停用")
    @RequestMapping("/department_restoreChangState")
    @ResponseBody
    public AjaxResult restoreChangState(Long id) {
        try {
            service.restoreChangState(id);
            return new AjaxResult(true, "部门恢复成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "部门恢复失败");
        }
    }

    @RequestMapping("/department_fileOut")
    @ResponseBody
    @RequiresPermissions("department:fileOut")
    @PermissionName("部门文件导出")
    public void fileOut(HttpServletResponse response) {
        try {
            response.setHeader("Content-Disposition", "attachment;filename=department.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("部门", 0);
            sheet.addCell(new Label(0, 0, "部门编号"));
            sheet.addCell(new Label(1, 0, "部门名称"));
            sheet.addCell(new Label(2, 0, "部门经理"));
            sheet.addCell(new Label(3, 0, "上级部门"));
            sheet.addCell(new Label(4, 0, "状态"));
            List<Department> departments = service.selectAll();
            for (int i = 0; i < departments.size(); i++) {
                Department department = departments.get(i);
                sheet.addCell(new Label(0, i + 1, department.getSn()));
                sheet.addCell(new Label(1, i + 1, department.getName()));
                if (department.getManage() != null) {
                    sheet.addCell(new Label(2, i + 1, department.getManage().getRealname()));
                }
                if (department.getParent() != null) {
                    sheet.addCell(new Label(3, i + 1, department.getParent().getName()));
                }
                sheet.addCell(new Label(4, i + 1, department.getState() ? "正常" : "停用"));
            }
            workbook.write();
            workbook.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

/*
    @RequestMapping("/department_fileIn")
    @ResponseBody
    @RequiresPermissions("department:fileIn")
    @PermissionName("部门文件导入")
    public AjaxResult fileIn(MultipartFile file) {
        try {
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            for (int i = 1; i < rows; i++) {
                Department department = new Department();
                //department.setManage(new Employee());
                department.setParent(new Department());

                department.setSn(sheet.getCell(0, i).getContents());
                department.setName(sheet.getCell(1, i).getContents());
                if (StringUtils.trim(sheet.getCell(2, i).getContents()) != "") {
                    department.setManage(employeeService.getEmployeeByRealName(sheet.getCell(2, i).getContents()));
                }
                if (StringUtils.trim(sheet.getCell(3, i).getContents()) != "") {
                    department.getParent().setName(sheet.getCell(3, i).getContents());
                }
                String contents = sheet.getCell(4, i).getContents();
                boolean state = true;
                if ("停用".equals(contents)) {
                    state = false;
                }
                department.setState(state);

                service.insert(department);
            }
            workbook.close();
            return new AjaxResult(true, "部门导入成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "部门导入失败");
        }
    }*/

}
