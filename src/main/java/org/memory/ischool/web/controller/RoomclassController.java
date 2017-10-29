package org.memory.ischool.web.controller;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.service.IRoomclassService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.Roomclass;
import org.memory.ischool.query.RoomclassQueryObject;
import org.memory.ischool.service.IStudentclassService;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.List;
@Controller
public class RoomclassController extends BaseController{

    @Autowired
    private IRoomclassService service;

    @Autowired
    private IStudentclassService studentclassService;

    @Autowired
    private IEmployeeService employeeService;

    @RequiresPermissions("roomclass:view")
    @PermissionName("教室页面")
    @RequestMapping("/roomclass_view")
    public String roomclass(){
        return "roomclass";
    }

    @RequestMapping("/roomclass_list")
    @ResponseBody
    public PageResult list(RoomclassQueryObject qo){
       return service.pageQuery(qo);

    }

    @RequestMapping("/roomclass_listAll")
    @ResponseBody
    public List<Roomclass> listAll(){
        return service.selectAll();
    }

    @RequiresPermissions("roomclass:save")
    @PermissionName("教室保存")
    @RequestMapping("/roomclass_save")
    @ResponseBody
    public AjaxResult save(Roomclass roomclass){
        try{
            service.insert(roomclass);
            return new AjaxResult(true,"教室保存成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"教室保存失败");
        }
    }

    @RequestMapping("/roomclass_getRoomclass")
    @ResponseBody
    public Long getRoomclassId(Long id){
        return service.getRoomclassById(id);
    }


    @RequiresPermissions("roomclass:edit")
    @PermissionName("教室编辑")
    @RequestMapping("/roomclass_edit")
    @ResponseBody
    public AjaxResult edit(Roomclass roomclass){
        try{
            service.updateByPrimaryKey(roomclass);
            return new AjaxResult(true,"教室编辑成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"教室编辑失败");
        }
    }

    @RequiresPermissions("roomclass:changState")
    @PermissionName("设置使用状态")
    @RequestMapping("/roomclass_changState")
    @ResponseBody
    public AjaxResult changState(Long id){
        try{
            service.changState(id);
            return new AjaxResult(true,"状态设置成功");
        }catch (Exception e){
            e.printStackTrace();
            return new AjaxResult(false,"状态设置失败");
        }
    }



    @RequiresPermissions("roomclass:fileOut")
    @PermissionName("教室文件导出")
    @RequestMapping("/roomclass_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response){
        try{
            response.setHeader("Content-Disposition", "attachment;filename=roomclass.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("教室管理",0);
            sheet.addCell(new Label(0,0,"教室"));
            sheet.addCell(new Label(1,0,"教室位置"));
            sheet.addCell(new Label(2,0,"使用班级"));
            sheet.addCell(new Label(3,0,"学生总数"));
            sheet.addCell(new Label(4,0,"使用时间"));
            sheet.addCell(new Label(5,0,"备注"));
            List<Roomclass> roomclasss = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 0; i < roomclasss.size() ; i++) {
                Roomclass roomclass = roomclasss.get(i);

                sheet.addCell(new Label(0,i+1,roomclass.getClassroom()));
                sheet.addCell(new Label(1,i+1,roomclass.getRoomlocation()));
                if(roomclass.getStudentclass()!=null){
                    sheet.addCell(new Label(2,i+1,roomclass.getStudentclass().toString()));
                }
                sheet.addCell( new Label(3,i+1,roomclass.getTotalstudent().toString()));
                sheet.addCell(new Label(4,i+1,sdf.format(roomclass.getInputdate())));
                sheet.addCell(new Label(5,i+1,roomclass.getRemark()));
            }
            workbook.write();
            workbook.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
