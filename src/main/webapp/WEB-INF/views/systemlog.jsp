<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/systemlog.js"></script>
</head>
<body>

<div id="systemlog_dialog">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>
            <tr>
                <td>操作用户</td>
                <td><input type="text" name="opuser.id"  class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'realname',
                    url: '/employee_listAll.do',"/></td>
            </tr>
            <tr>
                <td>操作时间</td>
                <td><input type="text" name="optime" class="easyui-datebox"></td>
            </tr>
            <tr>
                <td>登陆IP</td>
                <td><input type="text" name="opip" class="easyui-datebox"></td>
            </tr>

            <tr>
                <td>使用功能</td>
                <td><input name="function"  class="easyui-combobox" /></td>
            </tr>
                <td>操作信息</td>
                <td><input type="text" name="params" class="easyui-combobox"></td>
            </tr>
            </tbody>
        </table>
    </form>
</div>


<table id="systemlog_datagrid"></table>

<div id="systemlog_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="del">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword" placeholder="操作用户 登录IP" style="width: 120px ;height: 26.9px" >
    <input type="text" name="begindate" class="easyui-datebox"  id="begin">
    <input type="text" name="enddate" class="easyui-datebox"  id="ending">
    <a id="systemlog_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
</div>
<div id="systemlog_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
</body>
</html>
