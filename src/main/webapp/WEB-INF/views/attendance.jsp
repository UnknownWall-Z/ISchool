<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/attendance.js"></script>
</head>
<body>

<div id="attendance_dialog">
    <form method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="currenttime">
            <tbody>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="employee.username"></td>
            </tr>

            <tr>
                <td>签到时间</td>
                <td><input type="text" name="signintime"></td>
            </tr>
            <tr>
                <td>签退时间</td>
                <td><input type="text" name="signouttime"></td>
            </tr>

            <tr id="attendance_onDutyState">
                <td>上班状态</td>
                <td>
                    <select class="easyui-combobox" name="ondutystate" style="width: 160px" data-options="panelHeight:'auto'">
                        <option value="true">正常打卡</option>
                        <option value="false">迟到</option>
                    </select>
                </td>
            </tr>

            <tr id="attendance_offDutyState">
                <td>下班状态</td>
                <td>
                    <select class="easyui-combobox" name="offdutystate" style="width: 160px" data-options="panelHeight:'auto'">
                        <option value="true">正常打卡</option>
                        <option value="false">早退</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>补签时间</td>
                <td><input type="text" name="addsigntime"></td>
            </tr>
            </tbody>
        </table>
    </form>
</div>


<table id="attendance_datagrid"></table>

<div id="attendance_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="signIn">签到</a>
    <a id="signOut" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="signOut">签退</a>
    <a id="addSign" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="addSignt">补签</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
</div>

<div id="attendance_bt">
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

</body>
</html>
