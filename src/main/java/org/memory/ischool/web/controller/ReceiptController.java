package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Receipt;
import org.memory.ischool.domain.Student;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.ReceiptQueryObject;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.service.IReceiptService;
import org.memory.ischool.service.IStudentService;
import org.memory.ischool.util.AjaxResult;
import org.memory.ischool.util.PermissionName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class ReceiptController extends BaseController{

    @Autowired
    private IReceiptService service;

    @Autowired
    private IStudentService studentService;

    @Autowired
    private IEmployeeService employeeService;

    @RequiresPermissions("receipt:view")
    @PermissionName("收款记录页面")
    @RequestMapping("/receipt_view")
    public String view(){
        return "receipt";
    }

    @RequestMapping("/receipt_list")
    @ResponseBody
    public PageResult list(ReceiptQueryObject qo){
        return service.pageQuery(qo);
    }

    @RequiresPermissions("receipt:save")
    @PermissionName("收款记录保存")
    @RequestMapping("/receipt_save")
    @ResponseBody
    public AjaxResult save(Receipt receipt){
        try{
            Student student = studentService.selectByPrimaryKey(receipt.getStudent().getId());
            if(student.getOldclass() != null){
                String oldclass = student.getOldclass().getClassname();
                String nowclass = student.getStudentclass().getClassname();
                receipt.setClasschange("以前:"+oldclass + ",现在:"+nowclass);
            }
            service.insert(receipt);
            return new AjaxResult(true,"收款记录保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"收款记录保存失败");
        }
    }

    @RequiresPermissions("receipt:delete")
    @PermissionName("收款记录删除")
    @RequestMapping("/receipt_delete")
    @ResponseBody
    public AjaxResult delete(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"收款记录删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"收款记录删除失败");
        }
    }

    @RequiresPermissions("receipt:changestate")
    @PermissionName("复核收款记录")
    @RequestMapping("/receipt_changestate")
    @ResponseBody
    public AjaxResult changestate(Long id){
        try{
            service.changestate(id);
            return new AjaxResult(true,"复核成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"复核失败");
        }
    }

    @RequiresPermissions("receipt:cancelaudit")
    @PermissionName("取消复核收款记录")
    @RequestMapping("/receipt_cancelaudit")
    @ResponseBody
    public AjaxResult cancelaudit(Long id){
        try{
            service.cancelaudit(id);
            return new AjaxResult(true,"取消复核成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"取消复核失败");
        }
    }

    @RequiresPermissions("receipt:edit")
    @PermissionName("收款记录编辑")
    @RequestMapping("/receipt_edit")
    @ResponseBody
    public AjaxResult edit(Receipt receipt){
        try{
            service.updateByPrimaryKey(receipt);
            return new AjaxResult(true,"收款记录编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"收款记录编辑失败");
        }
    }

    @RequiresPermissions("receipt:fileOut")
    @PermissionName("收款文件导出")
    @RequestMapping("/receipt_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=receipt.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("学员",0);
            sheet.addCell(new Label(0,0,"收款时间"));
            sheet.addCell(new Label(1,0,"收款金额"));
            sheet.addCell(new Label(2,0,"班级"));
            sheet.addCell(new Label(3,0,"收款人"));
            sheet.addCell(new Label(4,0,"收款方法"));
            sheet.addCell(new Label(5,0,"收款类型"));
            sheet.addCell(new Label(6,0,"单据号"));
            sheet.addCell(new Label(7,0,"是否开票"));
            sheet.addCell(new Label(8,0,"备注"));
            sheet.addCell(new Label(9,0,"营销人员"));
            sheet.addCell(new Label(10,0,"班级变动"));
            sheet.addCell(new Label(11,0,"复核状态"));
            List<Receipt> receipts = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i <= receipts.size() ; i++) {
                Receipt receipt = receipts.get(i-1);
                if(receipt.getStudent() != null){
                    sheet.addCell(new Label(0,i,receipt.getStudent().getUsername()));
                }
                sheet.addCell(new Label(1,i,sdf.format(receipt.getDate())));
                if(receipt.getAmount() != null){
                    sheet.addCell(new Label(2,i,receipt.getAmount().toString()));
                }
                if(receipt.getStudentclass() != null){
                    sheet.addCell(new Label(3,i,receipt.getStudentclass().getClassname()));
                }
                if(receipt.getPayee() != null){
                    sheet.addCell(new Label(4,i,receipt.getPayee().getRealname()));
                }
                sheet.addCell(new Label(5,i,receipt.getMethod()));
                sheet.addCell(new Label(6,i,receipt.getType()));
                sheet.addCell(new Label(7,i,receipt.getDocumentnumber()));
                sheet.addCell(new Label(8,i,receipt.getBill()?"是":"否"));
                sheet.addCell(new Label(9,i,receipt.getRemark()));
                if(receipt.getMarketuser() != null){
                    sheet.addCell(new Label(10,i,receipt.getMarketuser().getRealname()));
                }
                sheet.addCell(new Label(11,i,receipt.getClasschange()));
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequiresPermissions("receipt:fileIn")
    @PermissionName("收款文件导入")
    @RequestMapping("/receipt_fileIn")
    @ResponseBody
    public AjaxResult fileIn(MultipartFile file){
        try{
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i < rows; i++) {
                Receipt receipt = new Receipt();
                String studentContent = sheet.getCell(0, i).getContents();
                if(StringUtils.trim(studentContent) != ""){
                    Student student = studentService.getReceiptByRealName(studentContent);
                    if(student != null){
                        receipt.setStudent(student);
                    }
                }
                if(StringUtils.trim(sheet.getCell(1,i).getContents()) != ""){
                    receipt.setDate(sdf.parse(sheet.getCell(1,i).getContents()));
                }
                if(StringUtils.trim(sheet.getCell(2,i).getContents()) != ""){
                    receipt.setAmount(new BigDecimal(sheet.getCell(2,i).getContents()));
                }
                String payeeContent = sheet.getCell(4, i).getContents();
                if(StringUtils.trim(payeeContent) != ""){
                    Employee employee = employeeService.getEmployeeByName(payeeContent);
                    if(employee != null){
                        receipt.setPayee(employee);
                    }
                }
                receipt.setMethod(sheet.getCell(5,i).getContents());
                receipt.setType(sheet.getCell(6,i).getContents());
                receipt.setDocumentnumber(sheet.getCell(7,i).getContents());
                String contents = sheet.getCell(8,i).getContents();
                boolean state = false;
                if("是".equals(contents)){
                    state = true;
                }
                receipt.setBill(state);
                receipt.setRemark(sheet.getCell(9,i).getContents());
                String marketuserContent = sheet.getCell(10, i).getContents();
                if(StringUtils.trim(marketuserContent) != ""){
                    Employee marketuser = employeeService.getEmployeeByName(marketuserContent);
                    if(marketuser != null){
                        receipt.setMarketuser(marketuser);
                    }
                }
                receipt.setClasschange(sheet.getCell(11,i).getContents());
                service.insert(receipt);
            }
            return new AjaxResult(true,"收款文件导入成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"收款文件导入失败");
        }
    }
    
}
