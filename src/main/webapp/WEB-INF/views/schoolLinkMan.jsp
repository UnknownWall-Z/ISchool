<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/schoolLinkMan.js"></script>
    <style>
        #center {
            width: 300px;
        }

        .center {
            width: 120px;

        }
        fieldset {
            padding:10px;
            margin:10px;
            width:270px;
            color:#333;
            border: rgba(102, 87, 78, 0.83) 3px;
        }
        legend {
            color: #e37e6d;
            font-size: 20px;
            font-family:"Microsoft YaHei UI";
            margin-left: 50px;
        }

    </style>
</head>

<body>


<div id="schoolLinkMan_dialog">
    <form action="" method="post" id="editForm">
        <filedset>
            <legend>联系人详情</legend>
        <table align="center" style="margin-top: 18px">
            <input type="hidden" name="id">
            <tbody>
            <fiedlset>
                <div id="center">
                    <tr>
                        <td>姓名</td>
                        <td><input type="text" class="center" name="name"></td>

                        <td>年龄</td>
                        <td><input type="text" class="center" name="age"></td>
                    </tr>
                    <tr>
                        <td>性别</td>
                        <td>
                            <input type="radio" checked="checked" name="gender" value="true">男&nbsp;&nbsp;
                            <input type="radio" name="gender" value="false">女
                        </td>


                        <td>生日</td>
                        <td><input type="text" name="birthday" class="easyui-datebox center"></td>
                    </tr>
                    <tr>
                        <td>QQ</td>
                        <td><input type="text" class="center" name="qq"></td>
                        <td>微信</td>
                        <td><input type="text" class="center" name="wechat"></td>
                    </tr>
                    <tr>
                        <td>邮箱</td>
                        <td><input type="text" class="center" name="email"></td>
                        <td>第一联系人</td>
                        <td>
                            <input type="radio" checked="checked" name="firstlinkman" value="true">是&nbsp;&nbsp;
                            <input type="radio" name="firstlinkman" value="false">不是
                        </td>
                    </tr>
                    <tr>
                        <td>所属学校</td>
                        <td><input id="school" name="school.id" class="easyui-combobox center" data-options="
                    valueField: 'id',
                    textField: 'name',
                    url: '/schoolClient_listAll.do',
                    panelHeight:'auto'"/>
                        </td>
                        <td>职位</td>
                        <td><input type="text" class="center" name="position"></td>
                    </tr>
                    <tr>
                        <td>部门</td>
                        <td><input type="text" class="center" name="department"></td>
                    </tr>
                </div>
                <tr>
                    <td>简介</td>
                    <td colspan="4" rowspan="4">
                        <textarea name="introduction" style="width:400px;height:80px;"></textarea>
                    </td>
                </tr>
            </fiedlset>
            </tbody>
        </table>
        </filedset>
    </form>
</div>


<table id="schoolLinkMan_datagrid"></table>

<div id="schoolLinkMan_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">增加</a>
    <a id="schoolLinkMan_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
       data-cmd="edit">编辑</a>
    <a id="schoolLinkMan_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="del">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
</div>

<div id="schoolLinkMan_bt">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
</body>
</html>
