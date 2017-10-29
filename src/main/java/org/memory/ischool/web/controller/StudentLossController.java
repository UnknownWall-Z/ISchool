package org.memory.ischool.web.controller;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Student;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.StudentLoss;
import org.memory.ischool.query.StudentLossQueryObject;
import org.memory.ischool.service.IStudentLossService;
import org.memory.ischool.service.IStudentService;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class StudentLossController extends BaseController{

    @Autowired
    private IStudentLossService service;

    @Autowired
    private IStudentService studentService;

    @RequiresPermissions("studentloss:view")
    @PermissionName("流失学员页面")
    @RequestMapping("/studentloss_view")
    public String view(){
        return "studentloss";
    }

    @RequestMapping("/studentloss_list")
    @ResponseBody
    public PageResult list(StudentLossQueryObject qo){
        return service.pageQuery(qo);
    }

    @RequiresPermissions("studentloss:save")
    @PermissionName("流失学员保存")
    @RequestMapping("/studentloss_save")
    @ResponseBody
    public AjaxResult save(Long id, String lossstage, String lossreason){
        try{
            Student student = studentService.selectByPrimaryKey(id);
            StudentLoss studentLoss = new StudentLoss();
            studentLoss.setName(student.getUsername());
            studentLoss.setQq(student.getQq());
            studentLoss.setTel(student.getTel());

            studentLoss.setStudydays((int) ((new Date().getTime() - student.getAdmission().getTime()) / (1000*3600*24)));
            studentLoss.setLossclass(student.getStudentclass());
            studentLoss.setLossstage(lossstage);
            studentLoss.setLossreason(lossreason);

            studentLoss.setLossdate(new Date());

            studentLoss.setHandler((Employee) SecurityUtils.getSubject().getPrincipal());
            System.out.println(((Employee) SecurityUtils.getSubject().getPrincipal()).getId());
            studentLoss.setMarketuser(student.getMarketuser());
            studentLoss.setRefund(true);
            studentLoss.setState("流失");
            studentService.deleteByPrimaryKey(id);
            service.insert(studentLoss);
            return new AjaxResult(true,"学员流失成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"学员流失失败");
        }
    }

    @RequiresPermissions("studentloss:delete")
    @PermissionName("流失学员删除")
    @RequestMapping("/studentloss_delete")
    @ResponseBody
    public AjaxResult delete(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"流失学员删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"流失学员删除失败");
        }
    }

    @RequiresPermissions("studentloss:edit")
    @PermissionName("流失学员编辑")
    @RequestMapping("/studentloss_edit")
    @ResponseBody
    public AjaxResult edit(StudentLoss studentloss){
        try{
            service.updateByPrimaryKey(studentloss);
            return new AjaxResult(true,"流失学员编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"流失学员编辑失败");
        }
    }


    @RequiresPermissions("studentloss:fileOut")
    @PermissionName("流失学员文件导出")
    @RequestMapping("/studentloss_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=studentloss.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("流失学员信息",0);
            sheet.addCell(new Label(0,0,"流失学员姓名"));
            sheet.addCell(new Label(1,0,"QQ"));
            sheet.addCell(new Label(2,0,"联系电话"));
            sheet.addCell(new Label(3,0,"流失班级"));
            sheet.addCell(new Label(4,0,"流失阶段"));
            sheet.addCell(new Label(5,0,"流失原因"));
            sheet.addCell(new Label(6,0,"流失时间"));
            sheet.addCell(new Label(7,0,"经办人"));
            sheet.addCell(new Label(8,0,"营销人员"));
            sheet.addCell(new Label(9,0,"是否退款"));
            sheet.addCell(new Label(10,0,"状态"));
            List<StudentLoss> studentlosss = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i <= studentlosss.size() ; i++) {
                StudentLoss studentloss = studentlosss.get(i-1);
                sheet.addCell(new Label(0,i,studentloss.getName()));
                sheet.addCell(new Label(1,i,studentloss.getQq()));
                sheet.addCell(new Label(2,i,studentloss.getTel()));
                if(studentloss.getLossclass() != null){
                    sheet.addCell(new Label(3,i,studentloss.getLossclass().getClassname()));
                }
                sheet.addCell(new Label(4,i,studentloss.getLossstage()));
                sheet.addCell(new Label(5,i,studentloss.getLossreason()));
                if(studentloss.getLossdate() != null){
                    sheet.addCell(new Label(6,i,sdf.format(studentloss.getLossdate())));
                }
                if(studentloss.getHandler() != null){
                    sheet.addCell(new Label(7,i,studentloss.getHandler().getRealname()));
                }
                if(studentloss.getMarketuser() != null){
                    sheet.addCell(new Label(8,i,studentloss.getMarketuser().getRealname()));
                }
                if(studentloss.getRefund() != null){
                    sheet.addCell(new Label(9,i,studentloss.getRefund()?"是":"否"));
                }
                sheet.addCell(new Label(10,i,studentloss.getState()));
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    
}
