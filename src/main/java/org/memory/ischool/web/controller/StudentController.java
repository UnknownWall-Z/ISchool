package org.memory.ischool.web.controller;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.domain.Client;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Student;
import org.memory.ischool.domain.StudentLoss;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.StudentQueryObject;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.service.IClientService;
import org.memory.ischool.service.IStudentLossService;
import org.memory.ischool.service.IStudentService;
import org.memory.ischool.util.PermissionName;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class StudentController extends BaseController{

    @Autowired
    private IStudentService service;

    @Autowired
    private IStudentLossService lossService;

    @Autowired
    private IClientService clientService;

    @RequiresPermissions("student:view")
    @PermissionName("学员页面")
    @RequestMapping("/student_view")
    public String view(){
        return "student";
    }


    @RequiresPermissions("student:upordown")
    @PermissionName("转班学员页面")
    @RequestMapping("/student_upordown")
    public String upordown(){
        return "upordown";
    }

    @RequestMapping("/student_list")
    @ResponseBody
    public PageResult list(StudentQueryObject qo){
        if(StringUtils.isEmpty(qo.getState())){
            qo.setState("正常");
            return service.pageQuery(qo);
        }
        return service.pageQuery(qo);
    }

    @RequestMapping("/student_listAll")
    @ResponseBody
    public List<Student> list(){
        return service.selectAll();
    }

    @RequestMapping("/student_upordownlist")
    @ResponseBody
    public PageResult upordownlist(StudentQueryObject qo){
        qo.setUpordown(true);
        return service.pageQuery(qo);
    }


    @RequiresPermissions("student:save")
    @PermissionName("学员保存")
    @RequestMapping("/student_save")
    @ResponseBody
    public AjaxResult save(Student student, MultipartFile file, HttpServletRequest request, Long clientId){
        try{
            if (file != null && file.getSize() > 0) {
                String realPath = request.getSession().getServletContext().getRealPath("/static/upload/");
                String path = UUID.randomUUID().toString();
                String fileName = file.getOriginalFilename();
                String fileType = fileName.substring(fileName.lastIndexOf("."));
                File targetFile = new File(realPath, path + fileType);
                System.out.println(targetFile);
                FileOutputStream os = new FileOutputStream(targetFile);
                IOUtils.copy(file.getInputStream(), os);
                os.close();
                student.setHeadimgpath("/static/upload/" + path + fileType);
            }
            service.insert(student);
            Client client = clientService.selectByPrimaryKey(clientId);
            if(student.getUsername() != ""){
                client.setUsername(student.getUsername());
            }
            if(student.getMarketuser() != null){
                client.setMarketuser(student.getMarketuser());
            }
            client.setStatus("2");
            clientService.updateByPrimaryKey(client);
            return new AjaxResult(true,"转正成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"转正失败");
        }
    }



    @RequiresPermissions("student:delete")
    @PermissionName("学员删除")
    @RequestMapping("/student_delete")
    @ResponseBody
    public AjaxResult delete(Long id){
        try{
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true,"学员删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"学员删除失败");
        }
    }

    @RequiresPermissions("student:dropout")
    @PermissionName("学员休学")
    @RequestMapping("/student_dropout")
    @ResponseBody
    public AjaxResult dropout(Long id){
        try{
            service.dropout(id);
            return new AjaxResult(true,"休学成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"休学失败");
        }
    }

    @RequiresPermissions("student:pressForMoney")
    @PermissionName("学员催款")
    @RequestMapping("/student_pressForMoney")
    @ResponseBody
    public AjaxResult pressForMoney(Long id){
        try{
            Student student = service.selectByPrimaryKey(id);
            Date lastdate = student.getUrgedate();
            student.setLasturgedate(lastdate);
            student.setUrgedate(new Date());
            if(student.getUrgetimes() == null){
                student.setUrgetimes(1);
            }else {
                student.setUrgetimes(student.getUrgetimes() + 1);
            }
            service.updateByPrimaryKey(student);
            return new AjaxResult(true,"催款成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"催款失败");
        }
    }

    @RequiresPermissions("student:loan")
    @PermissionName("学员贷款")
    @RequestMapping("/student_loan")
    @ResponseBody
    public AjaxResult loan(Long id){
        try{
            Student student = service.selectByPrimaryKey(id);

            student.setLastpaytime(new Date());
            student.setState("已贷款");
            service.updateByPrimaryKey(student);
            return new AjaxResult(true,"贷款成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"贷款失败");
        }
    }

    @RequiresPermissions("student:payMoney")
    @PermissionName("学员付款")
    @RequestMapping("/student_payMoney")
    @ResponseBody
    public AjaxResult payMoney(Long id, BigDecimal money){
        try{
            Student student = service.selectByPrimaryKey(id);
            student.setLastpaytime(new Date());
            if(student.getPayedfee() == null){
                student.setPayedfee(money);
            }else {
                student.setPayedfee(student.getPayedfee().add(money));
            }
            BigDecimal decimal = student.getOwnedfee().subtract(money);
            if(decimal.compareTo(BigDecimal.ZERO) == 0){
                student.setFinished(true);
            }
            student.setOwnedfee(decimal);
            service.updateByPrimaryKey(student);
            return new AjaxResult(true,"付款成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"付款失败");
        }
    }

    @RequiresPermissions("student:changeClass")
    @PermissionName("学员转班")
    @RequestMapping("/student_changeClass")
    @ResponseBody
    public AjaxResult changeClass(Long id,Long classname,Long newclass){
        try{
            if(classname == null){
               classname = service.selectByPrimaryKey(id).getStudentclass().getId();
            }
            service.changeClass(id,classname,newclass);
            return new AjaxResult(true,"学员转班成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"学员转班失败");
        }
    }


    @RequiresPermissions("student:upordownDelete")
    @PermissionName("删除转班记录")
    @RequestMapping("/upordown_delete")
    @ResponseBody
    public AjaxResult upordownDelete(Long id,Long nowclass){
        try{
            service.upordownDelete(id,nowclass);
            return new AjaxResult(true,"转班记录删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"转班记录删除失败");
        }
    }

    @RequiresPermissions("student:edit")
    @PermissionName("学员编辑")
    @RequestMapping("/student_edit")
    @ResponseBody
    public AjaxResult edit(Student student, MultipartFile file,HttpServletRequest request){
        try{
            if (file != null && file.getSize() > 0) {
                String realPath = request.getSession().getServletContext().getRealPath("/static/upload/");
                String path = UUID.randomUUID().toString();
                String fileName = file.getOriginalFilename();
                String fileType = fileName.substring(fileName.lastIndexOf("."));
                File targetFile = new File(realPath, path + fileType);
                FileOutputStream os = new FileOutputStream(targetFile);
                IOUtils.copy(file.getInputStream(), os);
                os.close();
                student.setHeadimgpath("/static/upload/" + path + fileType);
            }
            service.updateByPrimaryKey(student);
            return new AjaxResult(true,"学员编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"学员编辑失败");
        }
    }

    @RequiresPermissions("student:upordownedit")
    @PermissionName("学员转班信息编辑")
    @RequestMapping("/upordown_edit")
    @ResponseBody
    public AjaxResult uporloadedit(Student student){
        try{
            service.updateUpordown(student);
            return new AjaxResult(true,"学员转班信息编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"学员转班信息编辑失败");
        }
    }


    @RequiresPermissions("student:loss")
    @PermissionName("学员流失")
    @RequestMapping("/student_loss")
    @ResponseBody
    public AjaxResult loss(Long id, String lossstage,String lossreason){
        try{
            Student student = service.selectByPrimaryKey(id);
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
            student.setState("已流失");
            service.updateByPrimaryKey(student);
            lossService.insert(studentLoss);
            return new AjaxResult(true,"学员流失成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"学员流失失败");
        }
    }


    @RequiresPermissions("student:fileOut")
    @PermissionName("学员文件导出")
    @RequestMapping("/student_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=student.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("学员信息",0);
            sheet.addCell(new Label(0,0,"学员姓名"));
            sheet.addCell(new Label(1,0,"营销人员"));
            sheet.addCell(new Label(2,0,"总学费"));
            sheet.addCell(new Label(3,0,"待缴学费"));
            sheet.addCell(new Label(4,0,"已交学费"));
            sheet.addCell(new Label(5,0,"缴费状态"));
            sheet.addCell(new Label(6,0,"入学时间"));
            sheet.addCell(new Label(7,0,"学校"));
            sheet.addCell(new Label(8,0,"QQ"));
            sheet.addCell(new Label(9,0,"电话"));
            sheet.addCell(new Label(10,0,"所在班级"));
            sheet.addCell(new Label(11,0,"付款方式"));
            sheet.addCell(new Label(12,0,"类型"));
            sheet.addCell(new Label(13,0,"状态"));
            List<Student> students = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i <= students.size() ; i++) {
               Student student = students.get(i-1);
               sheet.addCell(new Label(0,i,student.getUsername()));
               if(student.getMarketuser() != null){
                  sheet.addCell(new Label(1,i,student.getMarketuser().getRealname()));
               }
               if(student.getTotalfee() != null){
                   sheet.addCell(new Label(2,i,student.getTotalfee().toString()));
               }
               if(student.getOwnedfee() != null){
                   sheet.addCell(new Label(4,i,student.getOwnedfee().toString()));
               }
               if(student.getPayedfee() != null){
                   sheet.addCell(new Label(3,i,student.getPayedfee().toString()));
               }
               if(student.getTotalfee() != null){
                   sheet.addCell(new Label(2,i,student.getTotalfee().toString()));
               }
               if(student.getFinished() != null){
                   sheet.addCell(new Label(5,i,student.getFinished()?"已交清":"未交清"));
               }
               if(student.getAdmission() != null){
                   sheet.addCell(new Label(6,i,sdf.format(student.getAdmission())));
               }

               sheet.addCell(new Label(7,i,student.getUniversity()));
               sheet.addCell(new Label(8,i,student.getQq()));
               sheet.addCell(new Label(9,i,student.getTel()));
               if(student.getStudentclass() != null){
                    sheet.addCell(new Label(10,i,student.getStudentclass().getClassname()));
               }
               sheet.addCell(new Label(11,i,student.getPaymethod()));
               sheet.addCell(new Label(12,i,student.getClienttype()));
               sheet.addCell(new Label(13,i,student.getState()));
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequiresPermissions("student:upordownFileOut")
    @PermissionName("学员文件导出")
    @RequestMapping("/upordown_fileOut")
    @ResponseBody
    public void upordownFileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=student.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("转班记录",0);
            sheet.addCell(new Label(0,0,"学员姓名"));
            sheet.addCell(new Label(1,0,"总学费"));
            sheet.addCell(new Label(2,0,"待缴学费"));
            sheet.addCell(new Label(3,0,"已交学费"));
            sheet.addCell(new Label(4,0,"升班留级时间"));
            sheet.addCell(new Label(5,0,"QQ"));
            sheet.addCell(new Label(6,0,"联系电话"));
            sheet.addCell(new Label(7,0,"以前的班级"));
            sheet.addCell(new Label(8,0,"流入的班级"));
            sheet.addCell(new Label(9,0,"营销人员"));
            sheet.addCell(new Label(10,0,"状态"));
            List<Student> students = service.selectAllUpordown();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i <= students.size() ; i++) {
               Student student = students.get(i-1);
               sheet.addCell(new Label(0,i,student.getUsername()));

                if(student.getTotalfee() != null){
                    sheet.addCell(new Label(1,i,student.getTotalfee().toString()));
                }

                if(student.getOwnedfee() != null){
                    sheet.addCell(new Label(2,i,student.getOwnedfee().toString()));
                }

                if(student.getPayedfee() != null){
                    sheet.addCell(new Label(3,i,student.getPayedfee().toString()));
                }

                if(student.getUpordowndate() != null){
                    sheet.addCell(new Label(4,i,sdf.format(student.getUpordowndate())));
                }

                sheet.addCell(new Label(5,i,student.getQq()));

                sheet.addCell(new Label(6,i,student.getTel()));

                if(student.getOldclass() != null){
                    sheet.addCell(new Label(7,i,student.getOldclass().getClassname()));
                }

                if(student.getStudentclass() != null){
                    sheet.addCell(new Label(8,i,student.getStudentclass().getClassname()));
                }

               if(student.getMarketuser() != null){
                  sheet.addCell(new Label(9,i,student.getMarketuser().getRealname()));
               }

               sheet.addCell(new Label(10,i,student.getState()));
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
