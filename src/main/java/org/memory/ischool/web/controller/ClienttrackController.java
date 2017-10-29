package org.memory.ischool.web.controller;

import net.coobird.thumbnailator.Thumbnails;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.IClienttrackService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.memory.ischool.domain.Clienttrack;
import org.memory.ischool.query.ClienttrackQueryObject;
import org.memory.ischool.util.PermissionName;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class ClienttrackController extends BaseController {

    @Autowired
    private IClienttrackService service;

    @RequiresPermissions("clienttrack:view")
    @PermissionName("跟踪信息页面")
    @RequestMapping("/clienttrack_view")
    public String clienttrack() {
        return "clienttrack";
    }

    @RequestMapping("/clienttrack_list")
    @ResponseBody
    public PageResult list(ClienttrackQueryObject qo) {

        return service.pageQuery(qo);
    }


    @RequestMapping("/clienttrack_listAll")
    @ResponseBody
    public List<Clienttrack> listAll() {
        return service.selectAll();
    }

    @RequiresPermissions("clienttrack:save")
    @PermissionName("跟踪信息保存")
    @RequestMapping("/clienttrack_save")
    @ResponseBody
    public AjaxResult save(Clienttrack r, MultipartFile file, HttpServletRequest request) throws Exception {
        AjaxResult result = null;
        try {
            if (file.getSize() > 0) {
                String realPath = request.getSession().getServletContext().getRealPath("/static/upload");
                String path = UUID.randomUUID().toString();
                String fileName = file.getOriginalFilename();
                String fileType = fileName.substring(fileName.lastIndexOf("."));
                File targetFile = new File(realPath, path + fileType);
                FileOutputStream os = new FileOutputStream(targetFile);
                IOUtils.copy(file.getInputStream(), os);

                String smallImg = path + "_small" + fileType;
                File smallTargetFile = new File(realPath, smallImg);
                Thumbnails.of(targetFile).scale(0.08f).toFile(smallTargetFile);
                os.close();
                r.setFilePath("/static/upload/" + path + fileType);
            }
            service.insert(r);
            return new AjaxResult(true, "跟踪信息保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "跟踪信息保存失败");
        }
    }

    @RequiresPermissions("clienttrack:delete")
    @PermissionName("跟踪信息删除")
    @RequestMapping("/clienttrack_delete")
    @ResponseBody
    public AjaxResult del(Long id) {
        try {
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true, "跟踪信息删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "跟踪信息删除失败");
        }
    }

    @RequiresPermissions("clienttrack:edit")
    @PermissionName("跟踪信息编辑")
    @RequestMapping("/clienttrack_edit")
    @ResponseBody
    public AjaxResult edit(Clienttrack clienttrack) {
        try {
            service.updateByPrimaryKey(clienttrack);
            return new AjaxResult(true, "跟踪信息编辑成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "跟踪信息编辑失败");
        }
    }
}
