package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.domain.Studentclass;
import org.memory.ischool.query.StudentClassQueryObject;
import org.memory.ischool.service.IStudentclassService;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class StudentclassController extends BaseController{

    @Autowired
    private IStudentclassService service;

    @Autowired
    private IEmployeeService employeeService;

    @RequiresPermissions("Studentclass:view")
    @PermissionName("班级页面")
    @RequestMapping("/studentclass_view")
    public String studentclass(){
        return "studentclass";
    }

    @RequestMapping("/studentclass_list")
    @ResponseBody
    public PageResult list(StudentClassQueryObject qo, Integer stateNow){
        if(stateNow != null && stateNow == 1){
            qo.setState(true);
        }
        return service.pageQuery(qo);
    }

    @RequestMapping("/studentclass_listAll")
    @ResponseBody
    public List<Studentclass> listAll(){
        return service.selectAll();
    }

    @RequiresPermissions("studentclass:save")
    @PermissionName("班级保存")
    @RequestMapping("/studentclass_save")
    @ResponseBody
    public AjaxResult save(Studentclass studentclass){
        try{
            service.insert(studentclass);
            return new AjaxResult(true,"班级保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"班级保存失败");
        }
    }



    @RequestMapping("/studentclass_getEmployee")
    @ResponseBody
    public Long getEmployeeById(Long id){
        return service.getEmployeeById(id);
    }

    @RequiresPermissions("studentclass:fileOut")
    @PermissionName("班级文件导出")
    @RequestMapping("/studentclass_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=studentclass.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("班级",0);
            sheet.addCell(new Label(0,0,"班级名称"));
            sheet.addCell(new Label(1,0,"学生总数"));
            sheet.addCell(new Label(2,0,"座位总数"));
            sheet.addCell(new Label(3,0,"班主任"));
            sheet.addCell(new Label(4,0,"班级地址"));
            sheet.addCell(new Label(5,0,"归属系"));
            sheet.addCell(new Label(6,0,"课程表状态"));
            List<Studentclass> studentclasss = service.selectAll();
            for (int i = 0; i < studentclasss.size() ; i++) {


                Studentclass studentclass = studentclasss.get(i);

                sheet.addCell(new Label(0,i+1,studentclass.getClassname()));
                if(studentclass.getTatolstudent()!=null){
                    sheet.addCell(new Label(1,i+1,studentclass.getTatolstudent().toString()));
                }
                sheet.addCell(new Label(2,i+1,studentclass.getSeating().toString()));

                if(studentclass.getHeadteacher()!= null){
                    sheet.addCell(new Label(3,i+1,studentclass.getHeadteacher().getRealname()));
                }

                sheet.addCell(new Label(4,i+1,studentclass.getClasslocation()));
                sheet.addCell(new Label(5,i+1,studentclass.getAffilliation()));
                if (studentclass.getState()!=null){
                 sheet.addCell(new Label(6,i+1,studentclass.getState()?"未分配":"已分配"));
                }
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequiresPermissions("studentclass:fileIn")
    @PermissionName("班级文件导入")
    @RequestMapping("/studentclass_fileIn")
    @ResponseBody
    public AjaxResult fileIn(MultipartFile file){
        try{
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i < rows; i++) {
                Studentclass studentclass =new Studentclass();
                studentclass.setClassname(sheet.getCell(0,i).getContents());
                studentclass.setTatolstudent(Long.parseLong(sheet.getCell(1,i).getContents()));
                studentclass.setSeating(Long.parseLong(sheet.getCell(2,i).getContents()));
                Employee realName = employeeService.getEmployeeByRealName(sheet.getCell(3, i).getContents());
                studentclass.setHeadteacher(realName);
                studentclass.setClasslocation(sheet.getCell(4,i).getContents());
                studentclass.setAffilliation(sheet.getCell(5,i).getContents());

                String contents = sheet.getCell(6, i).getContents();

                boolean state=true;
                if("未分配".equals(contents)){
                    state=false;
                }
                studentclass.setState(state);

                service.insert(studentclass);
            }
            return new AjaxResult(true,"员工导入成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"员工导入失败");
        }
    }


    @RequiresPermissions("studentclass:changState")
    @PermissionName("员工离职")
    @RequestMapping("/studentclass_changState")
    @ResponseBody
    public AjaxResult changState(Long id){
        try{
            service.changState(id);
            return new AjaxResult(true,"分配成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"分配失败");
        }
    }








    @RequiresPermissions("studentclass:edit")
    @PermissionName("班级编辑")
    @RequestMapping("/studentclass_edit")
    @ResponseBody
    public AjaxResult edit(Studentclass studentclass){
        try{
            service.updateByPrimaryKey(studentclass);
            return new AjaxResult(true,"班级编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"班级编辑失败");
        }
    }
}
