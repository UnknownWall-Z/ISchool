package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Department;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Role;
import org.memory.ischool.query.EmployeeQueryObject;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class EmployeeController extends BaseController{

    @Autowired
    private IEmployeeService service;

    @RequiresPermissions("employee:emp")
    @PermissionName("员工页面")
    @RequestMapping("/employee_view")
    public String emp(){
        System.out.println(new Date());
        return "employee";
    }

    @RequestMapping("/employee_list")
    @ResponseBody
    public PageResult list(EmployeeQueryObject qo){
        return service.pageQuery(qo);
    }


    @RequestMapping("/employee_listAll")
    @ResponseBody
    public  List<Employee> listAll(){
        return service.selectAll();
    }


    @RequestMapping("/employee_getRoles")
    @ResponseBody
    public List<Long> getRolesId(Long id){
        return service.getRolesId(id);
    }

    @RequiresPermissions("employee:save")
    @PermissionName("员工保存")
    @RequestMapping("/employee_save")
    @ResponseBody
    public AjaxResult save(Employee emp){
        try{
            emp.setState(true);
            service.insert(emp);
            return new AjaxResult(true,"员工保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"员工保存失败");
        }
    }
//    @RequestMapping("/employee_add")
//    public void add() {
//        Employee emp = new Employee();
//        Department department = new Department();
//        Role role = new Role();
//        role.setId(10L);
//        List<Role> list = new ArrayList<>();
//        list.add(role);
//        emp.setRoles(list);
//        department.setId(93L);
//        emp.setDept(department);
//        emp.setAdmin(false);
//        emp.setState(true);
//        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        try{
//            Date myDate1 = dateFormat.parse("2016-09-01");
//            emp.setInputtime(myDate1);
//        }catch (Exception e){
//        }
//        emp.setPassword("111");
//        emp.setTel("186……*");
//        emp.setEmail("Tesla@GEmail");
//        emp.setRealname("尼古拉特斯拉");
//        emp.setUsername("Tesla");
//        service.insert(emp);
//    }

    @RequiresPermissions("employee:edit")
    @PermissionName("员工编辑")
    @RequestMapping("/employee_edit")
    @ResponseBody
    public AjaxResult edit(Employee emp){
        try{
            service.updateByPrimaryKey(emp);
            return new AjaxResult(true,"员工编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"员工编辑失败");
        }
    }


    @RequiresPermissions("employee:changState")
    @PermissionName("员工离职")
    @RequestMapping("/employee_changState")
    @ResponseBody
    public AjaxResult changState(Long id){
        try{
            service.changState(id);
            return new AjaxResult(true,"离职员工成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"离职员工失败");
        }
    }


    @RequiresPermissions("employee:fileOut")
    @PermissionName("员工文件导出")
    @RequestMapping("/employee_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=employee.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("员工",0);
            sheet.addCell(new Label(0,0,"用户名"));
            sheet.addCell(new Label(1,0,"真实姓名"));
            sheet.addCell(new Label(2,0,"电话"));
            sheet.addCell(new Label(3,0,"部门"));
            sheet.addCell(new Label(4,0,"邮箱"));
            sheet.addCell(new Label(5,0,"入职时间"));
            sheet.addCell(new Label(6,0,"状态"));
            List<Employee> employees = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 0; i < employees.size() ; i++) {
                Employee employee = employees.get(i);
                sheet.addCell(new Label(0,i+1,employee.getUsername()));
                sheet.addCell(new Label(1,i+1,employee.getRealname()));
                sheet.addCell(new Label(2,i+1,employee.getTel()));
                if(employee.getDept() != null){
                    sheet.addCell(new Label(3,i+1,employee.getDept().getName()));
                }
                sheet.addCell(new Label(4,i+1,employee.getEmail()));
                sheet.addCell(new Label(5,i+1,sdf.format(employee.getInputtime())));
                sheet.addCell(new Label(6,i+1,employee.getState()?"在职":"离职"));
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequiresPermissions("employee:fileIn")
    @PermissionName("员工文件导入")
    @RequestMapping("/employee_fileIn")
    @ResponseBody
    public AjaxResult fileIn(MultipartFile file){
        try{
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i < rows; i++) {
                Employee emp = new Employee();
                emp.setUsername(sheet.getCell(0,i).getContents());
                emp.setRealname(sheet.getCell(1,i).getContents());
                emp.setTel(sheet.getCell(2,i).getContents());
                Department dept = service.getDeptByName(sheet.getCell(3,i).getContents());
                emp.setDept(dept);
                emp.setEmail(sheet.getCell(4,i).getContents());
                emp.setInputtime(sdf.parse(sheet.getCell(5,i).getContents()));

                String contents = sheet.getCell(6,i).getContents();
                boolean state = true;
                if("离职".equals(contents)){
                    state = false;
                }
                emp.setState(state);
                service.insert(emp);
            }
            return new AjaxResult(true,"员工导入成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"员工导入失败");
        }
    }



}
