<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/studentloss.js"></script>
</head>
<body>

<table id="studentloss_datagrid"></table>

<div title="添加流失学生" id="losssave_dialog">
    <form id="losssaveForm" class="easyui-form" method="post">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">学员姓名:</td>
                <td><input class="easyui-combobox" name="id"
                           data-options="valueField:'id',textField:'username',url:'/student_listAll.do'"/></td>
            </tr>
            <tr style="height: 10px">
                <td align="right">流失阶段:</td>
                <td><input type="text" name="lossstage"/></td>
            </tr>
            <tr>
                <td align="right">流失原因:</td>
                <td><input type="text" name="lossreason"/></td>
            </tr>
        </table>
    </form>
</div>

<div title="编辑流失学生" id="lossedit_dialog">
    <form id="losseditForm" class="easyui-form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">学员姓名:</td>
                <td><input type="text" name="name"></td>
                <td align="right">QQ:</td>
                <td><input type="text" name="qq"></td>
            </tr>
            <tr>
                <td align="right">电话:</td>
                <td><input name="tel" type="text"/></td>
                <td align="right">上课天数:</td>
                <td><input type="text" name="studydays"></td>
            </tr>

            <tr>
                <td align="right">流失班级:</td>
                <td><input class="easyui-combobox" name="lossclass.id"
                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/>
                </td>
                <td align="right">流失阶段:</td>
                <td><input type="text" name="lossstage"></td>
            </tr>

            <tr>
                <td align="right">流失原因:</td>
                <td><input type="text" name="lossreason"></td>
                <td align="right">流失时间:</td>
                <td><input type="text" name="lossdate" class="easyui-datebox"></td>
            </tr>

            <tr>
                <td align="right">营销人员:</td>
                <td><input class="easyui-combobox" name="marketuser.id"
                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do'"/>
                </td>
                <td align="right">是否退款:</td>
                <td><select name="refund" class="easyui-combobox" style="width: 160px" data-options="panelHeight:'auto'">
                    <option value="true">是</option>
                    <option value="false">否</option>
                </select></td>
            </tr>

        </table>
    </form>
</div>

<div title="查看流失学生" id="lossread_dialog">
    <form id="lossreadForm" class="easyui-form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <tr>
                <td align="right">学员姓名:</td>
                <td><input type="text" name="name"></td>
                <td align="right">QQ:</td>
                <td><input type="text" name="qq"></td>
            </tr>
            <tr>
                <td align="right">电话:</td>
                <td><input name="tel" type="text"/></td>
                <td align="right">上课天数:</td>
                <td><input type="text" name="studydays"></td>
            </tr>

            <tr>
                <td align="right">流失班级:</td>
                <td><input type="text" name="lossclass.id"/>
                </td>
                <td align="right">流失阶段:</td>
                <td><input type="text" name="lossstage"></td>
            </tr>

            <tr>
                <td align="right">流失原因:</td>
                <td><input type="text" name="lossreason"></td>
                <td align="right">流失时间:</td>
                <td><input type="text" name="lossdate"></td>
            </tr>

            <tr>
                <td align="right">营销人员:</td>
                <td><input type="text" name="marketuser.id"/>
                </td>
                <td align="right">是否退款:</td>
                <td><input type="text" id="refund"></td>
            </tr>

        </table>
    </form>
</div>

    <div id="studentloss_tb">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
           data-cmd="add">添加</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="show">查看</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>


        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出Excel</a>


        <input type="text" name="keyword">
        <a id="studentloss_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
           data-cmd="selectQuery">查询</a>
    </div>

    <div id="studentloss_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>

    <div id="studentread_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveread">确认</a>
    </div>

    <div id="loss_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="editLoss">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelLoss">取消</a>
    </div>

</body>
</html>
