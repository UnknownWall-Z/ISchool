<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/schoolClient.js"></script>

    <style>
        input {
            width: 100px;
        }
    </style>
</head>

<body>
<div id=""></div>

<div id="schoolClient_dialog">
    <form action="" method="post" id="editForm">
        <table align="center" style="margin-top: 18px">
            <tbody>
            <input type="hidden" id="eidtFormId" name="id">
            <input type="hidden" name="state">
            <tr>
                <td>学校名字</td>
                <td><input type="text" name="name"></td>
                <td>学校地址</td>
                <td><input type="text" name="location"></td>
                <td>重要度</td>
                <td><input class="easyui-combobox" name="importance"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=importance'"/></td>
            </tr>

            <tr>
                <td>意向度</td>
                <td><input class="easyui-combobox" name="wantedLevel"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedLevel'"/></td>
                <td>意向学科</td>
                <td><input class="easyui-combobox" name="wantedSubject"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedSubject'"/></td>
                </td>
                <td>意向学区</td>
                <td><input class="easyui-combobox" name="wantedSchool"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedSchool'"/></td>
            </tr>
            <tr>
                <td>跟进人员</td>
                <td><input name="tracer.id" class="easyui-combobox" data-options="
                                valueField: 'id',
                                textField: 'username',panelHeight:'auto',
                                url: '/employee_listAll.do',panelHeight:'auto'"/>
                </td>
                <td>下次跟进时间</td>
                <td><input type="text" name="nextTraceTime" class="easyui-datebox"></td>
                <td>学校电话</td>
                <td><input type="text" name="schooleTel"></td>
            </tr>
            <tr style="margin: 10px"></tr>

            <tr>
                <td>学校邮箱</td>
                <td><input type="text" name="email"></td>
                <td>学生数</td>
                <td><input type="text" name="studentNum"></td>
                <td>IT专业学生数</td>
                <td><input type="text" name="itstudentNum"></td>
            </tr>
            <tr>
                <td>学校类型</td>
                <td><input class="easyui-combobox" name="type"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=schoolType'"/></td>
                <td>学历</td>
                <td><input class="easyui-combobox" name="education"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=education'"/></td>

                <%--<td>建表时间</td>
                <td><input type="text" name="buildingTime" class="easyui-datebox"></td>--%>
                <td>传真</td>
                <td><input type="text" name="telegraph"></td>
            </tr>
            <tr>
                <td>邮政编码</td>
                <td><input type="text" name="postcode"></td>

                <td>教师数量</td>
                <td><input type="text" name="teacherNum"></td>
                <td>学生总数</td>
                <td><input type="text" name="allStudent"></td>
            </tr>

                <tr>
                    <td> 备注</td>
                    <td>
                        <textarea name="remark" ></textarea>
                    </td>
                </tr>
                <tr>
                    <td> 学校简介</td>
                    <td colspan="4" rowspan="4">
                        <textarea name="introduction" ></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>
<table id="schoolClient_datagrid"></table>


<div id="pool_distribute_dialog">
    <form id="pool_distribute">
        <table id="pool_distribute_datagrid" class="easyui-datagrid"></table>
        <table>
            <tr>
                <td> 备注</td>
                <td colspan="2">
                    <input id="pool_distribute_marke" type="text" name="remark"/>
                <td>
            </tr>
            <tr>
                <td> 分配给员工</td>
                <td>
                    <input id="pool_distribute_outEmp" type="text" name="inEmp.id" class="easyui-combobox"
                           data-options="
                        url:'/employee_listAll.do',
                        valueField:'id',
                        textField:'username'
                        ,panelHeight:'auto'
                    ">
                </td>

            </tr>
        </table>
    </form>
</div>
<div id="pool_distribute_btn">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="pool_distribute_save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="pool_distribute_cancel">取消
    </a>
</div>


<div id="search_dialog">
    <table align="center" style="margin-top: 18px">
        <input type="hidden" name="id">
        <tbody>
        <tr>
            <td>学校名字</td>
            <td><input type="text" id="schoolName" name="schoolName" class="combobox" data-options="
                url:'/schoolClient_listALl.do',
                valueField:'name',
                textField:'name'
            "></td>
            <td>学校类型</td>
            <td><input class="easyui-combobox" id="schoolType" name="type"
                       data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=schoolType'"/></td>
        </tr>
        <tr>
            <td>营销人员</td>
            <td><input type="text" id="recruiterId" name="recruiterId"
                       class="easyui-combobox" data-options="
                       url:'/employee_listAll.do',
                       valueField:'id',
                       textField:'username'
                        "></td>
            <td>客户状态</td>
            <td><input class="easyui-combobox" id="state" name="state"
                       data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=schoolState'"/></td>
        </tr>
        </tbody>
    </table>
</div>
<div id="btn_querySearch">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="pageQuery_save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="pageQuery_cancel">取消</a>
</div>


<div id="schoolClient_tb">
    <a id="schoolClient_add" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加
    </a>
    <a id="schoolClient_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
       data-cmd="edit">编辑</a>
    <a id="schoolClient_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="trace">跟进</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <a class="easyui-menubutton" data-options="menu:'#pool',iconCls:'icon-edit',plain:true" data-cmd="pool">资源池</a>
    <a class="easyui-menubutton" data-options="menu:'#quickSearch',iconCls:'icon-edit',plain:true">快查</a>
    <a id="emp_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="selectQuery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="fileIn">导入</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
       href="/schoolLinkMan_view.do">前往学校联系人编辑页面
    </a>

</div>
<div id="fileIn">
    <form id="schoolFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>
<div id="file_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
</div>


<div id="pool" style="width:150px;">
    <div id="view_pool" data-cmd="view_pool" data-options="iconCls:'icon-redo'">查看资源池</div>
    <div id="back_pool" data-cmd="back_pool" data-options="iconCls:'icon-undo'">返回</div>
    <div class="menu-sep"></div>
    <div id="push_pool" data-cmd="push_pool">放入资源池</div>
    <div id="distribute_pool" data-cmd="distribute_pool">分配任务</div>
    <div id="take_pool" data-cmd="take_pool">接手</div>
</div>
<div id="quickSearch" style="width:170px;">
    <div id="search_near5" data-cmd="search_near5" data-options="iconCls:'icon-redo'">最近五天要跟进的客户</div>
    <div id="search_near10" data-cmd="search_near10" data-options="iconCls:'icon-undo'">最近十天要跟进的客户</div>
    <div class="menu-sep"></div>
    <div id="search_eagerness3" data-cmd="search_eagerness3">意向高</div>
    <div id="search_eagerness2" data-cmd="search_eagerness2">意向中</div>
    <div id="search_eagerness1" data-cmd="search_eagerness1">意向低</div>
    <div class="menu-sep"></div>
    <div id="search_importance5" data-cmd="search_importance5">很重要</div>
    <div id="search_importance4" data-cmd="search_importance4">重要</div>
    <div id="search_importance3" data-cmd="search_importance3">有些重要</div>
    <div id="search_importance2" data-cmd="search_importance2">一般重要</div>
</div>


<div id="schoolClient_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
<div id="schoolTraceLog_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save_log">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel_log">取消</a>
</div>
<div id="schoolTraceLog_dialog">
    <form action="" method="post" id="traceForm">
        <input id="clientId" type="hidden" name="client.id">
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <input type="hidden" name="client.id">
            <input type="hidden" name="tracer.id">
            <tbody>
            <tr>
                <td>跟进人</td>
                <td><input name="tracer.id" class="easyui-combobox" data-options="
                        url:'/employee_listAll.do',
                        valueField:'id',
                        textField:'username'
                   "/>
                </td>
                <td>电话</td>
                <td><input name="tracer.tel"/></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td><input name="tracer.email"/></td>
                <td>跟进对象</td>
                <td><input name="client.id" class="easyui-combobox" data-options="
                        url:'/schoolClient_listAll.do',
                        valueField:'id',
                        textField:'name'
                   "/></td>
            </tr>
            <div class="menu-sep"></div>
            <tr>
                <td>跟进时间</td>
                <td><input type="text" name="talkTime" class="easyui-datebox"/></td>
                <td>跟进方式</td>
                <td><input class="easyui-combobox" name="talkWay"
                           data-options="valueField:'name',textField:'name',panelHeight:'auto',
                           url:'/systemdictionary_querySsnByItemParentSn.do?ssn=consultWay'"/></td>
            </tr>
            <div class="menu-sep"></div>
            <tr>
                <td>跟进记载</td>
                <td colspan="4" rowspan="4">
                    <textarea name="content" style="width:400px;height:80px;"></textarea>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>


</body>
</html>
