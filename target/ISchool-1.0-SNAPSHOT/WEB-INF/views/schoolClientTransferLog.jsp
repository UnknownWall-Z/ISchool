<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/schoolClientTransferLog.js"></script>
</head>
<body>

<div id="log_dialag">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <input type="hidden" name="clientSchool.id">
            <input type="hidden" name="outEmp.id">
            <input type="hidden" name="inEmp.id">
            <tbody>
            <tr>
                <td>转出方</td>
                <td><input placeholder="从资源池" readonly="readonly" style="width: 100px" name="outEmp.username"
                          /></td>
                <td>转入方</td>
                <td><input placeholder="转向资源池" readonly="readonly" style="width: 100px" name="inEmp.username"
                          /></td>
            </tr>
            <tr>
                <td>转接学校</td>
                <td><input readonly="readonly" style="width: 100px" name="clientSchool.name" ></td>
                <td>制表时间</td>
                <td><input name="inputTime" style="width: 100px" class="easyui-datebox" readonly="readonly"/></td>
            </tr>
            <tr id="audit">
                <td>审核判定</td>
                <td>
                    <input type="radio" checked="checked" name="result" value="true">审核通过&nbsp;&nbsp;
                    <input type="radio" name="result" value="false">退回申请
                </td>
            </tr>
            <tr id="log_manager">
                <td>审核人</td>
                <td><input type="text" style="width: 100px" readonly="readonly" name="manager.username"></td>
            </tr>
            <tr>
                <td>结果:</td>
            </tr>
            <%--<tr>
                <td>转交说明</td>
                <td><input type="text" readonly="readonly" name="remark"></td>
            </tr>--%>
            <tr>
                <td>审核意见</td>
                <td colspan="3"
                    rowspan="2"><input type="text" style="height: 80px;width: 300px;" id="auditMsg" name="auditMsg">
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>


<table id="log_datagrid"></table>

<div id="fileIn">
    <form id="empFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

<div id="log_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="view">查看</a>
    <a id="btn_log_audit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="audit">审核
    </a>
    <input type="text" id="search" style="width: 120px;"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="search">搜索</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="noAudit">未审核</a>

</div>

<div id="log_bt">
    <a id="save" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">审核</a>
    <a id="cancel" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

</body>
</html>
