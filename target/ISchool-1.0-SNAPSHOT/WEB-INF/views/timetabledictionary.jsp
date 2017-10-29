<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>课程表管理</title>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/timetabledictionary.js"></script>
</head>
<body>
<!-- 数据表格 -->
<div class="easyui-layout" fit="true">
    <div data-options="region:'west',title:'课程表'" style="width:400px;">
        <table id="timetable_datagrid" style="width: 400px">
            <thead>
            <tr>
                <th data-options="field:'studentclass',width:100,align:'center'">班级名称</th>
                <th data-options="field:'employee',width:100,align:'center'">班主任</th>
                <th data-options="field:'timetableitem',width:100,align:'center'">课程明细</th>
            </tr>
            </thead>
        </table>
    </div>

    <div data-options="region:'center',title:'课程表明细'" style="width:1000px;">
        <table id="timetableitem_datagrid" style="width: 1000px" align="center">
            <thead>
            <tr >
                <th data-options="field:'schooltime',width:100,align:'center'">上课时间</th>
                <th data-options="field:'timetableitmename',width:100,align:'center'">课程表明细名称</th>
                <th data-options="field:'coursetitle',width:100,align:'center'">课程名称</th>
                <th data-options="field:'employee',width:100,align:'center'">任课老师</th>
                <th data-options="field:'roomclass',width:100,align:'center'">教室名称</th>
                <th data-options="field:'studentclass',width:100,align:'center'">班级名称</th>
                <th data-options="field:'remark',width:100,align:'center'">备注</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
<!-- 表数据表格 -->

<!-- 课程表下   新增编辑对话框 -->
<div id="timetable_dialog">
    <form id="timetable_form"  method="post">
        <table align="center" style="margin-top: 15px;">
            <input type="hidden" name="id">
            <tbody>
            <tr>
                <td>班级名称</td>
                <td><input name="studentclass.id" id="timetable_combobox"
                           class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'classname',
                     url: '/studentclass_listAll.do'
                  "/>
                </td>
            </tr>
            <tr>
                <td>班主任</td>
                <td><input name="employee.id" id="headteacher_combobox"
                           class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'realname',
                     url: '/employee_listAll.do'
                   "/>
                </td>
            </tr>
            <tr id="timetable_hide">
                <td>课程明细</td>
                <td><textarea name="timetableitem.id"
                           id="timetableitem_combobox"
                           class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'timetableitmename',
                     url: '/timetableitemdictionary_listAll.do'
                    "></textarea>
                </td>
            </tr>
        </table>
    </form>
</div>
<!-- 课程表上   新增编辑对话框 -->


<!--课程表明细!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
<!-- 课程表明细下   新增编辑对话框 -->
<div id="timetableitem_dialog"> <!--发的是-->
    <form action="" method="post" id="timetableitem_form">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id" id="itemId">
            <tbody>
            <tr >
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
                    url: '/employee_listAll.do'"/>
                </td>
            </tr>

            <tr>
                <td>教室名</td>
                <td><input name="roomclass.id" id="roomclass" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'classroom',
                    url: '/roomclass_listAll.do'"/>
                </td>
            </tr>
           <%-- <tr>
                <td>班级名称</td>
                <td><input name="studentclass.id" id="studentclass" class="easyui-combobox" data-options="
                    valueField:'id',
                    textField:'classname',
                    url:'/studentclass_listAll.do'"/>
                </td>
            </tr>--%>
            <tr>
                <td>课程备注</td>
                <td><textarea  name="remark" id="sv_remarks" contenteditable="true"
                               style="width: 133px;height: 80px; resize: none; text-indent: 5px;"
                               placeholder="请输入不超过50个字"></textarea></td>
            </tr>

            </tbody>
        </table>
    </form>
</div>
<!-- 课程表明细上   新增编辑对话框 -->


<!--课程表明细下  数据表格CRUD按钮 -->
<div id="timetableitem_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-item="additem">增加</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-item="delitem">删除</a>
    <a id="timetableitem_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-item="edititem">编辑</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-item="reloaditem">刷新</a>
    <input type="text" name="keyworditem" placeholder="课程名称 任课老师" style="height: 22px" >
    <input type="text" name="begindateitem" class="easyui-datebox" id="beginreload">
    <input type="text" name="enddateitem" class="easyui-datebox"  id="endingreload">
    <a id="timetableitem_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-item="selectQueryitem">查询</a>
</div>
<div id="timetableitem_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-item="saveitem">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-item="cancelitem">取消</a>
</div>
<!--课程表明细上  数据表格CRUD按钮 -->


<!--课程下    数据表格CRUD按钮-->
<div id="timetablex_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <input type="text" name="keyword" placeholder="班级名称 班主任" style="height: 24px">
    <a id="timetable_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
</div>
<!--课程上    数据表格CRUD按钮-->
</body>
</html>