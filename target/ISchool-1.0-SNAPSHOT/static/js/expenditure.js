$(function () {

    $("#expenditure_datagrid").datagrid({
        url : "/expenditure_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        checkbox : true,
        selectOnCheck : false,
        columns : [[
            {checkbox:true, field:"ok",width:100},
            {field:"date",title:"时间",width:100},
            {field:"amount",title:"支出金额",width:100},
            {field:"summary",title:"摘要",width:100},
            {field:"cashier",title:"出纳人",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"handler",title:"经手人",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"paymethod",title:"支出方式",width:100},
            {field:"paytype",title:"类型",width:100},
            {field:"subclass",title:"小类",width:100},
            {field:"documentnumber",title:"单据号",width:100},
            {field:"subject",title:"归属学科",width:100},
            {field:"auditor",title:"审核人",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"state",title:"审核状态",width:100,formatter:function (value) {
                if(value) {
                    return "已审核";
                }else{
                    return "<span style='color: red'>未审核</span>";
                }
            }},
        ]],
        toolbar : "#expenditure_tb",
       /* onClickRow : function (rowIndex, rowData) {
            if(!rowData.state){
                $("#expenditure_editbtn").linkbutton("disable");
                $("#expenditure_chagestatebtn").linkbutton("disable");
            }else {
                $("#expenditure_editbtn").linkbutton("enable");
                $("#expenditure_chagestatebtn").linkbutton("enable");
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

    $("#expenditure_dialog").dialog({
        width: 550,
        height: 320,
        closed: true,
        buttons : "#expenditure_bt"
    });

    $("#expenditureread_dialog").dialog({
        width: 550,
        height: 320,
        closed: true,
        buttons : "#expenditureread_bt"
    });

    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });

    var expenditureMethod = {

        add : function () {
            $("#expenditureForm").form("clear");
            $("#expenditure_dialog").dialog("setTitle","增加支出记录");
            $("#expenditure_dialog").find("input").attr("disabled",false);
            $("#expenditure_dialog").dialog("open");
        },

        edit : function () {
            var row = $("#expenditure_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的支出记录","info");
                return;
            }else{
                if(row.auditor){
                    row["auditor.id"] = row.auditor.id;
                }
                if(row.handler){
                    row["handler.id"] = row.handler.id;
                }
                if(row.cashier){
                    row["cashier.id"] = row.cashier.id;
                }
                $("#expenditureForm").form("clear");
                $("#expenditureForm").form("load",row);
                $("#expenditure_dialog").dialog("setTitle","编辑支出记录");
                $("#expenditure_dialog").dialog("open");
            }
        },

        del : function () {
            var row = $("#expenditure_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的支出记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该记录吗",function (r) {
                    if(r){
                        $.post("/expenditure_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#expenditure_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        show : function () {
            var row = $("#expenditure_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要查看的支出记录","info");
                return;
            }else{
                if(row.auditor){
                    row["auditor.id"] = row.auditor.realname;
                }
                if(row.handler){
                    row["handler.id"] = row.handler.realname;
                }
                if(row.cashier){
                    row["cashier.id"] = row.cashier.realname;
                }
                $("#expenditurereadForm").form("clear");
                $("#expenditurereadForm").form("load",row);
                $("#expenditureread_dialog").dialog("setTitle","查看支出记录");
                $("#expenditureread_dialog").find("input").attr("style","border:none;background-color:transparent");
                $("#expenditureread_dialog").dialog("open");
            }
        },
      

        save : function () {
            var url = "/expenditure_save.do";
            if($("[name='id']").val()){
                url = "/expenditure_edit.do";
            }
            $("#expenditureForm").form("submit",{
                url : url,
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#expenditure_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#expenditure_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#expenditure_dialog").dialog("close");
        },

        saveread : function () {
            $("#expenditureread_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $('#expenditure_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            $("#expenditure_datagrid").datagrid("load",{keyword:keyword});
        },

        fileOut : function () {
            window.location.href = "/expenditure_fileOut.do";
        },

        fileIn : function () {
            $("#fileIn").dialog("open");
        },

        fileSave : function () {
            $("#fileForm").form("submit",{
                url : "/expenditure_fileIn.do",
                success : function (data) {
                    data = $.parseJSON(data);
                    $("#fileIn").dialog("close");
                    $.messager.alert("温馨提示",data.msg,"info",function () {
                        $("#expenditure_datagrid").datagrid("reload");
                    });
                }
            });
        },

        fileCancel : function () {
            $("#fileIn").dialog("close");
        },

        changestate : function () {
            var row = $("#expenditure_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要审核的支出记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要审核该支出记录吗",function (r) {
                    if(r){
                        $.post("/expenditure_changestate.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#expenditure_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },


        cancelaudit : function () {
            var row = $("#expenditure_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要取消审核的支出记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要取消审核该支出记录吗",function (r) {
                    if(r){
                        $.post("/expenditure_cancelaudit.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#expenditure_datagrid").datagrid("reload");
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
        expenditureMethod[cmd]();
    });

})






