package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Salary;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.ISalaryService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.query.SalaryQueryObject;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class SalaryController extends BaseController{

    @Autowired
    private ISalaryService service;

    @RequestMapping("/salary_view")
    @RequiresPermissions("salary:view")
    @PermissionName("工资页面")
    public String salary(){
        return "salary";
    }


    @RequestMapping("/salary_list")
    @ResponseBody
    @RequiresPermissions("salary:list")
    @PermissionName("工资列表")
    public PageResult list(SalaryQueryObject qo){

        return service.pageQuery(qo);
    }


    @RequestMapping("/salary_edit")
    @ResponseBody
    @RequiresPermissions("salary:edit")
    @PermissionName("编辑工资")
    public AjaxResult edit(Salary salary){
        try{
            service.updateByPrimaryKey(salary);
            return new AjaxResult(true,"工资编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"工资编辑失败");
        }
    }

    @RequestMapping("/salary_delete")
    @ResponseBody
    @RequiresPermissions("salary:delete")
    @PermissionName("删除工资记录")
    public AjaxResult delete(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"工资记录删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"工资记录删除失败");
        }
    }

    @RequestMapping("/salary_balance")
    @ResponseBody
    @RequiresPermissions("salary:balance")
    @PermissionName("结算工资")
    public AjaxResult balance(Integer year,Integer month){
        try{
            service.balance(year,month);
            return new AjaxResult(true,"工资结算成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"工资结算失败");
        }
    }


    @RequestMapping("/salary_fileOut")
    @ResponseBody
    @RequiresPermissions("salary:fileOut")
    @PermissionName("工资文件导出")
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=salary.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("工资管理",0);
            sheet.addCell(new Label(0,0,"员工编号"));
            sheet.addCell(new Label(1,0,"员工"));
            sheet.addCell(new Label(2,0,"工资"));
            sheet.addCell(new Label(3,0,"结算日期"));
            List<Salary> salarys = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 0; i < salarys.size() ; i++) {
                Salary salary = salarys.get(i);
                if(salary.getEmployee() != null){
                    sheet.addCell(new Label(0,i+1,salary.getEmployee().getId()+""));
                    sheet.addCell(new Label(1,i+1,salary.getEmployee().getRealname()));
                }
                if(salary.getSalary() != null){
                    sheet.addCell(new Label(2,i+1,salary.getSalary()+""));
                }
                if(salary.getBalancedate() != null){
                    sheet.addCell(new Label(3,i+1,sdf.format(salary.getBalancedate())));
                }
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    @RequestMapping("/salary_fileIn")
    @ResponseBody
    @RequiresPermissions("salary:fileIn")
    @PermissionName("工资文件导入")
    public AjaxResult fileIn(MultipartFile file){
        try{
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i < rows; i++) {
                Salary salary = new Salary();
                salary.setEmployee(new Employee());
                if(StringUtils.trim(sheet.getCell(0,i).getContents()) != ""){
                    salary.getEmployee().setId(Long.valueOf(sheet.getCell(0,i).getContents()));
                }
                salary.getEmployee().setRealname(sheet.getCell(1,i).getContents());
                if(StringUtils.trim(sheet.getCell(2,i).getContents()) != ""){
                    salary.setSalary(new BigDecimal(sheet.getCell(2,i).getContents()));
                }
                if (StringUtils.trim(sheet.getCell(3,i).getContents()) != "") {
                    salary.setBalancedate(sdf.parse(sheet.getCell(3, i).getContents()));
                }
                service.insert(salary);
            }
            workbook.close();
            return new AjaxResult(true,"工资导入成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"工资导入失败");
        }
    }



}
