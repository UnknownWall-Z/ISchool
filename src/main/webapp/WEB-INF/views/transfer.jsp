<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>移交历史管理</title>
	<%@ include file="/static/common/common.jsp"%>
<script type="text/javascript" src="/static/js/transfer.js"></script>
</head>
<body>
	<!-- 数据表格 -->
	<table id="transfer_datagrid">
		<thead>
			<tr>
				<%--<th data-options="field:'name',width:100,align:'center'">客户姓名</th>
				<th data-options="field:'qq',width:100,align:'center'">QQ</th>
				<th data-options="field:'tel',width:100,align:'center'">联系电话</th>
				<th data-options="field:'transfertime',width:100,align:'center'">移交时间</th>
				<th data-options="field:'reason',width:100,align:'center'">移交原因</th>
				<th data-options="field:'preowner',width:100,align:'center',formatter:preFormatter">原拥有者</th>
				<th data-options="field:'aimowner',width:100,align:'center',formatter:aimFormatter">移交目标</th>--%>
			</tr>
		</thead>
	</table>
	<!-- 高级查询 -->
	<div id="transfer_dialog">
		<form id="transfer_form" method="post">
		<table align="center" style="margin-top: 15px;">
			<input type="hidden" name="id">
			<tr>
				<td>转移目标</td>
				<td><input class="easyui-combobox" name="aimowner.id"
						   data-options="valueField:'id',textField:'username',url:'/employee_listAll.do'"/></td>
			</tr>
			<tr>
				<td>原拥有者</td>
				<td><input class="easyui-combobox" name="preowner.id"
						   data-options="valueField:'id',textField:'username',url:'/employee_listAll.do'"/></td>
			</tr>
			<tr>
				<td>移交原因</td>
				<td><input class="easyui-combobox" name="reason"
						   data-options="valueField:'name',textField:'name',url:'/systemdictionary_querySsnByItemParentSn.do?ssn=treason'"/></td>
			</tr>
			<tr>
				<td>移交时间</td>
				<td><input name="beginTime" type="text" class="easyui-datebox"/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~<br>
					<input name="endTime" type="text" class="easyui-datebox"/></td>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<!-- 数据表格CRUD按钮 -->
	<div id="transfer_datagrid_tb">
		<div>
			<a class="easyui-linkbutton" iconCls="icon-reload" plain="true" data-cmd="reload">刷新</a>
			<a class="easyui-linkbutton" iconCls="icon-search" plain="true" data-cmd="search">高级查询</a>
			<a class="easyui-linkbutton" iconCls="icon-search" plain="true" data-cmd="sss">数据备份</a>
		</div>
	</div>
	<!-- 对话框保存取消按钮 -->
	<div id="transfer_dialog_bt">
		<a class="easyui-linkbutton" iconCls="icon-search" plain="true" data-cmd="findData">查询</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel" plain="true" data-cmd="cancel">取消</a>
	</div>
</body>
</html>