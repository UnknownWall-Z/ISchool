<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/department.js"></script>
</head>
<body>

<div id="department_dialog">
    <form method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>
            <tr>
                <td>部门编号</td>
                <td>
                    <input type="text" name="sn">
                </td>
            </tr>
            <tr>
                <td>部门名称</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>部门经理</td>
                <td>
                    <input class="easyui-combobox" name="manage.id"
                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do',panelHeight:'auto'"/>
                </td>
            </tr>

            <tr>
                <td>上级部门</td>
                <td><input class="easyui-combobox" name="parent.id"
                           data-options="valueField:'id',textField:'name',url:'/department_listAll.do',panelHeight:'auto'"/>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>


<table id="department_datagrid"></table>

<div id="fileIn">
    <form id="departmentFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

<div id="department_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="department_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a id="department_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changState">停用</a>
    <a id="department_restorechagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="restoreChangState">取消停用</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword" >
    <select id="department_state" class="easyui-combobox" name="state" panelHeight='auto' style="width:100px;">
        <option value="">状态</option>
        <option value="true">正常</option>
        <option value="false">停用</option>
    </select>

    <a id="department_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="selectQuery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" data-cmd="fileOut">导出</a>
    <%--<a class="easyui-linkbutton" data-options="iconCls:'icon-redo',plain:true" data-cmd="fileIn">导入</a>--%>
</div>

<div id="department_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
