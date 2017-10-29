<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>数据字典管理</title>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/systemdictionary.js"></script>
</head>
<body>
<!-- 数据表格 -->

<div  class="easyui-layout" fit="true">
    <div data-options="region:'west',title:'字典目录'" style="width:600px;">
        <table id="systemdictionary_datagrid" style="width: 600px">
            <thead>
            <tr>
                <th data-options="field:'sn',width:100,align:'center'">字典目录编码</th>
                <th data-options="field:'name',width:100,align:'center'">字典目录名称</th>
                <th data-options="field:'intro',width:100,align:'center'">字典目录简介</th>
            </tr>
            </thead>
        </table>
    </div>

    <div data-options="region:'center',title:'字典目录明细'" style="width:1000px;">
        <table id="systemdictionaryitem_datagrid" style="width: 1000px">
            <thead>
            <tr>
                <th data-options="field:'id',width:100,align:'center'">字典编码</th>
                <th data-options="field:'intro',width:100,align:'center'">字典简介</th>
                <th data-options="field:'name',width:100,align:'center'">字典名称</th>
                <th data-options="field:'systemdictionary',width:100,align:'center',formatter:systemdictionFormatter">字典目录</th>
            </tr>
            </thead>
        </table>
    </div>
</div>

<!-- 新增编辑对话框 -->
<%--<div id="systemdictionary_dialog">
    <form id="systemdictionary_form" method="post">
        <table align="center" style="margin-top: 15px;">
            <input type="hidden" name="id">
            <tr>
                <td>字典目录编码</td>
                <td><input type="text" name="sn"></td>
            </tr>
            <tr>
                <td>字典目录名称</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>字典目录简介</td>
                <td><input type="text" name="intro"></td>
            </tr>
        </table>
    </form>
</div>--%>

<!--字典明细!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
<!-- 新增编辑对话框 -->
<div id="systemdictionaryitem_dialog">
    <form id="systemdictionaryitem_form" method="post">
        <table align="center" style="margin-top: 15px;">
            <input type="hidden" name="id">
            <%--<tr>
                <td>字典编码</td>
                <td><input type="text" name="sn"></td>
            </tr>--%>
            <tr>
                <td>字典名称</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>字典简介</td>
                <td><input type="text" name="intro"></td>
            </tr>

            <tr>
                <td>父级目录</td>
                <td>
                    <input class="easyui-combobox" name="systemdictionary.name"
                           data-options="valueField:'name',textField:'name',url:'/systemdictionary_listAll.do'" />
                </td>
            </tr>


        </table>
    </form>
</div>
<!-- 数据表格CRUD按钮 -->
<div id="systemdictionaryitem_datagrid_tb">
    <div>
        <a class="easyui-linkbutton" iconCls="icon-add" plain="true" data-cmd="additem">新增</a>
        <a class="easyui-linkbutton" iconCls="icon-edit" plain="true" data-cmd="edititem">編輯</a>
        <a class="easyui-linkbutton" iconCls="icon-remove" plain="true" data-cmd="delitem">刪除</a>
        <a class="easyui-linkbutton" iconCls="icon-reload" plain="true" data-cmd="reloaditem">刷新</a>
    </div>
</div>
<!-- 对话框保存取消按钮 -->
<div id="systemdictionaryitem_dialog_bt">
    <a class="easyui-linkbutton" iconCls="icon-save" plain="true" data-cmd="saveitem">保存</a>
    <a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" data-cmd="cancelitem">取消</a>
</div>
</body>
</html>