package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.service.IExpenditureService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Expenditure;
import org.memory.ischool.query.ExpenditureQueryObject;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class ExpenditureController extends BaseController{

    @Autowired
    private IExpenditureService service;

    @Autowired
    private IEmployeeService employeeService;

    @RequiresPermissions("expenditure:view")
    @PermissionName("支出记录页面")
    @RequestMapping("/expenditure_view")
    public String view(){
        return "expenditure";
    }

    @RequestMapping("/expenditure_list")
    @ResponseBody
    public PageResult list(ExpenditureQueryObject qo){
        return service.pageQuery(qo);
    }

    @RequiresPermissions("expenditure:save")
    @PermissionName("支出记录保存")
    @RequestMapping("/expenditure_save")
    @ResponseBody
    public AjaxResult save(Expenditure expenditure){
        try{
            service.insert(expenditure);
            return new AjaxResult(true,"支出记录保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"支出记录保存失败");
        }
    }

    @RequiresPermissions("expenditure:delete")
    @PermissionName("支出记录删除")
    @RequestMapping("/expenditure_delete")
    @ResponseBody
    public AjaxResult delete(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"支出记录删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"支出记录删除失败");
        }
    }

    @RequiresPermissions("expenditure:changestate")
    @PermissionName("审核支出记录")
    @RequestMapping("/expenditure_changestate")
    @ResponseBody
    public AjaxResult changestate(Long id){
        try{
            Employee employee = (Employee) SecurityUtils.getSubject().getPrincipal();
            service.changestate(id,employee.getId());
            return new AjaxResult(true,"审核成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"审核失败");
        }
    }

    @RequiresPermissions("expenditure:cancelaudit")
    @PermissionName("取消审核支出记录")
    @RequestMapping("/expenditure_cancelaudit")
    @ResponseBody
    public AjaxResult cancelaudit(Long id){
        try{
            service.cancelaudit(id);
            return new AjaxResult(true,"取消审核成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"取消审核失败");
        }
    }

    @RequiresPermissions("expenditure:edit")
    @PermissionName("支出记录编辑")
    @RequestMapping("/expenditure_edit")
    @ResponseBody
    public AjaxResult edit(Expenditure expenditure){
        try{
            service.updateByPrimaryKey(expenditure);
            return new AjaxResult(true,"支出记录编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"支出记录编辑失败");
        }
    }

    @RequiresPermissions("expenditure:fileOut")
    @PermissionName("支出文件导出")
    @RequestMapping("/expenditure_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=expenditure.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("支出信息",0);
            sheet.addCell(new Label(0,0,"时间"));
            sheet.addCell(new Label(1,0,"支出金额"));
            sheet.addCell(new Label(2,0,"摘要"));
            sheet.addCell(new Label(3,0,"出纳"));
            sheet.addCell(new Label(4,0,"经手人"));
            sheet.addCell(new Label(5,0,"支出方式"));
            sheet.addCell(new Label(6,0,"类型"));
            sheet.addCell(new Label(7,0,"小类"));
            sheet.addCell(new Label(8,0,"单据号"));
            sheet.addCell(new Label(9,0,"归属学科"));
            sheet.addCell(new Label(10,0,"审核人"));
            sheet.addCell(new Label(11,0,"审核状态"));
            List<Expenditure> expenditures = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i <= expenditures.size() ; i++) {
                Expenditure expenditure = expenditures.get(i-1);
                sheet.addCell(new Label(0,i,sdf.format(expenditure.getDate())));
                if(expenditure.getAmount() != null){
                    sheet.addCell(new Label(1,i,expenditure.getAmount().toString()));
                }
                sheet.addCell(new Label(2,i,expenditure.getSummary()));
                if(expenditure.getCashier() != null){
                    sheet.addCell(new Label(3,i,expenditure.getCashier().getRealname()));
                }
                if(expenditure.getHandler() != null){
                    sheet.addCell(new Label(4,i,expenditure.getHandler().getRealname()));
                }
                sheet.addCell(new Label(5,i,expenditure.getPaymethod()));
                sheet.addCell(new Label(6,i,expenditure.getPaytype()));
                sheet.addCell(new Label(7,i,expenditure.getSubclass()));
                if(expenditure.getDocumentnumber() != null){
                    sheet.addCell(new Label(8,i,expenditure.getDocumentnumber().toString()));
                }
                sheet.addCell(new Label(9,i,expenditure.getSubject()));
                if(expenditure.getAuditor() != null){
                    sheet.addCell(new Label(10,i,expenditure.getAuditor().getRealname()));
                }
                if(expenditure.getState() != null){
                    sheet.addCell(new Label(11,i,expenditure.getState()?"已审核":"未审核"));
                }
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequiresPermissions("expenditure:fileIn")
    @PermissionName("支出文件导入")
    @RequestMapping("/expenditure_fileIn")
    @ResponseBody
    public AjaxResult fileIn(MultipartFile file){
        try{
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i < rows; i++) {
                Expenditure expenditure = new Expenditure();
                if(StringUtils.trim(sheet.getCell(0,i).getContents()) != ""){
                    expenditure.setDate(sdf.parse(sheet.getCell(0,i).getContents()));
                }
                if(StringUtils.trim(sheet.getCell(1,i).getContents()) != ""){
                    expenditure.setAmount(new BigDecimal(sheet.getCell(1,i).getContents()));
                }
                expenditure.setSummary(sheet.getCell(2,i).getContents());
                String cashierContent = sheet.getCell(3, i).getContents();
                if(StringUtils.trim(cashierContent) != ""){
                    Employee cashier = employeeService.getEmployeeByRealName(cashierContent);
                    if(cashier != null){
                        expenditure.setCashier(cashier);
                    }
                }
                String handlerContent = sheet.getCell(4, i).getContents();
                if(StringUtils.trim(handlerContent) != ""){
                    Employee handler = employeeService.getEmployeeByRealName(handlerContent);
                    if(handler != null){
                        expenditure.setHandler(handler);
                    }
                }
                expenditure.setPaymethod(sheet.getCell(5,i).getContents());
                expenditure.setPaytype(sheet.getCell(6,i).getContents());
                expenditure.setSubclass(sheet.getCell(7,i).getContents());
                expenditure.setDocumentnumber(sheet.getCell(8,i).getContents());
                expenditure.setSubject(sheet.getCell(9,i).getContents());
                String auditorContent = sheet.getCell(10, i).getContents();
                if(StringUtils.trim(auditorContent) != ""){
                    Employee auditor = employeeService.getEmployeeByRealName(auditorContent);
                    if(auditor != null){
                        System.out.println(auditor.getRealname());
                        expenditure.setAuditor(auditor);
                    }
                }
                String contents = sheet.getCell(11,i).getContents();
                boolean state = false;
                if("已审核".equals(contents)){
                    state = true;
                }
                expenditure.setState(state);
                service.insert(expenditure);
            }
            return new AjaxResult(true,"支付文件导入成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"支出文件导入失败");
        }
    }
    
}
