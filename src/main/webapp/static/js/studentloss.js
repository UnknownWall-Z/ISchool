$(function () {

    $("#studentloss_datagrid").datagrid({
        url : "/studentloss_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        checkbox : true,
        selectOnCheck : false,
        columns : [[
            {checkbox:true, field:"ok",width:100},
            {field:"id",title:"编号",width:100},
            {field:"name",title:"学员姓名",width:100},
            {field:"qq",title:"QQ",width:100},
            {field:"tel",title:"联系电话",width:100},
            {field:"lossclass",title:"流失班级",width:100,formatter:function (value) {
                if(value) {
                    return value.classname;
                }}},
            {field:"lossstage",title:"流失阶段",width:100},
            {field:"lossreason",title:"流失原因",width:100},
            {field:"lossdate",title:"流失时间",width:100},
            {field:"handler",title:"经办人",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},

            {field:"marketuser",title:"营销人员",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"refund",title:"是否退款",width:100,formatter:function (value) {
                if(value) {
                    return "是";
                }else{
                    return "否";
                }}},
            {field:"state",title:"状态",width:100,formatter:function (value) {
                if(value == "正常") {
                    return value;
                }else{
                    return "<span style='color: red'>"+value+"</span>";
                }
            }},
        ]],
        toolbar : "#studentloss_tb",
       /* onClickRow : function (rowIndex, rowData) {
            if(!rowData.state){
                $("#studentloss_editbtn").linkbutton("disable");
                $("#studentloss_chagestatebtn").linkbutton("disable");
            }else {
                $("#studentloss_editbtn").linkbutton("enable");
                $("#studentloss_chagestatebtn").linkbutton("enable");
            }
        }*/
    });

   /* function booleanFormatter(value) {
        if(value){
            return "是";
        }else{
            return "否";
        }
    }*/

    /*$("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });*/

    $("#losssave_dialog").dialog({
        width: 350,
        height: 250,
        closed: true,
        buttons : "#studentloss_bt"
    });

    $("#lossedit_dialog").dialog({
        width: 550,
        height: 320,
        closed: true,
        buttons : "#loss_bt"
    });

    $("#lossread_dialog").dialog({
        width: 550,
        height: 320,
        closed: true,
        buttons : "#studentread_bt"
    });

    var studentlossMethod = {
       /* add : function () {
            $("#editForm").form("clear");
            $("#studentloss_posdialog").dialog("open");
            $("#studentloss_posdialog").dialog("setTitle","增加学员");
            $("#studentloss_state").hide();
        },*/

        add : function () {
            $("#losssaveForm").form("clear");
            $("#losssave_dialog").dialog("setTitle","增加流失学员");
            $("#losssave_dialog").dialog("open");
        },

        edit : function () {
            var row = $("#studentloss_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的学员","info");
                return;
            }else{
                if(row.lossclass){
                    row["lossclass.id"] = row.lossclass.id;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.id;
                }
                row.refund = row.refund + "";
                $("#losseditForm").form("clear");
                $("#losseditForm").form("load",row);
                $("#lossedit_dialog").dialog("setTitle","编辑学员信息");
                $("#lossedit_dialog").dialog("open");
            }
        },

        show : function () {
            var row = $("#studentloss_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要查看的学员","info");
                return;
            }else{
                if(row.lossclass){
                    row["lossclass.id"] = row.lossclass.classname;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.realname;
                }
                $("#lossreadForm").form("clear");
                $("#lossreadForm").form("load",row);
                $("#lossread_dialog").dialog("setTitle","查看学员信息");
                $("#lossread_dialog").find("input").attr("style","border:none;background-color:transparent");
                if(row.refund){
                    $("#refund").val("是");
                }else{
                    $("#refund").val("否");
                }
                $("#lossread_dialog").dialog("open");
            }
        },

        editLoss : function () {
            $("#losseditForm").form("submit",{
                url : "/studentloss_edit.do",
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#lossedit_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#studentloss_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancelLoss : function () {
            $("#lossedit_dialog").dialog("close");
        },


        save : function () {
            $("#losssaveForm").form("submit",{
                url : "/studentloss_save.do",
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#losssave_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#studentloss_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancelLoss : function () {
            $("#lossedit_dialog").dialog("close");
        },

        saveread : function () {
            $("#lossread_dialog").dialog("close");
        },

        cancel : function () {
            $("#losssave_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $('#studentloss_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            $("#studentloss_datagrid").datagrid("load",{keyword:keyword});
        },

        fileOut : function () {
            window.location.href = "/studentloss_fileOut.do";
        }

    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        studentlossMethod[cmd]();
    });

})






