<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/upordown.js"></script>
</head>
<body>

<table id="upordown_datagrid"></table>

    <div title="学生转班" id="changeClass_dialog">
        <form id="changeClassForm" method="post">
            <table align="center" style="margin-top: 15px" cellpadding="5">
                <tr>
                    <td align="right">学员姓名:</td>
                    <td><input class="easyui-combobox" name="id"
                               data-options="valueField:'id',textField:'username',url:'/student_listAll.do'"/></td>
                </tr>
                <tr style="height: 10px"></tr>
                <tr>
                    <td align="right">要转入的班级:</td>
                    <td><input class="easyui-combobox" name="newclass"
                               data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/></td>
                </tr>
            </table>
        </form>
    </div>


    <div title="基本信息" id="upordown_dialog">
        <form id="upordown_form" method="post" class="easyui-form">
        <table align="center" style="margin-top: 10px;" cellpadding="5px">
            <input type="hidden" name="id">
            
            <tr>
                <td align="right">学员姓名:</td>
                <td><input type="text" name="username"></td>
                <td align="right">类型:</td>
                <td><input type="text" name="clienttype"></td>
            </tr>

            <tr>
                <td align="right">总学费:</td>
                <td><input type="text" name="totalfee" readonly="readonly"></td>
                <td align="right">其他费用:</td>
                <td><input type="text" name="otherfee" readonly="readonly"></td>
            </tr>

            <tr>
                <td align="right">升班/留级时间:</td>
                <td><input name="upordowndate" type="text" class="easyui-datebox"/></td>
                <td align="right">QQ:</td>
                <td><input type="text" name="qq"></td>
            </tr>


            <tr>
                <td align="right">联系电话:</td>
                <td><input name="tel" type="text"/></td>
                <td align="right">营销人员:</td>
                <td><input class="easyui-combobox" name="marketuser.id"
                           data-options="valueField:'id',textField:'username',url:'/employee_listAll.do'"/></td>
            </tr>


            <tr>
                <td align="right">以前的班级:</td>
                <td><input class="easyui-combobox" name="oldclass.id" readonly="readonly"
                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/></td>
                <td align="right">流入的班级:</td>
                <td><input class="easyui-combobox" name="studentclass.id" readonly="readonly"
                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/></td>
            </tr>

            <tr>
                <td align="right">当前状态:</td>
                <td><input name="state" type="text"/></td>
            </tr>

        </table>
        </form>
    </div>

    <div title="基本信息" id="upordownread_dialog">
        <form id="upordownread_form" method="post" class="easyui-form">
        <table align="center" style="margin-top: 10px;" cellpadding="5px">
            <input type="hidden" name="id">

            <tr>
                <td align="right">学员姓名:</td>
                <td><input type="text" name="username"></td>
                <td align="right">类型:</td>
                <td><input type="text" name="clienttype"></td>
            </tr>

            <tr>
                <td align="right">总学费:</td>
                <td><input type="text" name="totalfee"></td>
                <td align="right">其他费用:</td>
                <td><input type="text" name="otherfee"></td>
            </tr>

            <tr>
                <td align="right">升班/留级时间:</td>
                <td><input name="upordowndate" type="text"/></td>
                <td align="right">QQ:</td>
                <td><input type="text" name="qq"></td>
            </tr>


            <tr>
                <td align="right">联系电话:</td>
                <td><input name="tel" type="text"/></td>
                <td align="right">营销人员:</td>
                <td><input type="text" name="marketuser.id"/></td>
            </tr>


            <tr>
                <td align="right">以前的班级:</td>
                <td><input type="text" name="oldclass.id"/></td>
                <td align="right">流入的班级:</td>
                <td><input type="text" name="studentclass.id"/></td>
            </tr>

            <tr>
                <td align="right">当前状态:</td>
                <td><input type="text" name="state"/></td>
            </tr>

        </table>
        </form>
    </div>


    <div id="upordown_tb">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
           data-cmd="add">添加</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true"
           data-cmd="del">删除</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
           data-cmd="show">查看</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出Excel</a>

        <input type="text" name="keyword">
        <a id="upordown_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
           data-cmd="selectQuery">查询</a>
    </div>

    <div id="changeclass_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveChange">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelChange">取消</a>
    </div>

    <div id="upordown_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>

    <div id="upordownread_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveread">确认</a>
    </div>

</body>
</html>
