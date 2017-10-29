<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/roomclass.js"></script>
</head>
<body>

<div id="roomclass_dialog">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>
            <tr>
                <td>教室</td>
                <td><input type="text" name="classroom"  ></td>
            </tr>
            <tr>
                <td>教室位置</td>
                <td><input type="text" name="roomlocation"></td>
            </tr>


            <tr>
                <td>使用班级</td>
                <td><input name="studentclass.id" id="roomclass_combobox"  class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'classname',
                    url: '/studentclass_listAll.do'"/>
                </td>
            </tr>
            <tr>
                <td>学生总数</td>
                <td><input type="text" name="totalstudent"></td>
            </tr>
            <tr>
                <td>使用时间</td>
                <td><input type="text" name="inputdate"  class="easyui-datebox"></td>
            </tr>

            <tr>
                <td>备注</td>
                <td><textarea  name="remark" id="sv_remarks" contenteditable="true"
                          style="width: 91.5%; resize: none; text-indent: 5px;"
                          placeholder="请输入不超过50个字"></textarea></td>
            </tr>

            </tbody>
        </table>
    </form>
</div>


<table id="roomclass_datagrid"></table>

<div id="fileIn">
    <form id="roomclassFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

<div id="roomclass_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="roomclass_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword" placeholder="教室 教室地址" style="height: 26px">
    <input type="text" name="begindate"  class="easyui-datebox" id="begin">
    <input type="text" name="enddate"  class="easyui-datebox" id="ending">
    <a id="roomclass_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出</a>
</div>

<div id="roomclass_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
