<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/studentChart.js"></script>
    <script type="text/javascript" src="/static/plugins/echarts/echarts-all.js"></script>
</head>
<body>

<table id="studentChart_datagrid">
</table>

<div id="studentChart_tb">
    关键字 : <input type="text" id="keyword" name="keyword" style="width: 100px;">
    &nbsp;&nbsp; 入学时间: <input type="text" style="width: 100px;" id="beginTime" class="easyui-datebox">
    ~
    <input type="text" style="width: 100px;" id="endTime" class="easyui-datebox">
    &nbsp;&nbsp;&nbsp;
    分类 : <select style="width: 100px;" name="groupType" type="text" id="groupType" class="easyui-combobox"
                 data-options="panelHeight:'auto'">
    <option value="s.username">营销人员</option>
    <option value="s.state">学生状态</option>
    <option value="s.paymethod">支付方式</option>
</select>
    <a id="studentChart_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="search">搜索</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-redo',plain:true" data-cmd="fileOut">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="openPie">饼状图</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="openBar">柱状图</a>
</div>
<div id="studentChart_dialog">
    <div id="main" style="width:600px;height: 400px;"></div>
</div>

<div id="studentChart_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>


</body>
</html>
