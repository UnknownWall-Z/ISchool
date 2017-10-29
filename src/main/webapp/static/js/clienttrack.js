$(function () {
    $("#clienttrack_datagrid").datagrid({
        url: "/clienttrack_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        collapsible:true,
        striped: true,
        columns: [[
            {field: "inputtime", title: "时间", width: 100},
            {field: "client", title: "客户", width: 100, formatter: employeeFormatter},
            {field: "nexttime", title: "下次访问时间", width: 100},
            {field: "saleMan", title: "咨询人员", width: 100,formatter:function (value) {
                if(value) {
                    return value.username;
                }}},
            {field: "purpose", title: "跟进目的", width: 100},
            {field: "wantedLevel", title: "意向程度", width: 100},
            {field: "qq", title: "QQ", width: 100},
            {field: "tel", title: "联系电话", width: 100},
            {field: "consultway", title: "咨询方式", width: 100},
            {field: "summary", title: "摘要", width: 100}
        ]],
        toolbar: "#clienttrack_tb"
    });

    $("#clienttrack_dialog").dialog({
        width: 1200,
        height: 600,
        closed: true,
        buttons: "#clienttrack_bt"
    });

    $("#clienttrack_readDialog").dialog({
        width: 900,
        height: 600,
        closed: true,
        buttons: "#read_bt"
    });

    $("#clienttrack_queryDialog").dialog({
        width: 600,
        height: 400,
        closed: true,
        buttons: "#query_bt"
    });

    function employeeFormatter(value) {
        if (value) {
            return value.username;
        } else {
            return "";
        }
    }

    $("#client").combobox({
            url: '/client_selectListForTrackForm.do',
            onSelect: function (recond) {
                console.log(recond.id);
                var url = '/client_selectListForTrackForm.do'+recond.value;
                var allData = $(this).combobox("getData");
               /* var data = $(this).combobox("getValue");*/
               var data = recond.id;
               // console.debug(data);
                $.each(allData, function (index, item) {
                    if (item.id == data) {
                        $("#clientTrack_form").form("load", {
                            "client.tel": item.tel,
                            "client.market.id": item.id,
                            "client.qq": item.qq,
                            "client.state": item.state,
                            "client.wantedlevel": item.wantedlevel,
                            "client.wantedsubject": item.wantedsubject
                        })
                    }
                })
            }
        }
    );

    var clienttrackMethod = {

        add: function () {
            $("#clientTrack_form").form("clear");
            $("#clienttrack_dialog").dialog("setTitle", "增加跟踪记录");
            $("#clienttrack_dialog").dialog("open");
        },

        edit: function () {
            var row = $("#clienttrack_datagrid").datagrid("getSelected");
            console.log(row)
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的跟踪记录", "info");
                return;
            } else {
                $("#clientTrack_form").form("clear");
                row["client.id"]=row["client"].id;
                row["client.state"]=row["client"].state;
                row["nexttime"]=row.nexttime;
                //row["client.market.id"]=row["client.marketuser"].id;
                $("#clientTrack_form").form("load", row);
                $("#clienttrack_dialog").dialog("open");
                $("#clienttrack_dialog").dialog("setTitle", "编辑跟踪记录");
            }
        },

        del : function () {
            var row = $("#clienttrack_datagrid").datagrid("getSelected");
            console.log(row)
            if(!row.id){
                $.messager.alert("温馨提示","请选择要删除的记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该记录吗",function (r) {
                    if(r){
                        $.post("/clienttrack_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#clienttrack_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        advanceQuery: function () {
            $("#clienttrack_queryForm").form("clear");
            $("#clienttrack_queryDialog").dialog("open");
            $("#clienttrack_queryDialog").dialog("setTitle", "跟踪信息高级查询");
            //$("#client_state").hide();
        },
        showme: function () {
            var row = $("#clienttrack_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要查看的学员跟踪信息", "info");
                return;
            } else {
                $("#clienttrack_readDialog").dialog("open");
                row["client.wantedlevel"]=row["client"].wantedlevel;
                row["client.qq"]=row["client"].qq;
                row["client.tel"]=row["client"].tel;
                row["name"]=row["client"].username;
                row["saleman"]=row["saleMan"].username;
                row["nexttime"]=row.nexttime;
                row["client.clienttype"]=row["client"].clienttype;
                row["client.state"]=row["client"].state;
                row["client.origin"]=row["client"].origin;
                $("#clienttrack_readForm").form('load', row);
                $("#clienttrack_readDialog").dialog("setTitle", "客户跟踪信息");
            }
        },

        /* changState: function () {
         var row = $("#clienttrack_datagrid").datagrid("getSelected");
         if (!row.id) {
         $.messager.alert("温馨提示", "请选择要审核的跟踪记录", "info");
         return;
         } else {
         $.messager.confirm("温馨提示", "确定要审核该跟踪记录吗", function (r) {
         if (r) {
         $.post("/clienttrack/changState.do", {id: row.id}, function (data) {
         if (data.success) {
         $.messager.alert("温馨提示", data.msg, "info", function () {
         $("#clienttrack_datagrid").datagrid("reload");
         });
         } else {
         $.messager.alert("温馨提示", data.msg, "info");
         }
         });
         }
         });
         }
         },*/
        reveal:function () {
            $("#clienttrack_datagrid").datagrid("autoRowHeight",0);
           /* var rows = $("#clienttrack_datagrid").datagrid("getData");*/
            /*$.each(rows,function(i,k){
                //获取当前所有展开的子网格
                var expander = $('#clienttrack_datagrid').datagrid('getExpander',i);
                if(expander.length && expander.hasClass('datagrid-row-collapse')){
                    if(k.id != row.id){
                        //折叠上一次展开的子网格
                        $('#clienttrack_datagrid').datagrid('collapseRow',i);
                    }
                }
            });*/
        },

        save: function () {
            var url = "/clienttrack_save.do";
            if ($("[name='id']").val()) {
                url = "/clienttrack_edit.do";
            }
            $("#clientTrack_form").form("submit", {
                url: url,
                success: function (data) {
                    console.debug(data);
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#clienttrack_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#clienttrack_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },

        aquery: function () {
            $("#clienttrack_queryForm").form("submit", {
                url: "/clienttrack_list.do",
                success: function (data) {
                    $("#clienttrack_queryDialog").dialog("close");
                    data = $.parseJSON(data),
                        $("#clienttrack_datagrid").datagrid("loadData", data)
                }
            })
        },

        cancel: function () {
            $("#clienttrack_dialog").dialog("close");
        },
        querycancel: function () {
            $("#clienttrack_queryDialog").dialog("close");
        },
        readcancel: function () {
            $("#clienttrack_readDialog").dialog("close");
        },


        reload: function () {
            $("[name='keyword']").val("");
            $('#clienttrack_datagrid').datagrid('load', {});
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            $("#clienttrack_datagrid").datagrid("load", {keyword: keyword});
        },
    };


    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        clienttrackMethod[cmd]();
    });


});






