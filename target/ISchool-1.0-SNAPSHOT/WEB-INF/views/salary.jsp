<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/salary.js"></script>
</head>
<body>

<table id="salary_datagrid"></table>

<div id="salary_dialog">
    <form method="post" id="salary_form">
        <table align="center" style="margin-top: 15px">
            <input type="hidden" name="id">
            <tbody>

            <tr>
                <td>员工编号</td>
                <td><input type="text" name="employee.id" readonly="true"></td>
            </tr>
            <tr>
                <td>员工</td>
                <td><input type="text" name="employee.realname" readonly="true"></td>
            </tr>

            <tr>
                <td>工资</td>
                <td><input type="text" name="salary"></td>
            </tr>

            <tr>
                <td>结算日期</td>
                <td><input type="text" name="balancedate" class="easyui-datebox"></td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

<div id="fileIn">
    <form id="SalaryFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">

    </form>
</div>

<div id="salary_tb">
    <a id="salary_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="del">删除</a>
    <input type="text" name="startdate" class="easyui-datebox">
    ----
    <input type="text" name="enddate" class="easyui-datebox">
    &nbsp;&nbsp;&nbsp;&nbsp;

    <a class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" data-cmd="fileOut">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-redo',plain:true" data-cmd="fileIn">导入</a>

    年份&nbsp; <select id="myYear"></select> &nbsp;

    月份&nbsp; <select id="myMonth">
            <option></option>
            <option value="1">1月</option>
            <option value="2">2月</option>
            <option value="3">3月</option>
            <option value="4">4月</option>
            <option value="5">5月</option>
            <option value="6">6月</option>
            <option value="7">7月</option>
            <option value="8">8月</option>
            <option value="9">9月</option>
            <option value="10">10月</option>
            <option value="11">11月</option>
            <option value="12">12月</option>
        </select>

    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="balance">结算</a>

    <input type="text" name="keyword" style="text-align: center;" placeholder="内容关键字">
    <a id="salary_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>

</div>

<div id="salary_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
