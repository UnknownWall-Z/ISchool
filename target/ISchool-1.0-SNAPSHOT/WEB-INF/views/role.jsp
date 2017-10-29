<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/role.js"></script>
</head>
<body>

<div id="role_dialog">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
                <tbody>
                    <tr>
                        <td>名称<input type="text" name="name"></td>
                        <td>编号<input type="text" name="sn"></td>
                    </tr>
                    <tr>
                        <td><table id="allPermissions" align="center" style="margin-top: 8px"></table></td>
                        <td><table id="selfPermissions" align="center" style="margin-top: 8px"></table></td>
                    </tr>
                </tbody>
        </table>
    </form>
</div>


<table id="role_datagrid"></table>

<div id="role_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="role_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a id="role_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="del">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
</div>

<div id="role_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
</body>
</html>
