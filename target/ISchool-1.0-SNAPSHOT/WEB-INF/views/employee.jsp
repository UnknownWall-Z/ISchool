<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/employee.js"></script>
</head>
<body>

<div id="emp_dialog">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>真实姓名</td>
                <td><input type="text" name="realname"></td>
            </tr>

            <tr id="emp_pwd">
                <td>密码</td>
                <td><input type="text" name="password"></td>
            </tr>

            <tr>
                <td>电话</td>
                <td><input type="text" name="tel"></td>
            </tr>
            <tr>
                <td>部门</td>
                <td><input name="dept.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'name',
                    url: '/department_listAll.do',panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>入职时间</td>
                <td><input type="text" name="inputtime" class="easyui-datebox"></td>
            </tr>
            <tr id="emp_state">
                <td>状态</td>
                <td>
                    <select class="easyui-combobox" name="state" style="width: 160px" data-options="panelHeight:'auto'" readonly="true">
                        <option value="true">在职</option>
                        <option value="false">离职</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>管理员</td>
                <td>
                    <select class="easyui-combobox" name="admin" style="width: 160px" data-options="panelHeight:'auto'">
                        <option value="true">是</option>
                        <option value="false">否</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>角色</td>
                <td><input id="roles" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'name',
                    url: '/role_listAll.do',panelHeight:'auto',multiple:true"/>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>


<table id="emp_datagrid"></table>

<div id="fileIn">
    <form id="empFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

<div id="emp_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="emp_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a id="emp_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="changState">离职</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword">
    <a id="emp_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="fileIn">导入</a>
</div>

<div id="emp_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
