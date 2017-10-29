<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/schoolTraceLog.js"></script>

</head>
<body>

<div id="log_dialag">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <input type="hidden" name="client.id">
            <input type="hidden" name="tracer.id">
            <tbody>
            <tr>
                 <td>跟进人</td>
                 <td><input  style="width: 90px" name="tracer.username" readonly="readonly"/>
                  <span>
                     ${trace.username}
                 </span></td>
                 <td>电话</td>
                 <td><input  style="width: 90px" name="tracer.tel" readonly="readonly"/></td>
                 <td>邮箱</td>
                 <td><input  style="width: 90px" name="tracer.email" readonly="readonly"/></td>
             </tr>
             <tr>
                 <td>跟进对象</td>
                 <td><input  style="width: 90px" name="client.name" readonly="readonly"/></td>
                 <td>跟进时间</td>
                 <td><input  style="width: 90px" type="text" name="talkTime" readonly="readonly"/></td>
                 <td>跟进方式</td>
                 <td><input  style="width: 90px" type="text" name="talkWay" readonly="readonly"/></td>
             </tr>
             <tr id="log_manager">
                 <td>审核人</td>
                 <td><input  style="width: 90px" type="text" name="manager.username"></td>
             </tr>
             <tr>
                 <td>评分</td>
                 <td style="width:100px"><input  style="width: 90px" type="number" name="score"></td>
             </tr>
             <tr>
                 <td>结果:</td>
             </tr>
             <tr>
                 <td>审核说明</td>
                 <td><input type="text" name="scoreMsg"></td>
             </tr>
             <tr>
                 <td>跟进记录</td>
                 <td><input type="text" name="content" readonly="readonly"/></td>
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
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <%--<a id="emp_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="fileIn">导入</a>
     --%>
</div>

<div id="log_bt">
    <a id="save" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a id="cancel" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
