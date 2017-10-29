 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/clienttrack.js"></script>
    <style type="text/css">
        .btn_01 {
            background-color: transparent;
            border: none
        }
    </style>
</head>
<body>

<div id="clienttrack_dialog">
    <fieldset class="fieldset-border">
        <legend style="color: #FF00FF; font-size: 20px; font-weight: bold">客户跟踪信息</legend>
        <form id="clientTrack_form" method="post" enctype="multipart/form-data">
            <table align="center" style="margin-top: 18px">
                <input type="hidden" name="id">
                <tbody>
                <tr>
                    <td>潜在学员</td>
                    <td><input id="client" name="client.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'username',
                    url:'/client_listAll.do'"/>
                    </td>
                    <td>日期</td>
                    <td><input type="text" name="inputtime" class="easyui-datebox"></td>
                    <td>交流方式</td>
                    <td><input name="consultway" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=consultway',panelHeight:'auto'"/>
                </tr>
                <tr>
                    <td>营销人员：</td>
                    <td><input name="client.market.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'username',
                    url:'/employee_listAll.do',panelHeight:'auto'"/>
                    </td>
                    <td>电话：</td>
                    <td><input type="text" name="client.tel"></td>
                    <td>QQ：</td>
                    <td><input type="text" name="client.qq"></td>
                </tr>
                <tr>
                    <td>约访日期：</td>
                    <td><input type="text" name="nexttime" class="easyui-datebox"></td>
                    <td>当前状态：</td>
                    <td><input type="text" name="client.state" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=state',panelHeight:'auto'"/>
                    <td>意向程度：</td>
                    <td><input type="text" name="client.wantedlevel" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedlevel',panelHeight:'auto'"/>
                </tr>
                <tr>
                    <td>跟进目的：</td>
                    <td><input name="purpose" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=purpose',panelHeight:'auto'"/>
                    <td>意向学科：</td>
                    <td><input name="client.wantedsubject" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedSubject',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>上传聊天截图：</td>
                    <td><input type="file" name="file"></td>
                </tr>
                <tr>
                    <td>摘要：</td>
                    <td colspan="5"><input type="area" name="summary" width="30" height="30"
                                           class="borderstyle easyui-textbox"
                                           style="height:100px;width:550px"></td>
                </tr>
                </tbody>
            </table>
        </form>
    </fieldset>
</div>
<div id="clienttrack_readDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #FF00FF; font-size: 20px; font-weight: bold">基本信息</legend>
        <form id="clienttrack_readForm" method="post">
            <table align="center" style="margin-top: 15px;">
                <input type="hidden" name="id">
                <tr>
                    <td>时间：</td>
                    <td><input type="text" name="inputtime" disabled="disabled" class="btn_01"></td>
                    <td>营销人员：</td>
                    <td><input type="text" name="saleman" disabled="disabled" class="btn_01"></td>
                    <td>咨询方式：</td>
                    <td><input type="text" name="consultway" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>姓名：</td>
                    <td><input type="text" name="name" disabled="disabled" class="btn_01"></td>
                    <td>QQ：</td>
                    <td><input type="text" name="client.qq" disabled="disabled" class="btn_01"></td>
                    <td>电话：</td>
                    <td><input type="text" name="client.tel" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>下次访问时间：</td>
                    <td><input type="text" name="nexttime" disabled="disabled" class="btn_01">
                    </td>
                    <td>来源：</td>
                    <td><input type="text" name="client.origin" disabled="disabled" class="btn_01"></td>
                    <td>意向班级：</td>
                    <td><input type="text" name="studentClass" disabled="disabled" class="btn_01">
                    </td>
                </tr>
                <tr>
                    <td>意向程度：</td>
                    <td><input type="text" name="client.wantedlevel" disabled="disabled" class="btn_01">
                    <td>当前状态：</td>
                    <td><input type="text" name="client.state" disabled="disabled" class="btn_01"></td>
                    <td>客户类型：</td>
                    <td><input type="text" name="client.clienttype" disabled="disabled" class="btn_01">
                    </td>
                </tr>
                <tr>
                    <td>跟进目的：</td>
                    <td><input type="text" name="purpose" disabled="disabled" class="btn_01">
                    </td>
                </tr>
                <tr>
                    <td>摘要：</td>
                    <td colspan="5"><input type="area" name="summary" width="30" height="30" disabled="disabled"
                                           class="btn_01"
                                           style="height:100px;width:550px"></td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>

<%--高级查询--%>
<div id="clienttrack_queryDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #FF00FF; font-size: 15px; font-weight: bold">跟踪信息查询</legend>
        <form id="clienttrack_queryForm" method="post" class="easyui-form">
            <table align="center" style="margin-top: 15px;" cellspacing="10">
                <input type="hidden" name="id">
                <tr>
                    <td>营销人员</td>
                    <td><input class="easyui-combobox" name="saleManId"
                               data-options="valueField:'id',textField:'username',url:'/employee_listAll.do',panelHeight:'auto'"/>
                    </td>
                    <td>意向校区</td>
                    <td><input class="easyui-combobox" name="wantedSchool"
                               data-options="valueField:'name',textField:'name',url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedschool',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td><input class="easyui-combobox" name="name"
                               data-options="valueField:'username',textField:'username',url:'/client_listAll.do?',panelHeight:'auto'"/>
                    </td>
                    <td>意向学科</td>
                    <td><input class="easyui-combobox" name="subject"
                               data-options="valueField:'name',textField:'name',url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedSubject',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>QQ</td>
                    <td><input type="text" name="qq"></td>
                    <%-- <td>意向班级</td>
                     <td><input class="easyui-combobox" name="wantedClassId"
                                data-options="valueField:'id',textField:'name',url:'/schoolClass/selectListForStudentForm',panelHeight:'auto'"/>
                     </td>--%>
                </tr>
                <tr>
                    <td>录入时间</td>
                    <td><input name="beginTime" type="text" class="easyui-datebox"/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ~<br>
                        <input name="endTime" type="text" class="easyui-datebox"/></td>
                    </td>
                    <td>约访时间</td>
                    <td><input name="interviewBeginTime" type="text" class="easyui-datebox"/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ~<br>
                        <input name="interviewEndTime" type="text" class="easyui-datebox"/></td>
                    </td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>
<!--审核-->
<%--<div id="clienttrack_auditDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #FF00FF; font-size: 20px; font-weight: bold">跟踪审核</legend>
        <form id="clienttrack_auditForm" method="post">
            <table align="center" style="margin-top: 15px;">
                <input type="hidden" name="id">
                <tr>
                    <td>时间</td>
                    <td><input type="text" name="inputtime" disabled="disabled"></td>
                    <td>营销人员</td>
                    <td><input type="text" name="saleman" disabled="disabled"></td>
                    <td>咨询方式</td>
                    <td><input type="text" name="consultWay" disabled="disabled"></td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="username" disabled="disabled"></td>
                    <td>QQ</td>
                    <td><input type="text" name="client.qq" disabled="disabled"></td>
                    <td>电话</td>
                    <td><input type="text" name="client.tel" disabled="disabled"></td>
                </tr>
                <tr>
                    <td>结果</td>
                </tr>
                <tr>
                    <td><input type="text" name="interviewtime" disabled="disabled"></td>
                    <td>评分</td>
                    <td><input type="text" name="client.origin" disabled="disabled"></td>
                    <td>审核说明</td>
                    <td><input type="text" name="studentClass" disabled="disabled">
                    </td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>--%>
<table id="clienttrack_datagrid"></table>

<div id="clienttrack_tb">
    <%--<a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>--%>
    <a id="clienttrack_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a id="clienttrack_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="showme">查看</a>
    <a id="clienttrack_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="del">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="advanceQuery">高级查询</a>
   <%--  <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reveal">全展开收缩</a>--%>
    <%-- <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="changeState">审核</a>--%>
</div>


<div id="read_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="readcancel">确定</a>
</div>
<div id="query_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="aquery">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="querycancel">取消</a>
</div>
<div id="clienttrack_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="reset">重置</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
</body>
</html>
