function preview(file)
{
    var prevDiv = document.getElementById('preview');
    if (file.files && file.files[0])
    {
        var reader = new FileReader();
        reader.onload = function(evt){
            prevDiv.innerHTML = '<img src="' + evt.target.result + '" /> ';
        }
        reader.readAsDataURL(file.files[0]);
    }
    else
    {
        prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
    }
}

$(function () {

    $("#student_datagrid").datagrid({
        url : "/student_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        columns : [[
            {checkbox:true, field:"ok",width:100},
            {field:"id",title:"编号",width:100},
            {field:"username",title:"学员姓名",width:100},
            {field:"marketuser",title:"营销人员",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"totalfee",title:"总学费",width:100},
            {field:"ownedfee",title:"待缴学费",width:100},
            {field:"payedfee",title:"已交学费",width:100},
            {field:"finished",title:"缴费状态",width:100,formatter:function (value) {
                if (value) {
                    return "已交清";
                } else {
                    return "<span style='color: red'>未交清</span>";
                }
            }},
            {field:"admission",title:"入学时间",width:100},
            {field:"university",title:"学校",width:100},
            {field:"qq",title:"QQ",width:100},
            {field:"tel",title:"电话",width:100},
            {field:"studentclass",title:"所在班级",width:100,formatter:function (value) {
                if(value) {
                    return value.classname;
                }}},
            {field:"paymethod",title:"付款方式",width:100},
            {field:"clienttype",title:"类型",width:100},
            {field:"state",title:"状态",width:100,formatter:function (value) {
                if(value == "正常") {
                    return value;
                }else if(value == null){
                    return "";
                }else{
                    return "<span style='color: red'>"+value+"</span>";
                }
            }}
        ]],
        toolbar : "#student_tb",
        onClickRow : function (rowIndex, rowData) {
            if(rowData.finished){
                $("#payMoney").linkbutton("disable");
                $("#pressForMoney").linkbutton("disable");
            }else {
                $("#payMoney").linkbutton("enable");
                $("#pressForMoney").linkbutton("enable");
            }
        }
    });
    
    $("#searchClass").combobox({onSelect : function (param) {
        var keyword = $("[name='keyword']").val();
        $("#student_datagrid").datagrid("load",{keyword:keyword,classId : param.id});
    }});


    $("#fast").menu({
        onClick: function (item) {
            var keyword = $("[name='keyword']").val();
            $("#student_datagrid").datagrid("load",{state : item.text});
        }
    });

    $("#student_dialog").dialog({
        width: 800,
        height: 450,
        closed: true,
        buttons : "#student_bt"
    });

    $("#studentread_dialog").dialog({
        width: 800,
        height: 450,
        closed: true,
        buttons : "#studentread_bt"
    });

    $("#changeClass_dialog").dialog({
        width: 300,
        height: 250,
        closed: true,
        buttons : "#changeclass_bt"
    });

    $("#loss_dialog").dialog({
        width: 350,
        height: 250,
        closed: true,
        buttons : "#loss_bt"
    });

    $("#payMoney_dialog").dialog({
        width: 350,
        height: 250,
        closed: true,
        buttons : "#payMoney_bt"
    });


    var studentMethod = {
       /* add : function () {
            $("#editForm").form("clear");
            $("#student_posdialog").dialog("open");
            $("#student_posdialog").dialog("setTitle","增加学员");
            $("#student_state").hide();
        },*/


        edit : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            $("#headImgPath").attr("src","");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的学员","info");
                return;
            }else{
                $("#student_posform").form("clear");
                $("#preview").html('<img src="' + row.headimgpath + '" /> ');
                if(row.studentclass){
                    row["studentclass.id"] = row.studentclass.id;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.id;
                }
                row.finished = row.finished + "";
                $("#student_posform").form("load",row);
                $("#student_dialog").dialog("setTitle","编辑学员");
                $("#student_dialog").dialog("open");
                $("#payedfee").on("change",function () {
                    $("#ownedfee").val($("#totalfee").val() - $("#payedfee").val());
                });

                $("#totalfee").on("change",function () {
                    $("#ownedfee").val($("#totalfee").val() - $("#payedfee"));
                });
            }
        },


        show : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要查看的学员","info");
                return;
            }else{
                if(row.studentclass){
                    row["studentclass.id"] = row.studentclass.classname;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.realname;
                }
                $("#studentread_posform").form("clear");
                $("#studentread_posform").form("load",row);
                $("#studentread_dialog").dialog("setTitle","查看学员");
                $("#studentread_dialog").find("input").attr("style","border:none;background-color:transparent");
                if(row.finished){
                    $("#finished").val("是");
                }else{
                    $("#finished").val("否");
                }
                $("#headImg").attr("src",row.headimgpath);
                $("#studentread_dialog").dialog("open");
            }
        },


        del : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的学员","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该学员吗",function (r) {
                    if(r){
                        $.post("/student_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#student_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        save : function () {
            $("#student_posform").form("submit",{
                url : "/student_edit.do",
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#student_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#student_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#student_dialog").dialog("close");
        },

        saveread : function () {
            $("#studentread_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $("#searchClass").combobox("setValue","");
            $('#student_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            $("#student_datagrid").datagrid("load",{keyword:keyword});
        },

        fileOut : function () {
            window.location.href = "/student_fileOut.do";
        },

        dropout : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要休学的学员","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要休学该学员吗",function (r) {
                    if(r){
                        $.post("/student_dropout.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#student_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        pressForMoney : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要催款的学员","info");
                return;
            }else{
                $.post("/student_pressForMoney.do",{id:row.id},function (data) {
                    if(data.success){
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#student_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                });
            }
        },

        changeClass : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要转班的学员","info");
                return;
            }else{
                row.classname = row.studentclass.id;
                $("#changeClassForm").form("load",row);
                $("#changeClass_dialog").dialog("open");
            }
        },

        saveChange : function () {
            $("#changeClassForm").form("submit",{
                url : "/student_changeClass.do",
                success:function(data){
                    data = $.parseJSON(data);
                    $("#changeClass_dialog").dialog("close");
                    $.messager.alert("温馨提示",data.msg,"info",function () {
                        $("#student_datagrid").datagrid("reload");
                    });
                }
            });
        },

        cancelChange : function () {
            $("#changeClass_dialog").dialog("close");
        },

        loss : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要流失的学员","info");
                return;
            }else{
                $("#lossForm").form("clear");
                $("#lossForm").form("load",row);
                $("#loss_dialog").dialog("open");
            }
        },


        saveLoss : function () {
            $("#lossForm").form("submit",{
                url : "/student_loss.do",
                success:function(data){
                    $("#loss_dialog").dialog("close");
                    data = $.parseJSON(data);
                    if(data.success){
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#student_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancelLoss : function () {
            $("#loss_dialog").dialog("close");
        },

        payMoney : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要付款的学员","info");
                return;
            }else{
                $("#payMoneyForm").form("clear");
                $("#payMoneyForm").form("load",row);
                $("#payMoney_dialog").dialog("open");
            }
        },


        savepayMoney : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if($("#money").val() > row.ownedfee){
                alert("请输入小于或等于待缴费用的数值");
                return;
            }
            $("#payMoneyForm").form("submit",{
                url : "/student_payMoney.do",
                success:function(data){
                    $("#payMoney_dialog").dialog("close");
                    data = $.parseJSON(data);
                    if(data.success){
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#student_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancelpayMoney : function () {
            $("#payMoney_dialog").dialog("close");
        },

        loan : function () {
            var row = $("#student_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要贷款的学员","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定该学员要贷款吗",function (r) {
                    if(r){
                        $.post("/student_loan.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#student_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        }

    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        studentMethod[cmd]();
    });
    
})






