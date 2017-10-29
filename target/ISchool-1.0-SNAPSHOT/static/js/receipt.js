$(function () {

    $("#receipt_datagrid").datagrid({
        url : "/receipt_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        checkbox : true,
        selectOnCheck : false,
        columns : [[
            {checkbox:true, field:"ok",width:100},
            {field:"student",title:"学员",width:100,formatter:function (value) {
                if(value) {
                    return value.username;
                }}},
            {field:"date",title:"收款时间",width:100},
            {field:"amount",title:"收款金额",width:100},
            {field:"studentclass",title:"班级",width:100,formatter:function (value) {
                if(value) {
                    return value.classname;
                }}},
            {field:"payee",title:"收款人",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"method",title:"收款方法",width:100},
            {field:"type",title:"收款类型",width:100},
            {field:"documentnumber",title:"单据号",width:100},
            {field:"bill",title:"开票",width:100,formatter:function (value) {
                if(value) {
                    return "是";
                }else{
                    return "否";
                }
            }},
            {field:"remark",title:"备注",width:100},
            {field:"marketuser",title:"营销人员",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"classchange",title:"班级变动",width:150},
            {field:"state",title:"复核状态",width:100,formatter:function (value) {
                if(value) {
                    return "已复核";
                }else{
                    return "<span style='color: red'>未复核</span>";
                }
            }}
        ]],
        toolbar : "#receipt_tb",
       /* onClickRow : function (rowIndex, rowData) {
            if(!rowData.state){
                $("#receipt_editbtn").linkbutton("disable");
                $("#receipt_chagestatebtn").linkbutton("disable");
            }else {
                $("#receipt_editbtn").linkbutton("enable");
                $("#receipt_chagestatebtn").linkbutton("enable");
            }
        }*/
    });


    $("#receipt_dialog").dialog({
        width: 550,
        height: 320,
        closed: true,
        buttons : "#receipt_bt"
    });

    $("#receiptread_dialog").dialog({
        width: 550,
        height: 320,
        closed: true,
        buttons : "#receiptread_bt"
    });

    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });

    var receiptMethod = {

        add : function () {
            $("#receiptForm").form("clear");
            $("#receipt_dialog").dialog("setTitle","增加收款记录");
            $("#receipt_dialog").find("input").attr("disabled",false);
            $("#receipt_dialog").dialog("open");
        },

        edit : function () {
            var row = $("#receipt_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的收款记录","info");
                return;
            }else{
                if(row.student){
                    row["student.id"] = row.student.id;
                }
                if(row.studentclass){
                    row["studentclass.id"] = row.studentclass.id;
                }
                if(row.payee){
                    row["payee.id"] = row.payee.id;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.id;
                }
                row.bill = row.bill + "";
                $("#receiptForm").form("clear");
                $("#receiptForm").form("load",row);
                $("#receipt_dialog").dialog("setTitle","编辑收款记录");
                $("#receipt_dialog").dialog("open");
            }
        },

        del : function () {
            var row = $("#receipt_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的收款记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该记录吗",function (r) {
                    if(r){
                        $.post("/receipt_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#receipt_datagrid").datagrid("reload");
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
            var row = $("#receipt_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要查看的收款记录","info");
                return;
            }else{
                if(row.student){
                    row["student.id"] = row.student.username;
                }
                if(row.studentclass){
                    row["studentclass.id"] = row.studentclass.classname;
                }
                if(row.payee){
                    row["payee.id"] = row.payee.realname;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.realname;
                }
                $("#receiptreadForm").form("clear");
                $("#receiptreadForm").form("load",row);
                $("#receiptread_dialog").dialog("setTitle","查看收款记录");
                $("#receiptread_dialog").find("input").attr("style","border:none;background-color:transparent");
                if(row.bill){
                    $("#bill").val("是");
                }else{
                    $("#bill").val("否");
                }
                $("#receiptread_dialog").dialog("open");
            }
        },
      

        save : function () {
            var url = "/receipt_save.do";
            if($("[name='id']").val()){
                url = "/receipt_edit.do";
            }
            $("#receiptForm").form("submit",{
                url : url,
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#receipt_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#receipt_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#receipt_dialog").dialog("close");
        },

        saveread : function () {
            $("#receiptread_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $('#receipt_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            $("#receipt_datagrid").datagrid("load",{keyword:keyword});
        },

        fileOut : function () {
            window.location.href = "/receipt_fileOut.do";
        },

        fileIn : function () {
            $("#fileIn").dialog("open");
        },

        fileSave : function () {
            $("#fileForm").form("submit",{
                url : "/receipt_fileIn.do",
                success : function (data) {
                    data = $.parseJSON(data);
                    $("#fileIn").dialog("close");
                    $.messager.alert("温馨提示",data.msg,"info",function () {
                        $("#receipt_datagrid").datagrid("reload");
                    });
                }
            });
        },

        fileCancel : function () {
            $("#fileIn").dialog("close");
        },

        changestate : function () {
            var row = $("#receipt_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要审核的收款记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要审核该收款记录吗",function (r) {
                    if(r){
                        $.post("/receipt_changestate.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#receipt_datagrid").datagrid("reload");
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
            var row = $("#receipt_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要取消审核的收款记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要取消审核该收款记录吗",function (r) {
                    if(r){
                        $.post("/receipt_cancelaudit.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#receipt_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

     /*   template :function () {
            $.post("/receipt_template.do",{id:row.id},function (data) {
                if(data.success){
                    $.messager.alert("温馨提示",data.msg,"info",function () {
                        $("#receipt_datagrid").datagrid("reload");
                    });
                }else{
                    $.messager.alert("温馨提示",data.msg,"info");
                }
            });
        }*/

    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        receiptMethod[cmd]();
    });

    $("#classin").combobox({
            onSelect: function (recond) {
                var allData = $(this).combobox("getData");
                /* var data = $(this).combobox("getValue");*/
                var data = recond.id;
                console.debug(data);
                $.each(allData, function (index, item) {
                    if (item.id == data) {
                        $("#receiptForm").form("load", {
                            "studentclass.id": item.studentclass.id,
                            "marketuser.id": item.marketuser.id,
                             classchange : item.classchange
                        })
                    }
                })
            }
        }
    );

})






