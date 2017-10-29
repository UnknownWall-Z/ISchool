<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/receipt.js"></script>
</head>
<body>

<table id="receipt_datagrid"></table>

<div id="receipt_dialog">
    <form id="receiptForm" class="easyui-form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">学员:</td>
                <td><input class="easyui-combobox" name="student.id" id="classin"
                           data-options="valueField:'id',textField:'username',url:'/student_listAll.do'"></td>
                <td align="right">收款时间:</td>
                <td><input type="text" name="date" class="easyui-datebox"></td>
            </tr>
            <tr>
                <td align="right">收款金额:</td>
                <td><input type="text" name="amount"/></td>
                <td align="right">班级:</td>
                <td><input class="easyui-combobox" name="studentclass.id"
                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"></td>
            </tr>

            <tr>
                <td align="right">收款人:</td>
                <td><input class="easyui-combobox" name="payee.id"
                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do'"></td>
                </td>
                <td align="right">收款方法:</td>
                <td><input type="text" name="method"></td>
            </tr>

            <tr>
                <td align="right">收款类型:</td>
                <td><input type="text" name="type"></td>
                <td align="right">单据号:</td>
                <td><input type="text" name="documentnumber"></td>
            </tr>

            <tr>
                <td align="right">开票:</td>
                <td><select name="bill" class="easyui-combobox" style="width: 160px" data-options="panelHeight:'auto'">
                    <option value="true">是</option>
                    <option value="false">否</option>
                </select></td>
                <td align="right">备注:</td>
                <td><input type="text" name="remark"></td>
            </tr>

            <tr>
                <td align="right">营销人员:</td>
                <td><input class="easyui-combobox" name="marketuser.id"
                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do'"></td>
                </td>
                <td align="right">班级变动:</td>
                <td><input type="text" name="classchange"></td>
            </tr>

        </table>
    </form>
</div>


<div id="receiptread_dialog">
    <form id="receiptreadForm" class="easyui-form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">学员:</td>
                <td><input type="text" name="student.id"></td>
                <td align="right">收款时间:</td>
                <td><input type="text" name="date"></td>
            </tr>
            <tr>
                <td align="right">收款金额:</td>
                <td><input type="text" name="amount"/></td>
                <td align="right">班级:</td>
                <td><input name="studentclass.id"></td>
            </tr>

            <tr>
                <td align="right">收款人:</td>
                <td><input type="text" name="payee.id"></td>
                </td>
                <td align="right">收款方法:</td>
                <td><input type="text" name="method"></td>
            </tr>

            <tr>
                <td align="right">收款类型:</td>
                <td><input type="text" name="type"></td>
                <td align="right">单据号:</td>
                <td><input type="text" name="documentnumber"></td>
            </tr>

            <tr>
                <td align="right">开票:</td>
                <td><input type="text" id="bill"></td>
                <td align="right">备注:</td>
                <td><input type="text" name="remark"></td>
            </tr>

            <tr>
                <td align="right">营销人员:</td>
                <td><input type="text" name="marketuser.id"></td>
                </td>
                <td align="right">班级变动:</td>
                <td><input type="text" name="classchange"></td>
            </tr>

        </table>
    </form>
</div>




<div id="fileIn">
    <form id="fileForm" method="post" enctype="multipart/form-data">
        <td align="right">上传文件:</td>
        <td><input type="file" name="file"></td>
    </form>
</div>

    <div id="receipt_tb">
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

        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="changestate">复核</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" data-cmd="cancelaudit">取消复核</a>

        <input type="text" name="keyword" placeholder="内容关键字">
        <a id="receipt_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
           data-cmd="selectQuery">查询</a>
    </div>

    <div id="receipt_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>

    <div id="receiptread_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveread">确认</a>
    </div>

    <div id="file_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
    </div>


</body>
</html>
