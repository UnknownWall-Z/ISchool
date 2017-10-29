<%--
  Created by IntelliJ IDEA.
  User: wall
  Date: 2017/8/31
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/static/common/common.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div title="学生信息管理" id="student_dialog">
    <form id="student_posform" method="post" class="easyui-form" enctype="multipart/form-data">
        <div id="tt" class="easyui-tabs" data-options="border:false">
            <div title="基本信息">
                <fieldset class="fieldset-border">
                <%--<legend style="color: #3a3f51; font-size: 20px; font-weight: bold">&ensp;个人资料</legend>--%>
                    <table align="center" style="margin-top: 10px;" cellpadding="5px">
                        <input type="hidden" name="id">
                        <tr>
                            <td align="right">姓名:</td>
                            <td><input type="text" name="" value="${student.username}"></td>
                            &ensp;
                            <td align="right">QQ:</td>
                            <td><input type="text" name="" value="${student.qq}"></td>
                            &ensp;
                            <td align="right">时间:</td>
                            <td><input name="" value="${student.admission}" type="text" class="easyui-datebox" required="required"/></td>
                        </tr>
                        <tr>
                            <td align="right">年龄:</td>
                            <td><input type="text" name="" value="${student.age}"></td>
                            <td align="right">性别:</td>
                            <td><select name="${student.sex}">
                                <option>男</option>
                                <option>女</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td align="right">电话:</td>
                            <td><input type="text" name="" value="${student.tel}"></td>
                            <td align="right">地址:</td>
                            <td><input type="text" name="" value="${student.addressnow}"></td>
                            <td align="right">邮箱:</td>
                            <td><input type="text" name="" value="${student.email}"></td>
                        </tr>
                        <tr>
                            <td align="right">学历:</td>
                            <!-- 从字典查询所有学历 -->
                            <td><input class="easyui-combobox" name="" value="${student.education}"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=education',panelHeight:'auto'"/>
                            </td>
                            <td align="right">家址:</td>
                            <td><input type="text" name="" value="${student.addresshome}"></td>
                            <td align="right">学校:</td>
                            <td><input class="easyui-combobox" name="" value="${student.university}"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=university',panelHeight:'auto'"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">专业:</td>
                            <td><input type="text" name="" value="${student.major}"></td>
                            <td align="right">外语:</td>
                            <td><input class="easyui-combobox" name="" value="${student.englishlevel}"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=englishlevel',panelHeight:'auto'"/>
                            </td>
                            <td align="right">工龄:</td>
                            <td><input type="text" name="" value="${student.workinglife}"></td>
                        </tr>
                        <tr>
                            <td align="right">班级:</td>
                            <td><input class="easyui-combobox" value="${student.studentclass.id}" required="required"
                                       data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do',panelHeight:'auto'"/>
                            </td>
                            <td align="right"><span style="color: #fafafa">xxx</span> 联系:</td>
                            <td><input class="easyui-combobox" value="${student.paymethod}" required="required"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=paymethod',panelHeight:'auto'"/>
                            </td>
                            <td align="right"><span style="color: #fafafa">xxx</span> 类型:</td>
                            <td><input class="easyui-combobox" value="${student.clienttype}"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=clientType',panelHeight:'auto'"/>
                            </td>
                        </tr>
                    </table>

                    <HR width="100%" color="white" SIZE=2>


                        <table  cellpadding="5px">
                            <tr>
                                <td align=""> <span style="color: #fafafa">xxxxxxxxxxxxxxx
                                   </span>流失原因:</td>
                            </tr>
                            <tr>
                                <td> <span style="color: #fafafa">xxxxxxxxxxxxxxx
                                   </span>
                                    <textarea  rows="15" cols="83" name="${student.workexperience}"></textarea></td>
                            </tr>
                        </table>
                </fieldset>
            </div>
        </div>
    </form>
</div>


</body>
</html>
