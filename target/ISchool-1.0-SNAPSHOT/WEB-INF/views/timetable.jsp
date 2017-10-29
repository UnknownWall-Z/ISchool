<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/timetable.js"></script>
    <script type="text/javascript" src="/static/js/timetableitem.js"></script>
</head>
<body>
<div id="timetable_dialog">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>

            <tr>
                <td>班级名称</td>
                <td><input name="studentclass.id" id="timetable_combobox"
                           class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'classname',
                     url: '/studentclass_listAll.do'
                    ,panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>班主任</td>
                <td><input name="employee.id" id="headteacher_combobox"
                           class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'realname',
                     url: '/employee_listAll.do'
                    ,panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>课程明细</td>
                <td><input name="timetableitem.id"
                           id="timetableitem_combobox"
                           class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'timetableitmename',
                     url: '/timetableitem_listAll.do'
                    ,panelHeight:'auto'"/>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>

<%--分配课程 引用明细 --%>
<div id="timetableitem_dialog">
    <form action="" method="post" id="allocationCourseForm">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>
            <tr>
                <td>名称</td>
                <td><input type="text" name="timetableitmename" class="easyui-datebox"></td>
            </tr>
            <tr>
                <td>上课时间</td>
                <td><input type="text" name="schooltime" class="easyui-datebox"></td>
            </tr>
            <tr>
                <td>课程名称</td>
                <td><input type="text" name="coursetitle"></td>
            </tr>

            <tr>
                <td>任课老师</td>
                <td><input name="employee.id" id="employee" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'realname',
                    url: '/employee_listAll.do',panelHeight:'auto'"/>
                </td>
            </tr>

            <tr>
                <td>教室名</td>
                <td><input name="roomclass.id" id="roomclass" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'classroom',
                    url: '/roomclass_listAll.do',panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>班级名称</td>
                <td><input name="studentclass.id" id="studentclass" class="easyui-combobox" data-options="
                    valueField:'id',
                    textField:'classname',
                    url:'/studentclass_listAll.do',panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>课程备注</td>
                <td><input type="text" name="remark"></td>
            </tr>

            </tbody>
        </table>
    </form>
</div>


<table id="timetable_datagrid"></table>

<div id="fileIn">
    <form id="timetableFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>

<div id="timetable_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="timetable_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a id="timetable_allocationCourse" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="allocationCourse">分配课程</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword">
    <a id="timetable_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
</div>

<div id="timetable_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>
</body>
</html>
