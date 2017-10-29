<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/studentclass.js"></script>
</head>
<body>

<div id="studentclass_dialog">
    <form action="" method="post" id="editForm" a>
        <table align="center" style="margin-top: 20px">
            <input type="hidden" name="id">
            <tbody>

            <tr>
                <td>班级名称</td>
                <td><input type="text" name="classname"></td>
            </tr>


            <tr id="studentclass_pwd">
                <td>学生总数</td>
                <td><input type="text" name="tatolstudent"></td>
            </tr>

            <tr>
                <td>座位总数</td>
                <td><input type="text" name="seating"></td>
            </tr>

            <tr>
                <td>班主任</td>
                <td><input name="headteacher.id"  id="studentclass_combobox"  class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'realname',
                     url: '/employee_listAll.do'
                   "/>
                </td>
            </tr>

            <tr>
                <td>班级地址</td>
                <td><input type="text" name="classlocation"></td>
            </tr>

            <tr>
                <td>归属系</td>
                <td><input type="text" name="affilliation" ></td>
            </tr>

            <tr id="studentclass_state">
                <td>课程表状态</td>
                <td>
                    <select class="easyui-combobox" name="state" style="width: 160px" data-options="panelHeight:'auto'" readonly="true">
                        <option value="true">未分配</option>
                        <option value="false">已分配</option>
                    </select>
                </td>
            </tr>

            </tbody>
        </table>
    </form>
</div>


<table id="studentclass_datagrid"></table>

<div id="fileIn">
    <form id="studentclassFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

<div id="studentclass_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="studentclass_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a id="studentclass_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="changState">分配课程</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword" placeholder="班主任 座位 班级" style="height: 27px">
    <a id="studentclass_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="fileIn">导入</a>
</div>

<div id="studentclass_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
