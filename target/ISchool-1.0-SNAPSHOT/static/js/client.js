function preview(file) {
    var prevDiv = document.getElementById('preview');
    if (file.files && file.files[0]) {
        var reader = new FileReader();
        reader.onload = function (evt) {
            prevDiv.innerHTML = '<img src="' + evt.target.result + '" /> ';
        }
        reader.readAsDataURL(file.files[0]);
    }
    else {
        prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
    }
}


$(function () {
    $("#client_datagrid").datagrid({
        url: "/client_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        selectOnCheck: true,
        checkOnSelect: true,
        columns: [[
            {checkbox: true, width: 100, field: 'ck'},
            {field: "id", title: "编号", width: 100},
            {field: "username", title: "姓名", width: 100},
            {field: "marketuser", title: "营销人员", width: 100, formatter: employeeFormatter},
            {field: "tracktime", title: "跟踪次数", width: 100},
            {field: "lasttrackdate", title: "最后跟踪时间", width: 100},
            {field: "interviewtime", title: "约访时间", width: 100},
            {field: "nexttime", title: "下次跟进时间", width: 100},
            {field: "inputtime", title: "录入时间", width: 100},
            {field: "qq", title: "QQ", width: 100},
            {field: "tel", title: "电话", width: 100},
            {field: "schoolname", title: "学校", width: 100},
            {field: "wantedlevel", title: "意向程度", width: 100},
            {field: "wantedschool", title: "意向校区", width: 100},
            {
                field: "wantedclass", title: "意向班级", width: 100, formatter: function (value) {
                return value ? value.classname : "";
            }
            },
            {field: "remark", title: "备注", width: 100},
            {field: "clienttype", title: "客户类型", width: 100},
            {field: "status", title: "状态", width: 100, formatter: staFormatter},
            {field: "trackstate", title: "是否跟踪", width: 100, formatter: booleanFormatter},
            {field: "inpooltime", title: "放入时间", width: 100, hidden: true}
        ]],
        toolbar: "#client_tb"
    });
    function staFormatter(value) {
        if (value == "1") {
            return "潜在学员";
        } else if (value == "2") {
            return "正式学员";
        } else if (value == "3") {
            return "流失学员";
        }
        else if (value == "4") {
            return "休学学员";
        }
        else if (value == "5") {
            return "升班学员";
        }
        else if (value == "6") {
            return "留班学员";
        }
        else if (value == "7") {
            return "潜在客户池中学员";
        }
    }

    function booleanFormatter(value) {
        if (value) {
            return "<font style='color: green'>已跟踪</font>";
        } else {
            return "<font style='color: red'>待跟踪</font>";
        }
    }

    function employeeFormatter(value) {
        if (value) {
            return value.realname;
        } else {
            return "";
        }
    }

    /*    function sexFormatter(value) {
     if (value == "man") {
     return "男";
     } else {
     return "女";
     }
     }*/

    $("#student_dialog").dialog({
        width: 800,
        height: 450,
        closed: true,
        buttons: "#student_bt"
    });


    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons: "#file_bt"
    });

    $("#client_dialog").dialog({
        width: 800,
        height: 450,
        closed: true,
        buttons: "#client_bt"
    });
    $("#client_inPoolDialog").dialog({
        width: 300,
        height: 200,
        closed: true,
        buttons: "#inpool_bt"
    });
    $("#client_readDialog").dialog({
        width: 800,
        height: 450,
        closed: true,
        buttons: "#read_bt"
    });

    $("#client_queryDialog").dialog({
        width: 600,
        height: 400,
        closed: true,
        buttons: "#query_bt"
    });
    $("#client_throwDialog").dialog({
        width: 800,
        height: 450,
        closed: true,
        buttons: "#lose_bt"
    });
    $("#client_trackDialog").dialog({
        width: 600,
        height: 300,
        closed: true,
        buttons: "#clienttrack_bt"
    });
    /*移入客户池*/
    $("#client_inPoolDialog").dialog({
        title: "移入客户池",
        width: 300,
        height: 250,
        closed: true,
        buttons: '#inpool_bt'
    })
    /*    $("#client_trackDialog").dialog({
     width: 550,
     height: 300,
     closed: true,
     buttons: "#clienttrack_bt"
     });*/
/*

    $("#clienttrack_dialog").dialog({
        width: 400,
        height: 300,
        closed: true,
        buttons: "#clienttrack_bt"
    });
*/

    /*/!*移交*!/
     $("#client_transferDialog").dialog({
     title: "移交客户",
     width: 300,
     height: 250,
     closed: true,
     buttons: '#inpool_bt'

     })*/

    /*   $("#change").on("click",function(){
     alert(1)
     })*/
    var clientMethod = {
        add: function () {
            $("#editForm").form("clear");
            $("#client_dialog").dialog("open");
            $("#client_dialog").dialog("setTitle", "增加潜在学员");
        },

        edit: function () {
            var row = $("#client_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的潜在学员", "info");
                return;
            } else {
                $("#editForm").form("clear");
                row["marketuser.id"] = row["marketuser"].id;
                row["inputuser.id"] = row["inputuser"].id;
                if (row.wantedclass != null) {

                    row["wantedclass.id"] = row["wantedclass"].id;
                }
                $("#editForm").form("load", row);
                $("#client_dialog").dialog("open");
                $("#client_dialog").dialog("setTitle", "编辑潜在学员");

            }
        },

        following: function () {
            var row = $("#client_datagrid").datagrid("getSelected");
            console.log(row)
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的潜在学员的跟踪信息", "info");
                return;
            } else {
                $("#trackForm").form("clear");
                $("#trackForm").form("load", row);
                $("#client_trackDialog").dialog("open");
                $("#client_trackDialog").dialog("setTitle", "修改跟踪信息");
            }
        }

        ,
        showme: function () {
            /* $("#client_readForm").style.border="none";
             $("#client_readForm").style.backgroundColor="transparent";*/
            var row = $("#client_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要查看的潜在学员", "info");
                return;
            } else {
                $("#client_readDialog").dialog("open");
                row["marketuser.username"] = row["marketuser"].username;
                row["inputuser.username"] = row["inputuser"].username;
                if (row.wantedclass != null) {

                    row["wantedclass.classname"] = row["wantedclass"].classname;
                }
                $("#client_readForm").form('load', row);
                $("#client_readDialog").dialog("setTitle", "客户跟踪信息");
            }
        }
        ,

        advanceQuery: function () {
            $("#client_queryForm").form("clear");
            $("#client_queryDialog").dialog("open");
            $("#client_queryDialog").dialog("setTitle", "潜在学员高级查询");
            //$("#client_state").hide();
            $("#savebtn").hide();
        }
        ,
        /* throwout:function () {
         var row = $("#client_datagrid").datagrid("getSelected");
         if (!row.id) {
         $.messager.alert("温馨提示", "请选择要丢单的潜在学员", "info");
         return;
         } else {
         $("#client_throwDialog").dialog("open");
         $("#client_throwForm").form('load', row);
         $("#client_throwDialog").dialog("setTitle","丢单设置");
         }
         },*/
        inpool: function () {
            var row = $("#client_datagrid").datagrid("getSelected");

            if (!row) {
                $.messager.alert("温馨提示", "请选择要放入客户池的潜在学员", "info");
                return;
            } else {
                $("#client_inPoolDialog").dialog("open");
                row["username"] = row.username;
                $("#client_inPoolForm").form('load', row);
                $("#client_inPoolDialog").dialog("setTitle", "客户跟踪信息");
            }
        }
        ,

        save: function () {
            var url = "/client_save.do";
            if ($("[name='id']").val()) {
                url = "/client_edit.do";
            }
            $("#editForm").form("submit", {
                url: url,
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#client_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#client_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        }
        ,
        tsave: function () {
            var row = $("#client_datagrid").datagrid("getSelected");
            $("#trackForm").form("submit", {
                url: "/client_updateByTrack.do",
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#client_trackDialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#client_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        }
        ,

        aquery: function () {
            $("#client_queryForm").form("submit", {
                url: "/client_list.do",
                success: function (data) {
                    $("#client_queryDialog").dialog("close");
                    data = $.parseJSON(data),
                        $("#client_datagrid").datagrid("loadData", data)
                }
            })
        }
        ,
        reset: function () {
            $("#editForm").form('clear', {});
            $("#client_queryForm").form('clear', {});
        }
        ,

        cancel: function () {
            $("#client_dialog").dialog("close");
        }
        ,

        changeFormal: function () {
            var row = $("#client_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要转正的学员", "info");
                return;
            } else {
                if (row.wantedclass) {
                    row["studentclass.id"] = row.wantedclass.id;
                }
                if (row.marketuser) {
                    row["marketuser.id"] = row.marketuser.id;
                }
                $("#student_posform").form("clear");
                $("#student_posform").form("load", row);
                $("#student_dialog").dialog("setTitle", "转正学员");
                $("#payedfee").on("blur", function () {
                    var owned = $("#totalfee").val() - $("#payedfee");
                    if (owned) {
                        $("#ownedfee").val();
                    }
                });

                $("#totalfee").on("blur", function () {
                    var owned = $("#totalfee").val() - $("#payedfee");
                    if (owned) {
                        $("#ownedfee").val();
                    }
                });
                $("#clientId").val(row.id);
                $("#student_dialog").dialog("open");
            }
        }
        ,

        studentsave: function () {
            $("#student_posform").form("submit", {
                url: "/student_save.do",
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#student_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#client_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        }
        ,


        studentcancel: function () {
            $("#student_dialog").dialog("close");
        }
        ,
        readcancel: function () {
            $("#client_readDialog").dialog("close");
        }
        ,
        querycancel: function () {
            $("#client_queryDialog").dialog("close");
        }
        ,

        reload: function () {
            $("[name='keyword']").val("");
            $('#client_datagrid').datagrid('load', {});
        }
        ,
        savepool: function () {
            var row = $("#client_datagrid").datagrid("getSelected");
            console.log(row);
            $.messager.confirm("温馨提示:", "确定要放入资源池么?", function (r) {
                if (r) {
                    //弹出页面书写原因
                    //row["username"]=row.username;
                    var reason = $("[name=inpoolreason]").val();
                    var time = $("[name=inpooltime]").val();
                    $.post('/client_inPool.do', {id: row.id, inpooltime: time, inputreason: reason}, function (data) {
                        if (data.success) {
                            $.messager.alert("温馨提示", data.msg, "info");
                            $("#client_datagrid").datagrid("reload");
                        } else {
                            $.messager.alert("温馨提示", data.msg, "info");
                        }
                        $("#client_inPoolDialog").dialog("close");
                        // $("#client_datagrid").datagrid("showColumn", "inpooltime");
                    });
                }
            });
        }
        ,

        selectQuery: function () {
            $("#client_datagrid").datagrid("reload", {});
        }
        ,

        fileOut: function () {
            window.location.href = "/client_fileOut.do";
        }
        ,

        fileIn: function () {
            $("#fileIn").dialog("open");
        }
        ,

        fileSave: function () {
            $("#clientFileForm").form("submit", {
                url: "/client_fileIn.do",
                success: function (data) {
                    data = $.parseJSON(data);
                    $("#fileIn").dialog("close");
                    $.messager.alert("温馨提示", data.msg, "info");
                }
            });
        }
        ,

        fileCancel: function () {
            $("#fileIn").dialog("close");
        }
        ,

        view_pool: function () {
            //$("#client_inPoolDialog").datagrid("open");
            $("#client_datagrid").datagrid("showColumn", "inpooltime");
            $("#client_datagrid").datagrid("load", {
                saleManId: 0
            });
            $("#push_pool").hide();
            //$("#distribute_pool").show();
            //$("#take_pool").show();
            $("#client_datagrid").datagrid({singleSelect: false});
            //$("#schoolClient_chagestatebtn").linkbutton("disable");

        }
    };

    var divMethod = {
        throwout: function () {
            //$("#client_inPoolDialog").dialog("open");
            var row = $("#client_datagrid").datagrid("getSelected");
            // console.log(row)
            if (!row) {
                $.messager.alert("温馨提示", "请选择要放入资源池的学校客户", "info");
                return;
            }
            if (row.status == "3") {
                $.messager.alert("温馨提示", "此客户无法放入资源池", "info");
                return;
            } else {
                $("#client_inPoolDialog").dialog("open");
                row["name"] = row.username;
                $("#client_inPoolForm").form("load", row);
            }
        },
        rereturn: function () {
            $("#client_datagrid").datagrid({singleSelect: true});
            $("#client_datagrid").datagrid("reload", {});
            //$("#take_pool").hide();
            $("#push_pool").show();
            $("#client_datagrid").datagrid("hideColumn", "inpooltime");
            $("#schoolClient_chagestatebtn").linkbutton("disable");
        }
    }

    /*$("#throwout").click(function () {
     var row = $("#client_datagrid").datagrid("getSelected");
     if (!row.id) {
     $.messager.alert("温馨提示", "请选择要丢单的潜在学员", "info");
     return;
     } else {
     $("#client_throwDialog").dialog("open");
     $("#client_throwForm").form('load', row);
     $("#client_throwDialog").dialog("setTitle","丢单设置");
     }
     })
     */
    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        clientMethod[cmd]();
    });

    $("div[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        divMethod[cmd]();
    });

})






