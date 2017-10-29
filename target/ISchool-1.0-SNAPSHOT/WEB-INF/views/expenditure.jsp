<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/expenditure.js"></script>
</head>
<body>

<table id="expenditure_datagrid"></table>

<div id="expenditure_dialog">
    <form id="expenditureForm" class="easyui-form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">时间:</td>
                <td><input type="text" name="date" class="easyui-datebox"></td>
                <td align="right">支出金额:</td>
                <td><input type="text" name="amount"></td>
            </tr>
            <tr>
                <td align="right">摘要:</td>
                <td><input type="text" name="summary"/></td>
                <td align="right">出纳人:</td>
                <td><input class="easyui-combobox" name="cashier.id"
                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do'"></td>
            </tr>

            <tr>
                <td align="right">经手人:</td>
                <td><input class="easyui-combobox" name="handler.id"
                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do'"/>
                </td>
                <td align="right">支出方式:</td>
                <td><input type="text" name="paymethod"></td>
            </tr>

            <tr>
                <td align="right">类型:</td>
                <td><input type="text" name="paytype"></td>
                <td align="right">小类:</td>
                <td><input type="text" name="subclass"></td>
            </tr>

            <tr>
                <td align="right">单据号:</td>
                <td><input type="text" name="documentnumber"></td>
                <td align="right">归属学科:</td>
                <td><input type="text" name="subject"></td>
            </tr>

        </table>
    </form>
</div>


<div id="expenditureread_dialog">
    <form id="expenditurereadForm" class="easyui-form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">时间:</td>
                <td><input type="text" name="date"></td>
                <td align="right">支出金额:</td>
                <td><input type="text" name="amount"></td>
            </tr>
            <tr>
                <td align="right">摘要:</td>
                <td><input type="text" name="summary"/></td>
                <td align="right">出纳人:</td>
                <td><input type="text" name="cashier.id"></td>
            </tr>

            <tr>
                <td align="right">经手人:</td>
                <td><input type="text" name="handler.id"/>
                </td>
                <td align="right">支出方式:</td>
                <td><input type="text" name="paymethod"></td>
            </tr>

            <tr>
                <td align="right">类型:</td>
                <td><input type="text" name="paytype"></td>
                <td align="right">小类:</td>
                <td><input type="text" name="subclass"></td>
            </tr>

            <tr>
                <td align="right">单据号:</td>
                <td><input type="text" name="documentnumber"></td>
                <td align="right">归属学科:</td>
                <td><input type="text" name="subject"></td>
            </tr>

        </table>
    </form>
</div>


<div id="fileIn">
    <form id="fileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

    <div id="expenditure_tb">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
           data-cmd="add">添加</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="show">查看</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true"
           data-cmd="del">删除</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出Excel</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileIn">导入Excel</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="changestate">审核</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" data-cmd="cancelaudit">取消审核</a>

        <input type="text" name="keyword" placeholder="内容关键字">
        <a id="expenditure_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
           data-cmd="selectQuery">查询</a>
    </div>

    <div id="expenditure_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>

    <div id="expenditureread_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveread">确认</a>
    </div>

    <div id="file_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
    </div>


</body>
</html>
