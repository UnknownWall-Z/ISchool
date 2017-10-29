<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/student.js"></script>
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

<table id="student_datagrid"></table>

<!--编辑学生信息-->
<div title="学生信息管理" id="student_dialog">
    <form id="student_posform" method="post" class="easyui-form" enctype="multipart/form-data">
        <div id="tt" class="easyui-tabs" data-options="border:false">
            <div title="基本信息">
                    <fieldset class="fieldset-border">
                        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">个人资料</legend>
                        <table align="center" style="margin-top: 10px;" style="border-collapse:separate; border-spacing:0px 10px;">
                            <input type="hidden" name="id">
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
                                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/>
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
                                <td align="right">状态:</td>
                                <td><input type="text" name="state"/>
                                </td>
                                <td align="right">营销人员:</td>
                                <td><input class="easyui-combobox" name="marketuser.id"
                                           data-options="valueField:'id',textField:'realname',url:'/employee_listAll.do'"/>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    <fieldset class="fieldset-border">
                        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">缴费信息</legend>
                        <table align="center" style="margin-top: 10px;" style="border-collapse:separate; border-spacing:0px 10px;">
                            <tr>
                                <td align="right">计划学费:</td>
                                <td><input type="text" name="plantuition" readonly="readonly"></td>
                                <td align="right">优惠金额:</td>
                                <td><input type="text" name="discountamount" readonly="readonly"></td>
                                <td align="right">培训学费:</td>
                                <td><input type="text" name="realtuition" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td align="right">其他费用:</td>
                                <td><input type="text" name="otherfee" readonly="readonly"></td>
                                <td align="right">其他优惠:</td>
                                <td><input type="text" name="otherdiscount" readonly="readonly"></td>
                                <td align="right">优惠说明:</td>
                                <td><input type="text" name="discountremark" readonly="readonly"></td>
                                </td>
                            </tr>

                            <tr>
                                <td align="right">总学费:</td>
                                <td><input type="text" name="totalfee" id="totalfee" required="required" readonly="readonly"></td>
                                <td align="right">已付学费:</td>
                                <td><input type="text" name="payedfee" id="payedfee" required="required" readonly="readonly"></td>
                                <td align="right">还欠学费:</td>
                                <td><input type="text" name="ownedfee" id="ownedfee" readonly="readonly" readonly="readonly"></td>
                            </tr>

                            <tr>
                                <td align="right">上次催款时间:</td>
                                <td><input type="text" name="lasturgedate" class="easyui-datebox" readonly="readonly"></td>
                                <td align="right">下次催款时间:</td>
                                <td><input type="text" name="urgedate" class="easyui-datebox" readonly="readonly"></td>
                                <td align="right">催款次数:</td>
                                <td><input type="text" name="urgetimes" readonly="readonly"></td>
                            </tr>

                            <tr>
                                <td align="right">最后付款时间:</td>
                                <td><input type="text" name="lastpaytime" class="easyui-datebox" readonly="readonly"></td>
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

                <table align="center" style="border-collapse:separate; border-spacing:0px 10px;">
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

<div title="学生信息管理" id="studentread_dialog">
    <form id="studentread_posform" method="post" class="easyui-form" enctype="multipart/form-data">
        <div id="ttread" class="easyui-tabs" data-options="border:false">
            <div title="基本信息">
                    <fieldset class="fieldset-border">
                        <legend style="color: #00c5de; font-size: 18px; font-weight: bold">个人资料</legend>
                        <table align="center" style="margin-top: 10px;" cellpadding="5px">
                            <input type="hidden" name="id">
                            <tr>
                                <td align="right">姓名:</td>
                                <td><input type="text" name="username"></td>
                                <td align="right">QQ:</td>
                                <td><input type="text" name="qq"></td>
                                <td align="right">入学时间:</td>
                                <td><input name="admission" type="text"/></td>
                            </tr>
                            <tr>

                                <td align="right">来源:</td>
                                <!-- 从字典查询所有来源 -->
                                <td><input name="origin"/>
                                </td>
                                <td align="right">年龄:</td>
                                <td><input type="text" name="age"></td>
                                <td align="right">性别:</td>
                                <td><input type="text" name="sex"></td>
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
                                <td><input name="education"/>
                                </td>
                                <td align="right">家庭住址:</td>
                                <td><input type="text" name="addresshome"></td>
                                <td align="right">学校:</td>
                                <td><input name="university"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">专业:</td>
                                <td><input type="text" name="major"></td>
                                <td align="right">外语水平:</td>
                                <td><input name="englishlevel"/>
                                </td>
                                <td align="right">工作年限:</td>
                                <td><input type="text" name="workinglife"></td>
                            </tr>
                            <tr>
                                <td align="right">选择班级:</td>
                                <td><input name="studentclass.id" required="required"/>
                                </td>
                                <td align="right">付款方式:</td>
                                <td><input name="paymethod" required="required"/>
                                </td>
                                <td align="right">客户类型:</td>
                                <td><input type="text" name="clienttype"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">状态:</td>
                                <td><input name="state"/>
                                </td>
                                <td align="right">营销人员:</td>
                                <td><input type="te" name="marketuser.id"/>
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
                                <td><input type="text" name="totalfee"></td>
                                <td align="right">已付学费:</td>
                                <td><input type="text" name="payedfee"></td>
                                <td align="right">还欠学费:</td>
                                <td><input type="text" name="ownedfee" class="borderstyle"></td>
                            </tr>

                            <tr>
                                <td align="right">上次催款时间:</td>
                                <td><input type="text" name="lasturgedate"></td>
                                <td align="right">下次催款时间:</td>
                                <td><input type="text" name="urgedate"></td>
                                <td align="right">催款次数:</td>
                                <td><input type="text" name="urgetimes" class=""></td>
                            </tr>

                            <tr>
                                <td align="right">最后付款时间:</td>
                                <td><input type="text" name="lastpaytime"></td>
                                <td align="right">是否完成付款:</td>
                                <td>
                                    <input type="text" id="finished">
                                </td>
                            </tr>
                        </table>
                    </fieldset>
            </div>

            <div title="详细信息" style="overflow:auto;padding:20px;">

                <table align="center">
                    <tr>
                        <td rowspan="3" align="right">
                            <img id="headImg" src="" style="width:160px;height:160px;" >
                        </td>
                        <td width="35"></td>
                        <td align="left">身份证号:</td>
                        <td><input type="text" name="idnumber" width="350"></td>
                    </tr>
                    <tr>
                        <td width="35"></td>
                        <td align="left">紧急联系人:</td>
                        <td><input type="text" name="emergencycontact" width="350"></td>
                    </tr>
                    <tr>
                        <td width="35"></td>
                        <td align="left">紧急联系人:</td>
                        <td><input type="text" name="emergencytel" width="350"></td>
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

<div title="学生转班" id="changeClass_dialog">
    <form id="changeClassForm" method="post">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <input type="hidden" name="id">
            <tr>
                <td align="right">原来的班级:</td>
                <td><input class="easyui-combobox" name="classname" readonly="readonly"
                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/></td>
            </tr>
            <tr style="height: 10px"></tr>
            <tr>
                <td align="right">要转入的班级:</td>
                <td><input class="easyui-combobox" name="newclass"
                           data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'"/></td>
            </tr>
        </table>
    </form>
</div>

<div title="学生流失" id="loss_dialog">
    <form id="lossForm" class="easyui-form" method="post">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <input type="hidden" name="id">
            <tr>
                <td align="right">学员姓名:</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr style="height: 10px">
                <td align="right">流失阶段:</td>
                <td><input type="text" name="lossstage"/></td>
            </tr>
            <tr>
                <td align="right">流失原因:</td>
                <td><input type="text" name="lossreason"/></td>
            </tr>
        </table>
    </form>
</div>


<div title="学生付款" id="payMoney_dialog">
    <form id="payMoneyForm" class="easyui-form" method="post">
        <table align="center" style="margin-top: 15px" cellpadding="5">
            <input type="hidden" name="id">
            <tr>
                <td align="right">学员姓名:</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td align="right">总学费:</td>
                <td><input type="text" name="totalfee" readonly="readonly"></td>
            </tr>
            <tr>
                <td align="right">已付学费:</td>
                <td><input type="text" name="payedfee" readonly="readonly"></td>
            </tr>
            <tr>
                <td align="right">还欠学费:</td>
                <td><input type="text" name="ownedfee" readonly="readonly" class="borderstyle"></td>
            </tr>
            <tr style="height: 10px">
                <td align="right">付款金额:</td>
                <td><input type="text" name="money" id="money"/></td>
            </tr>
        </table>
    </form>
</div>


    <div id="student_tb">
        <a id="student_editbtn" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
           data-cmd="show">查看</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true"
           data-cmd="del">删除</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="fileOut">导出Excel</a>


        <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
           data-cmd="changeClass">转班</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
           data-cmd="loss">流失</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
           data-cmd="dropout">休学</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
           data-cmd="pressForMoney" id="pressForMoney">催款</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
           data-cmd="payMoney" id="payMoney">付款</a>

        <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
           data-cmd="loan">贷款</a>

        <input class="easyui-combobox" id="searchClass"
               data-options="valueField:'id',textField:'classname',url:'/studentclass_listAll.do'" prompt ="请选择班级"/>

        <a class="easyui-menubutton" id="mb"
           data-options="menu:'#fast',iconCls:'icon-search'">快查</a>
        <div id="fast" style="width:40px;">
            <div data-options="iconCls:'icon-undo'">已流失</div>
            <div data-options="iconCls:'icon-redo'">已休学</div>
            <div data-options="iconCls:'icon-redo'">催款中</div>
            <div data-options="iconCls:'icon-redo'">已贷款</div>
            <div class="menu-sep"></div>
        </div>

        <input type="text" name="keyword" placeholder="内容关键字">
        <a id="student_search" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
           data-cmd="selectQuery">查询</a>
    </div>

    <div id="student_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>

    <div id="studentread_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveread">确认</a>
    </div>

    <div id="changeclass_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveChange">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelChange">取消</a>
    </div>

    <div id="loss_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="saveLoss">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelLoss">取消</a>
    </div>

    <div id="payMoney_bt" align="center">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="savepayMoney">确认</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelpayMoney">取消</a>
    </div>

</body>
</html>
