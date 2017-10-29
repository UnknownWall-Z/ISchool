package org.memory.ischool.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.memory.ischool.page.PageResult;
import org.memory.ischool.service.ITransferService;
import org.memory.ischool.util.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.memory.ischool.domain.Transfer;
import org.memory.ischool.query.TransferQueryObject;
import org.memory.ischool.util.PermissionName;

import java.util.List;

/**
 * Created by zmh on 2017/8/21.
 */
@Controller
public class TransferController extends BaseController {

    @Autowired
    private ITransferService service;

    @RequiresPermissions("transfer:view")
    @PermissionName("移交信息页面")
    @RequestMapping("/transfer_view")
    public String transfer() {
        return "transfer";
    }

    @RequestMapping("/transfer_list")
    @ResponseBody
    public PageResult list(TransferQueryObject qo) {

        return service.pageQuery(qo);
    }


    @RequestMapping("/transfer_listAll")
    @ResponseBody
    public List<Transfer> listAll() {
        return service.selectAll();
    }

    @RequiresPermissions("transfer:save")
    @PermissionName("移交信息保存")
    @RequestMapping("/transfer_save")
    @ResponseBody
    public AjaxResult save(Transfer r) {
        try {
            service.insert(r);
            return new AjaxResult(true, "移交信息保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "移交信息保存失败");
        }
    }

    @RequiresPermissions("transfer:delete")
    @PermissionName("移交信息删除")
    @RequestMapping("/transfer_delete")
    @ResponseBody
    public AjaxResult del(Long id) {
        try {
            service.deleteByPrimaryKey(id);
            return new AjaxResult(true, "移交信息删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "移交信息删除失败");
        }
    }

    @RequiresPermissions("transfer:edit")
    @PermissionName("移交信息编辑")
    @RequestMapping("/transfer_edit")
    @ResponseBody
    public AjaxResult edit(Transfer transfer) {
        try {
            service.updateByPrimaryKey(transfer);
            return new AjaxResult(true, "移交信息编辑成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new AjaxResult(false, "移交信息编辑失败");
        }
    }
}
