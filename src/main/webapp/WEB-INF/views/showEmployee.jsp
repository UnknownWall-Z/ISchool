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
                <legend style="color: #3a3f51; font-size: 20px; font-weight: bold">&ensp;个人资料</legend>
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

                            <td align="right">来源:</td>
                            <!-- 从字典查询所有来源 -->
                            <td><input class="easyui-combobox" name="" value="${student.origin}"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=origin',panelHeight:'auto'"/>
                            </td>
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
                            <td align="right">付法:</td>
                            <td><input class="easyui-combobox" value="${student.paymethod}" required="required"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=paymethod',panelHeight:'auto'"/>
                            </td>
                            <td align="right"><span style="color: #fafafa">xx</span>类型:</td>
                            <td><input class="easyui-combobox" value="${student.clienttype}"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=clientType',panelHeight:'auto'"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">学员状态:</td>
                            <td><input type="text" name="state" value="${student.state}"/>
                            </td>
                            <td align="right">营销人员:</td>
                            <td><input class="easyui-combobox"  value="${student.marketuser.id}"
                                       data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do',panelHeight:'auto'"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset class="fieldset-border">
                    <legend style="color: #3a3f51; font-size: 20px; font-weight: bold"> &ensp;缴费信息</legend>
                    <table align="center" style="margin-top: 10px;" cellpadding="5px">
                        <tr>
                            <td align="right">学费:</td>
                            <td><input type="text" name="plantuition" value="${student.plantuition}"></td>
                            <td align="right">优惠:</td>
                            <td><input type="text" name="discountamount" value="${student.discountamount}"></td>
                            <td align="right">训费:</td>
                            <td><input type="text" name="realtuition" value="${student.realtuition}"></td>
                        </tr>
                        <tr>
                            <td align="right">另费:</td>
                            <td><input type="text" name="otherfee" value="${student.otherfee}"></td>
                            <td align="right">另惠:</td>
                            <td><input type="text" name="otherdiscount" value="${student.otherdiscount}"></td>
                            <td align="right">惠原:</td>
                            <td><input type="text" name="discountremark" value="${student.discountremark}"></td>
                            </td>
                        </tr>

                        <tr>
                            <td align="right">总费:</td>
                            <td><input type="text" name="totalfee" value="${student.totalfee}"></td>
                            <td align="right">已付:</td>
                            <td><input type="text" name="payedfee" value="${student.payedfee}"></td>
                            <td align="right">欠款:</td>
                            <td><input type="text" name="ownedfee" value="${student.ownedfee}"></td>
                        </tr>

                        <tr>
                            <td align="right">上催:</td>
                            <td><input type="text" name="" value="${student.lasturgedate}" class="easyui-datebox"></td>
                            <td align="right">下催:</td>
                            <td><input type="text" name="" value="${student.urgedate}" class="easyui-datebox"></td>
                            <td align="right"><span style="color: #fafafa">xx</span>催款:</td>
                            <td><input type="text" name="" value="${student.urgetimes}" class=""></td>
                        </tr>

                        <tr>
                            <td align="right">付款时间</td>
                            <td><input type="text" name="" value="${student.lastpaytime}" class="easyui-datebox"></td>
                            <td align="right">是否付款:</td>
                            <td><select name="${student.finished}"  class="easyui-combobox" style="width: 160px" data-options="panelHeight:'auto'">
                                <option value="true">是</option>
                                <option value="false">否</option>
                            </select></td>
                        </tr>
                    </table>
                </fieldset>
            </div>

            <div title="详细信息" data-options="closable:true" style="overflow:auto;padding:20px;">

                <table align="center">
                    <tr>
                        <td rowspan="3" align="left" width="25px">
                            <div id="imgdiv"><img id="imgShow" width="150" height="150" /></div>
                            <input type="file" id="up_img" />
                        </td>
                        <%--<td width="10"></td>--%>
                        <td align="right">身份证号:</td>
                        <td><input type="text" name="" value="${student.idnumber}" size="40"></td>
                    </tr>
                    <tr>
                        <%--<td width="10"></td>--%>
                        <td align="right">紧急联系人:</td>
                        <td><input type="text" name="" value="${student.emergencycontact}" size="40"></td>
                    </tr>
                    <tr>
                        <%--<td width="10"></td>--%>
                        <td align="right">紧急联系电话:</td>
                        <td><input type="text" name="" value="${student.emergencytel}" size="40"></td>
                    </tr>
                </table>


                <HR width="100%" color="white" SIZE=2>
                <table align="center" cellpadding="5px">
                    <%--别忘了回显功能--%>
                    <tr>
                        <td align="right">就业意向:</td>
                        <td><label><input type="checkbox" name="${student.workintention}" value="1">IBM/微软或其他外企</label></td>
                        <td><label><input type="checkbox" name="${student.workintention}" value="2">神州数码/大唐或其他国企</label></td>
                        <td><label><input type="checkbox" name="${student.workintention}" value="3">亚信/百度或其他上市公司</label></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label><input type="checkbox" name="${student.workintention}" value="4">有发展的IT公司</label></td>
                        <td><label><input type="checkbox" name="${student.workintention}" value="5">拥有一份软件工程师工作</label></td>
                    </tr>
                    <tr>
                        <td align="right">工作经历:</td>
                        <td><textarea name="${student.workexperience}"></textarea></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</div>


</body>
</html>
