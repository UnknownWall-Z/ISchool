package org.memory.ischool.web.controller;

import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.query.ClientQueryObject;
import org.memory.ischool.service.IClientService;
import org.memory.ischool.service.IEmployeeService;
import org.memory.ischool.service.IStudentclassService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Client;
import org.memory.ischool.domain.Employee;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class ClientController extends BaseController {

    @Autowired
    private IClientService service;

    @Autowired
    private IEmployeeService employeeService;

    @Autowired
    private IStudentclassService studentclassService;


    @RequiresPermissions("client:view")
    @PermissionName("学员页面")
    @RequestMapping("/client_view")
    public String client() {
        return "client";
    }

    @RequestMapping("/client_list")
    @ResponseBody
    public PageResult list(ClientQueryObject qo) {
        Employee employee = (Employee) SecurityUtils.getSubject().getPrincipal();
        if(employee.getAdmin()){
            System.out.println("---------s----------"+employee+"-------------------");
            return service.pageQuery(qo);
        }
        if (qo.getSaleManId()==null){
            qo.setSaleManId(employee.getId());
        }
        return service.pageQuery(qo);
    }

    @RequestMapping("/client_listPool")
    @ResponseBody
    public PageResult listPool(ClientQueryObject qo) {
        qo.setSaleManId(-1L);
        return service.pageQueryForPool(qo);
    }

    @RequestMapping("/client_pool")
    public String pool(){
        return "clientPool";
    }

    @RequestMapping("/client_queryClientFromEmp")
    @ResponseBody
    public List<Client> list(Long id) {

        return service.queryClientFromEmp(id);
    }

    @RequestMapping("/client_selectListForTrackForm")
    @ResponseBody
    public List<Client> selectListForTrackForm() {

        return service.selectListForTrackForm();
    }

    @RequestMapping("/client_getOne")
    @ResponseBody
    public Client getOne(Long id) {

        return service.selectByPrimaryKey(id);
    }

    @RequestMapping("/client_listAll")
    @ResponseBody
    public List<Client> listAll() {
        return service.selectAll();
    }

    @RequestMapping("/client_inPool")
    @ResponseBody
    public AjaxResult inPool(Long id, Date inpooltime, String inpoolreason){
        AjaxResult result = null;
        try{
            Client client = new Client();
            client.setId(id);
            client.setInpooltime(inpooltime);
            client.setInpoolreason(inpoolreason);
            service.inPool(client);
            result = new AjaxResult(true,"移入成功");
        }catch(Exception e){
            e.printStackTrace();
            result = new AjaxResult(false,"移入失败,请联系管理员！");
        }
        return result;
    }
   /* @RequestMapping("/leftPool")
    @ResponseBody
    public AjaxResult leftPool(Client client){
        AjaxResult result = null;
        try{
            service.leftPool(client);
            result = new AjaxResult(true,"移交成功");
        }catch(Exception e){
            e.printStackTrace();
            result = new AjaxResult(false,"移交失败,请联系管理员！");
        }
        return result;
    }*/


    @RequiresPermissions("client:save")
    @PermissionName("学员保存")
    @RequestMapping("/client_save")
    @ResponseBody
    public AjaxResult save(Client r) {
        try {
            service.insert(r);
            return new AjaxResult(true, "学员保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "学员保存失败");
        }
    }

    @RequiresPermissions("client:updateByTrack")
    @PermissionName("跟踪信息修改")
    @RequestMapping("/client_updateByTrack")
    @ResponseBody
    public AjaxResult updateByTrack(Client r) {
        try {

            service.updateByTrack(r);
            return new AjaxResult(true, "跟踪信息修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "跟踪信息修改失败");
        }
    }
    @RequiresPermissions("client:delete")
    @PermissionName("学员删除")
    @RequestMapping("/client_delete")
    @ResponseBody
    public AjaxResult del(Long id) {
        try {
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true, "学员删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "学员删除失败");
        }
    }

    @RequiresPermissions("client:edit")
    @PermissionName("学员编辑")
    @RequestMapping("/client_edit")
    @ResponseBody
    public AjaxResult edit(Client client) {
        try {
            service.updateByPrimaryKey(client);
            return new AjaxResult(true, "学员编辑成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "学员编辑失败");
        }
    }

    @RequiresPermissions("client:fileOut")
    @PermissionName("潜在学员文件导出")
    @RequestMapping("/client_fileOut")
    @ResponseBody
    public void fileOut(HttpServletResponse response) {
        try {
            response.setHeader("Content-Disposition", "attachment;filename=client.xls");
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream());
            WritableSheet sheet = workbook.createSheet("潜在学员", 0);
            sheet.addCell(new Label(0, 0, "建档日期"));
            sheet.addCell(new Label(1, 0, "姓名"));
            sheet.addCell(new Label(2, 0, "电话号码"));
            sheet.addCell(new Label(3, 0, "QQ"));
            sheet.addCell(new Label(4, 0, "Email"));
            sheet.addCell(new Label(5, 0, "工作年限"));
            List<Client> clients = service.selectAll();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 0; i < clients.size(); i++) {
                Client client = clients.get(i);
                sheet.addCell(new Label(0, i + 1,sdf.format(client.getBuildtime())));
                sheet.addCell(new Label(1, i + 1, client.getUsername()));
                sheet.addCell(new Label(2, i + 1, client.getTel()));
                sheet.addCell(new Label(3, i + 1, client.getQq()));
                sheet.addCell(new Label(4, i + 1, client.getEmail()));
                sheet.addCell(new Label(5, i + 1, sdf.format(client.getInputtime())));
            }
            workbook.write();
            workbook.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequiresPermissions("client:fileIn")
    @PermissionName("潜在学员文件导入")
    @RequestMapping("/client_fileIn")
    @ResponseBody
    public AjaxResult fileIn(MultipartFile file) {
        try {
            Workbook workbook = Workbook.getWorkbook(file.getInputStream());
            Sheet sheet = workbook.getSheet(0);
            int rows = sheet.getRows();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (int i = 1; i < rows; i++) {
                Client client = new Client();
                if(sheet.getCell(0, i).getContents() != null){
                    client.setId(Long.parseLong(sheet.getCell(0, i).getContents()));
                }
                client.setUsername(sheet.getCell(1, i).getContents());
                if(sheet.getCell(2,i).getContents() != null){
                    client.setMarketuser(employeeService.getEmployeeByName(sheet.getCell(2,i).getContents()));
                }
                if(sheet.getCell(3,i).getContents() != null){
                    client.setTracktime(Integer.parseInt(sheet.getCell(3,i).getContents()));
                }
                if(sheet.getCell(4,i).getContents() != null){
                    client.setLasttrackdate(sdf.parse(sheet.getCell(4,i).getContents()));
                }
                if(sheet.getCell(5,i).getContents() != null){
                    client.setInterviewtime(sdf.parse(sheet.getCell(5,i).getContents()));
                }
                if(sheet.getCell(6,i).getContents() != null){
                    client.setNexttime(sdf.parse(sheet.getCell(6,i).getContents()));
                }
                if(sheet.getCell(7,i).getContents() != null){
                    client.setInputtime(sdf.parse(sheet.getCell(7,i).getContents()));
                }
                client.setQq(sheet.getCell(8, i).getContents());
                client.setTel(sheet.getCell(9, i).getContents());
                client.setSchoolname(sheet.getCell(10, i).getContents());
                client.setWantedlevel(sheet.getCell(11, i).getContents());
                client.setWantedschool(sheet.getCell(12, i).getContents());
                client.setWantedclass(null);
                client.setRemark(sheet.getCell(14, i).getContents());
                client.setClienttype(sheet.getCell(15, i).getContents());
                client.setStatus(sheet.getCell(16,i).getContents());
                client.setTrackstate("待跟踪".equals(sheet.getCell(17,i).getContents())?true:false);
                service.insert(client);

                /*emp.setUsername(sheet.getCell(0,i).getContents());
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
                service.insert(emp);*/
            }
            return new AjaxResult(true, "潜在学员导入成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "潜在学员导入失败");
        }
    }
}
