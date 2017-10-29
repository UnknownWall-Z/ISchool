<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>潜在学员管理</title>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/client.js"></script>
    <style type="text/css">
        .btn_01 {
            background-color: transparent;
            border: none
        }
    </style>
    <style type="text/css">
        #preview, .img, img
        {
            width:160px;
            height:160px;
        }
        #preview
        {
            border:1px solid #000;
        }
    </style>
</head>
<body>


<div title="学生转正" id="student_dialog">
    <form id="student_posform" method="post" class="easyui-form" enctype="multipart/form-data">
        <div id="tt" class="easyui-tabs" data-options="border:false">
            <div title="基本信息">
                <fieldset class="fieldset-border">
                    <legend style="color: #00c5de; font-size: 18px; font-weight: bold">个人资料</legend>
                    <table align="center" style="margin-top: 10px;" cellpadding="5px">
                        <input type="hidden" name="clientId" id="clientId">
                        <tr>
                            <td align="right">姓名:</td>
                            <td><input type="text" name="username"></td>
                            <td align="right">QQ:</td>
                            <td><input type="text" name="qq"></td>
                            <td align="right">入学时间:</td>
                            <td><input name="admission" type="text" class="easyui-datebox" required="required"/></td>
                        </tr>
                        <tr>

                            <td align="right">来源:</td>
                            <!-- 从字典查询所有来源 -->
                            <td><input class="easyui-combobox" name="origin"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=origin',panelHeight:'auto'"/>
                            </td>
                            <td align="right">年龄:</td>
                            <td><input type="text" name="age"></td>
                            <td align="right">性别:</td>
                            <td><select name="sex">
                                <option>男</option>
                                <option>女</option>
                            </select></td>
                        </tr>

                        <tr>

                            <td align="right">电话:</td>
                            <td><input type="text" name="tel"></td>
                            <td align="right">现居住地址:</td>
                            <td><input type="text" name="addressnow"></td>
                            <td align="right">Email:</td>
                            <td><input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td align="right">学历:</td>
                            <!-- 从字典查询所有学历 -->
                            <td><input class="easyui-combobox" name="education"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=education',panelHeight:'auto'"/>
                            </td>
                            <td align="right">家庭住址:</td>
                            <td><input type="text" name="addresshome"></td>
                            <td align="right">学校:</td>
                            <td><input class="easyui-combobox" name="university"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=university',panelHeight:'auto'"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">专业:</td>
                            <td><input type="text" name="major"></td>
                            <td align="right">外语水平:</td>
                            <td><input class="easyui-combobox" name="englishlevel"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=englishlevel',panelHeight:'auto'"/>
                            </td>
                            <td align="right">工作年限:</td>
                            <td><input type="text" name="workinglife"></td>
                        </tr>
                        <tr>
                            <td align="right">选择班级:</td>
                            <td><input class="easyui-combobox" name="studentclass.id" required="required"
                                       data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do',panelHeight:'auto'"/>
                            </td>
                            <td align="right">付款方式:</td>
                            <td><input class="easyui-combobox" name="paymethod" required="required"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=paymethod',panelHeight:'auto'"/>
                            </td>
                            <td align="right">客户类型:</td>
                            <td><input class="easyui-combobox" name="clienttype"
                                       data-options="valueField:'name',textField:'name',url:'systemdictionary_querySsnByItemParentSn.do?ssn=clientType',panelHeight:'auto'"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">营销人员:</td>
                            <td><input class="easyui-combobox" name="marketuser.id"
                                       data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do',panelHeight:'auto'"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset class="fieldset-border">
                    <legend style="color: #00c5de; font-size: 18px; font-weight: bold">缴费信息</legend>
                    <table align="center" style="margin-top: 10px;" cellpadding="5px">
                        <tr>
                            <td align="right">计划学费:</td>
                            <td><input type="text" name="plantuition"></td>
                            <td align="right">优惠金额:</td>
                            <td><input type="text" name="discountamount"></td>
                            <td align="right">培训学费:</td>
                            <td><input type="text" name="realtuition"></td>
                        </tr>
                        <tr>
                            <td align="right">其他费用:</td>
                            <td><input type="text" name="otherfee"></td>
                            <td align="right">其他优惠:</td>
                            <td><input type="text" name="otherdiscount"></td>
                            <td align="right">优惠说明:</td>
                            <td><input type="text" name="discountremark"></td>
                            </td>
                        </tr>

                        <tr>
                            <td align="right">总学费:</td>
                            <td><input type="text" name="totalfee" id="totalfee" required="required"></td>
                            <td align="right">已付学费:</td>
                            <td><input type="text" name="payedfee" id="payedfee" required="required"></td>
                            <td align="right">还欠学费:</td>
                            <td><input type="text" name="ownedfee" id="ownedfee" required="required"></td>
                        </tr>

                        <tr>
                            <td align="right">上次催款时间:</td>
                            <td><input type="text" name="lasturgedate" class="easyui-datebox"></td>
                            <td align="right">下次催款时间:</td>
                            <td><input type="text" name="urgedate" class="easyui-datebox"></td>
                            <td align="right">催款次数:</td>
                            <td><input type="text" name="urgetimes" class=""></td>
                        </tr>

                        <tr>
                            <td align="right">最后付款时间:</td>
                            <td><input type="text" name="lastpaytime" class="easyui-datebox"></td>
                            <td align="right">是否完成付款:</td>
                            <td><select name="finished" class="easyui-combobox" style="width: 160px" data-options="panelHeight:'auto'">
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
                        <td rowspan="3" align="center" width="25px">
                            <div id="preview"></div>
                            <input type="file" name="file" onchange="preview(this)" />
                        </td>
                        <%--<td width="10"></td>--%>
                        <td align="right">身份证号:</td>
                        <td><input type="text" name="idnumber" size="35"></td>
                    </tr>
                    <tr>
                        <%--<td width="10"></td>--%>
                        <td align="right">紧急联系人:</td>
                        <td><input type="text" name="emergencycontact" size="35"></td>
                    </tr>
                    <tr>
                        <%--<td width="10"></td>--%>
                        <td align="right">紧急联系电话:</td>
                        <td><input type="text" name="emergencytel" size="35"></td>
                    </tr>
                </table>


                <HR width="100%" color="white" SIZE=2>
                <table align="center" cellpadding="5px">
                    <%--别忘了回显功能--%>
                    <tr>
                        <td align="right">就业意向:</td>
                        <td><label><input type="checkbox" name="workintention" value="1">IBM/微软或其他外企</label></td>
                        <td><label><input type="checkbox" name="workintention" value="2">神州数码/大唐或其他国企</label></td>
                        <td><label><input type="checkbox" name="workintention" value="3">亚信/百度或其他上市公司</label></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label><input type="checkbox" name="workintention" value="4">有发展的IT公司</label></td>
                        <td><label><input type="checkbox" name="workintention" value="5">拥有一份软件工程师工作</label></td>
                    </tr>
                    <tr>
                        <td align="right">工作经历:</td>
                        <td colspan="3"><textarea name="workexperience" style="width: 600px;height: 150px"></textarea></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</div>


<div id="client_dialog">
    <fieldset class="fieldset-border">
        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">基本信息</legend>
        <form action="" method="post" id="editForm">
            <table align="center" style="margin-top: 18px">
                <input type="hidden" name="id">
                <tbody>
                <tr>
                    <td>建档日期</td>
                    <td><input type="text" name="buildtime" class="easyui-datebox"></td>
                    <td>营销人员</td>
                    <td><input name="marketuser.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'username',
                    url: '/employee_listAll.do',panelHeight:'auto'"/></td>
                    <td>录入人</td>
                    <td><input name="inputuser.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'username',
                    url: '/employee_listAll.do'"/></td>

                </tr>
                <tr>
                    <td>录入时间</td>
                    <td><input type="text" name="inputtime" class="easyui-datetimebox"></td>
                    <td>意向校区</td>
                    <td><input name="wantedschool" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedschool',panelHeight:'auto'"/>
                    </td>
                    <%--<td>下次跟进时间</td>
                    <td><input type="text" name="nexttime" class="easyui-datebox"></td>--%>
                </tr>

                <tr>
                    <%-- <td>约访时间</td>
                     <td><input type="text" name="interviewtime" class="easyui-datebox"></td>--%>
                    <td>来源</td>
                    <td><input name="origin" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=origin',panelHeight:'auto'"/>
                    </td>
                    <td>姓名</td>
                    <td><input type="text" name="username"></td>
                </tr>

                <tr>
                    <td>微信号</td>
                    <td><input type="text" name="wechat"></td>
                    <td>QQ</td>
                    <td><input type="text" name="qq"></td>
                    <td>电话</td>
                    <td><input type="text" name="tel"></td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td><input type="text" name="age"></td>
                    <td>性别</td>
                    <td><select name="sex">
                        <option>男</option>
                        <option>女</option>
                    </select></td>
                    <td>Email</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td>学历</td>
                    <td><input name="education" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=education',panelHeight:'auto'"/>
                    </td>
                    <td>专业</td>
                    <td><input type="text" name="major"></td>
                    <td>意向班级</td>
                    <td><input name="wantedclass.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'classname',
                    url:'/studentclass_listAll.do'"/>
                    </td>
                </tr>
                <tr>
                    <td>意向程度</td>
                    <td><input name="wantedlevel" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedLevel',panelHeight:'auto'"/>
                    </td>
                    <td>当前状态</td>
                    <td><input name="state" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=state',panelHeight:'auto'"/>
                    </td>
                    <td>客户类型</td>
                    <td><input name="clienttype" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=clientType',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>大学入学时间</td>
                    <td><input type="text" name="startschooltime" class="easyui-datebox"></td>
                    <td>意向学科</td>
                    <td><input name="wantedsubject" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedSubject',panelHeight:'auto'"/>
                    </td>
                    <td>学校</td>
                    <td><input type="text" name="schoolname"></td>
                </tr>
                <tr>
                    <td>关注问题</td>
                    <td colspan="5"><textarea type="text" name="concern" style="height:80px;width:550px"></textarea></td>
                </tr>
                <tr>
                    <td>备注</td>
                    <td colspan="5"><textarea type="text" name="remark" style="height:80px;width:550px"></textarea></td>
                </tr>
                </tbody>
            </table>
        </form>
    </fieldset>
</div>
<%--<!--增加跟踪记录-->
<div id="client_trackDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #FF00FF; font-size: 20px; font-weight: bold">客户跟踪信息</legend>
        <form id="trackForm" method="post" enctype="multipart/form-data">
            <table align="center" style="margin-top: 18px">
                <input type="hidden" name="id">
                <tbody>
                <tr>
                    <td>潜在学员</td>
                    <td><input id="client" name="client.id" class="easyui-combobox" data-options="
                    valueField: 'id',
                    textField: 'username',panelHeight:'auto'"/>
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
                    <td><input type="text" name="tel"></td>
                    <td>QQ：</td>
                    <td><input type="text" name="qq"></td>
                </tr>
                <tr>
                    <td>约访日期：</td>
                    <td><input type="text" name="nexttime" class="easyui-datebox"></td>
                    <td>当前状态：</td>
                    <td><input type="text" name="state" class="easyui-combobox" data-options="
                    valueField: 'name',
                    textField: 'name',
                    url:'/systemdictionary_querySsnByItemParentSn.do?ssn=state',panelHeight:'auto'"/>
                    <td>意向程度：</td>
                    <td><input type="text" name="wantedlevel" class="easyui-combobox" data-options="
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
</div>--%>
<div id="client_trackDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">跟踪信息</legend>
        <form action="" method="post" id="trackForm">
            <table align="center" style="margin-top: 18px">
                <input type="hidden" name="id">
                <tr>
                    <td>客户姓名</td>
                    <td><input type="text" name="username" disabled="disabled"></td>
                </tr>
                <tbody>
                <tr>
                    <td>跟踪次数</td>
                    <td><input type="text" name="tracktime"></td>
                    <td>上次跟进时间</td>
                    <td><input type="text" name="lasttrackdate" class="easyui-datebox"></td>
                </tr>

                <tr>
                    <td>约访时间</td>
                    <td><input type="text" name="interviewtime" class="easyui-datebox"></td>
                    <td>下次跟进时间</td>
                    <td><input type="text" name="nexttime" class="easyui-datebox"></td>

                </tr>
                </tbody>
            </table>
        </form>
    </fieldset>
</div>
<div id="client_readDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">基本信息</legend>
        <form id="client_readForm" method="post" class="btn_01">
            <table align="center" style="margin-top: 15px;">
                <input type="hidden" name="id">
                <tr>
                    <td>建档日期</td>
                    <td><input type="text" name="buildtime" disabled="disabled" class="btn_01"></td>
                    <td>营销人员</td>
                    <td><input type="text" name="marketuser.username" disabled="disabled" class="btn_01"></td>
                    <td>录入人</td>
                    <td><input type="text" name="inputuser.username" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>录入时间</td>
                    <td><input type="text" name="inputtime" disabled="disabled" class="btn_01"></td>
                    <td>意向校区</td>
                    <td><input type="text" name="wantedschool" disabled="disabled" class="btn_01"></td>
                    <td>下次跟进时间</td>
                    <td><input type="text" name="nexttime" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>约访时间</td>
                    <td><input type="text" name="interviewtime" disabled="disabled" class="btn_01"></td>
                    <td>来源</td>
                    <td><input type="text" name="origin" disabled="disabled" class="btn_01"></td>
                    <td>姓名</td>
                    <td><input type="text" name="username" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>微信号</td>
                    <td><input name="wechat" type="text" disabled="disabled" class="btn_01"></td>
                    <td>QQ</td>
                    <td><input type="text" name="qq" disabled="disabled" class="btn_01"></td>
                    <td>电话</td>
                    <td><input type="text" name="tel" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td><input type="text" name="age" disabled="disabled" class="btn_01">
                    <td>性别</td>
                    <td><input type="text" name="sex" disabled="disabled" class="btn_01"></td>
                    <td>Email</td>
                    <td><input type="text" name="email" disabled="disabled" class="btn_01"></td>
                </tr>
                <tr>
                    <td>学历</td>
                    <td><input type="text" name="education" disabled="disabled" class="btn_01">
                    </td>
                    <td>专业</td>
                    <td><input type="text" name="major" disabled="disabled" class="btn_01"></td>
                    </td>

                    <td>意向班级</td>
                    <td><input type="text" name="wantedclass.classname" disabled="disabled" class="btn_01">
                    </td>
                </tr>
                <tr>
                    <td>意向程度</td>
                    <td><input type="text" name="wantedlevel" disabled="disabled" class="btn_01">
                    <td>当前状态</td>
                    <td><input type="text" name="state" disabled="disabled" class="btn_01"></td>
                    <td>客户类型</td>
                    <td><input type="text" name="clienttype" disabled="disabled" class="btn_01">
                    </td>
                </tr>
                <tr>
                    <td>大学入学时间</td>
                    <td><input type="text" name="startschooltime" disabled="disabled" class="btn_01">
                    </td>
                    <td>意向学科</td>
                    <td><input type="text" name="wantedsubject" disabled="disabled" class="btn_01">
                    </td>
                    <td>学校</td>
                    <td><input type="text" name="schoolname" disabled="disabled" class="btn_01">
                    </td>
                </tr>
                <tr>
                    <td>关注问题</td>
                    <td colspan="5"><input type="area" name="concern" width="30" height="30" disabled="disabled"
                                           class="btn_01"
                                           style="height:80px;width:550px"></td>
                </tr>
                <tr>
                    <td>备注</td>
                    <td colspan="5"><input type="area" name="remark" width="30" height="30" disabled="disabled"
                                           class="btn_01"
                                           style="height:80px;width:550px"></td>
                </tr>
            </table>
        </form>
    </fieldset>
</div>

<%--高级查询--%>
<div id="client_queryDialog">
    <fieldset class="fieldset-border">
        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">基本信息</legend>
        <form id="client_queryForm" method="post" class="easyui-form">
            <table align="center" style="margin-top: 15px;" cellspacing="10">
                <input type="hidden" name="id">
                <tr>
                    <td>录入人</td>
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
                    <td><input type="text" name="name"></td>
                    <td>意向学科</td>
                    <td><input class="easyui-combobox" name="subject"
                               data-options="valueField:'name',textField:'name',url:'/systemdictionary_querySsnByItemParentSn.do?ssn=wantedSubject',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>QQ</td>
                    <td><input type="text" name="qq"></td>
                    <td>意向班级</td>
                    <td><input class="easyui-combobox" name="wantedClassId"
                               data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>微信号</td>
                    <td><input type="text" name="wechat"></td>
                    <td>来源</td>
                    <td><input class="easyui-combobox" name="origin"
                               data-options="valueField:'name',textField:'name',url:'/systemdictionary_querySsnByItemParentSn.do?ssn=origin',panelHeight:'auto'"/>
                    </td>
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
<%--移入客户池--%>
<div id="client_inPoolDialog">
    <form id="client_inPoolForm" method="post" class="easyui-form">
        <table align="center" style="margin-top: 15px;">
            <input type="hidden" name="id">
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name"></td>
            </tr>

            <tr>
                <td>移入时间</td>
                <td><input name="inpooltime" type="text" class="easyui-datebox"/></td>
            </tr>
            <tr>
                <td>移入原因</td>
                <td><input type="text" name="inpoolreason"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<table id="client_datagrid"></table>

<div id="fileIn">
    <form id="clientFileForm" method="post" enctype="multipart/form-data">
        <input type="file" name="file">
    </form>
</div>
<%--移交客户--%>
<%--<div id="client_transferDialog">
    <form id="client_transferForm" method="post" class="easyui-form">
        <table align="center" style="margin-top: 15px;">
            <input type="hidden" name="client.id">
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>移交时间</td>
                <td><input name="transferTime" type="text" class="easyui-datebox"/></td>
            </tr>
            <tr>
                <td>移交目标</td>
                <td><input class="easyui-combobox" name="aimowner.id"
                           data-options="valueField:'id',textField:'username',url:'/employee_listAll.do'"/>
                </td>
            </tr>
            <tr>
                <td>移交原因</td>
                <td><input class="easyui-combobox" name="reason"
                           data-options="valueField:'name',textField:'name',url:'/systemdictionary_querySsnByItemParentSn.do?ssn=treason'"/>
                </td>
            </tr>
        </table>
    </form>
</div>--%>

<div id="client_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">添加</a>
    <a id="client_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
       data-cmd="edit">编辑</a>
    <a id="client_chagestatebtn" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="showme">查看</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="advanceQuery">高级查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出Excel</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="fileIn">导入数据</a>
    <a id="client_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="selectQuery">刷新</a>
    <a id="client_followingbtn" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
       data-cmd="following">跟踪</a>
    <a id="client_trackbtn" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
       data-cmd="changeFormal">转正</a>
    <a id="inpool" class="easyui-menubutton"
       data-options="menu:'#mm',iconCls:'icon-edit'" data-cmd="view_pool">客户池</a>
    <div id="mm" style="width:150px;">
        <div id="push_pool" data-cmd="throwout">放入客户池</div>
        <div id="back_pool" data-cmd="rereturn">返回</div>
    </div>
    <%--    <a class="easyui-menubutton" data-options="menu:#mm2,iconCls:'icon-add',plain:true">其它</a>
    </div>
    <div id="mm2" style="width:150px;">
        <div id="throwout" data-cmd="throwout">丢单</div>
        <div id="setstatus" data-cmd="setstatus">状态设置</div>
    </div>--%>
    <%--<!--丢单设置-->
    <div id="client_throwDialog">
        <form id="client_throwForm" method="post" class="easyui-form">
            <table align="center" style="margin-top: 15px;">
                <input type="hidden" name="id">
                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="username"></td>
                    <td>建档日期</td>
                    <td><input name="buildtime" type="text" class="easyui-datebox"/></td>
                </tr>
                <tr>
                    <td>营销人员</td>
                    <td><input name="marketuser.id" class="easyui-combobox" data-options="
                        valueField: 'id',
                        textField: 'username',
                        url: '/employee_listAll.do',panelHeight:'auto'"/></td>
                    <td>来源</td>
                    <td><input name="origin" class="easyui-combobox" data-options="
                        valueField: 'name',
                        textField: 'name',
                        url:'/systemdictionary_querySsnByItemParentSn.do?ssn=origin',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email"></td>
                    <td>丢单原因</td>
                    <td><input name="loseTable" class="easyui-combobox" data-options="
                        valueField: 'name',
                        textField: 'name',
                        url:'/systemdictionary_querySsnByItemParentSn.do?ssn=loseTable',panelHeight:'auto'"/>
                    </td>
                </tr>
                <tr>
                    <td>丢单说明</td>
                    <td colspan="5"><input type="text" name="throwreason"></td>
                </tr>
            </table>
        </form>
    </div>--%>

    <div id="student_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="studentsave">转正</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="studentcancel">取消</a>
    </div>

    <div id="client_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="reset">重置</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>
    <div id="query_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="aquery">查询</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="querycancel">取消</a>
    </div>
    <div id="inpool_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="savepool">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelool">取消</a>
    </div>
    <div id="read_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="readcancel">确定</a>
    </div>
    <div id="file_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="fileSave">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="fileCancel">取消</a>
    </div>
    <%--<div id="lose_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="loseSave">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="loseCancel">取消</a>
    </div>--%>
    <div id="clienttrack_bt">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="tsave">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="tcancel">取消</a>
    </div>
</body>
</html>
