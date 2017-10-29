$(function () {
    $("#log_datagrid").datagrid({
        url: "/schoolClientTransferLog_list.do",
        title: "学校客户转接记录",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {
                field: "clientSchool", title: "转接学校", width: 100, formatter: function (value) {
                return value ? value.name : "";
            }
            },
            {
                field: "outEmp", title: "转出方", width: 100, formatter: function (value) {
                return value ? value.username : "资源池";
            }
            },
            {
                field: "inEmp", title: "接手方", width: 100, formatter: function (value) {
                return value ? value.username : "资源池";
            }
            },
            {field: "inputTime", title: "制表时间", width: 100},
            {
                field: "manager", title: "审核人", width: 100, formatter: function (value) {
                return value ? value.username : "";
            }
            },
            {
                field: "auditState", title: "审核状态", width: 100, formatter: function (value) {
                return value ? "<span style='color: green'>已审核</span>" : "<span style='color: red'>待审核</span>";
            }
            }
        ]],
        toolbar: "#log_tb",
        onClickRow: function (rowIndex, rowData) {
            if (rowData.auditState) {
                $("#btn_log_audit").linkbutton("disable");
            } else {
                $("#btn_log_audit").linkbutton("enable");
            }
        }
    });

    $("#fileIn").dialog({
        width: 500,
        height: 100,
        closed: true,
        buttons: "#file_bt"
    });

    $("#log_dialag").dialog({
        width: 500,
        height: 350,
        closed: true,
        buttons: "#log_bt"
    });

    var empMethod = {
        //查看功能
        view: function () {
            var row = $("#log_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要查看的日志", "info");
                return;
            } else {
                //审核功能
                $("#editForm").form("clear");
                console.log(row);
                if (row["outEmp"]) {
                    if (row["outEmp"].id) {
                        row["outEmp.id"] = row["outEmp"].id;
                    }
                    if (row["outEmp"].username) {

                        row["outEmp.username"] = row["outEmp"].username;
                    }
                } else {
                    row["outEmp.username"] = "资源池";
                }
                if (row["inEmp"]) {
                    if (row["inEmp"].id) {

                        row["inEmp.id"] = row["inEmp"].id;
                    }
                    if (row["inEmp"].username) {

                        row["inEmp.username"] = row["inEmp"].username;
                    }
                } else {
                    row["inEmp.username"] = "资源池";
                }
                if (row["manager"]) {
                    if (row["manager"].id) {
                        row["manager.id"] = row["manager"].id;
                    }
                    if (row["manager"].username) {

                        row["manager.username"] = row["manager"].username;
                    }
                } else {
                    row["manager.username"] = "还未审核";
                }
                row["auditState"] = (row["auditState"] + "");
                row['result'] = row['result'] + '';
                if (row["clientSchool"]) {
                    if (row["clientSchool"].id) {
                        row["clientSchool.id"] = row["clientSchool"].id;
                        if (row["clientSchool"].name) {
                            row["clientSchool.name"] = row["clientSchool"].name;
                        }
                    }
                }
                console.log(row);

                $("#editForm").form("load", row);
                $("#log_manager").show();
                $("#save").hide();
                $("#log_dialag").dialog("open");
                $("#log_dialag").dialog("setTitle", "查看");
            }
        },

        audit: function () {
            var row = $("#log_datagrid").datagrid("getSelected");
            console.log(row);
            if (!row) {
                $.messager.alert("温馨提示", "请选择要审核的日志", "info");
                return;
            } else {
                //审核功能
                $("#editForm").form("clear");
                $('input').removeAttr("readonly");
                $("#save").show();
                if (row["outEmp"]) {
                    if (row["outEmp"].id) {
                        row["outEmp.id"] = row["outEmp"].id;
                        if (row["outEmp"].username) {
                            row["outEmp.username"] = row["outEmp"].username;
                        }
                    }
                }
                if (row["inEmp"]) {
                    if (row["inEmp"].id) {
                        row["inEmp.id"] = row["inEmp"].id;
                        if (row["inEmp"].username) {
                            row["inEmp.username"] = row["inEmp"].username;
                        }
                    }
                }
                if (row["manager"]) {
                    if (row["manager"].id) {
                        row["manager.id"] = row["manager"].id;
                    }
                    if (row["manager"].username) {
                        row["manager.username"] = row["manager"].username;
                    }
                }
                row["auditState"] = row["auditState"] ? "已审核" : "待审核";
                row["clientSchool.id"] = row["clientSchool"].id;
                row["clientSchool.name"] = row["clientSchool"].name;
                //如果已经审核了.显示审核人.禁用标签.将dialog里的确定标签
                $("#editForm").form("load", row);
                $("#log_manager").hide();
                //如果没审核.隐藏审核人信息
                $("#log_dialag").dialog("open");
                $("#log_dialag").dialog("setTitle", "审核");
            }
        },

        save: function () {
            $.messager.confirm("温馨提示", "确定要审核吗?", function (r) {
                if (r) {
                    $("#editForm").form("submit", {
                        url: '/schoolClientTransferLog_audit.do',
                        success: function (data) {
                            data = $.parseJSON(data);
                            if (data.success) {
                                $("#log_dialag").dialog("close");
                                $.messager.alert("温馨提示", data.msg, "info", function () {
                                    $("#log_datagrid").datagrid("reload");
                                });
                            } else {
                                $.messager.alert("温馨提示", data.msg, "info");
                            }
                        }
                    });
                }
            });

        },
        cancel: function () {
            $("#log_dialag").dialog("close");
        },

        reload: function () {
            $("[name='keyword']").val("");
            $('#log_datagrid').datagrid('load', {});
        },
        noAudit:function(){
            $('#log_datagrid').datagrid('load', {
               auditState:'false'
            });
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            $("#log_datagrid").datagrid("load", {keyword: keyword});
        },

        fileOut: function () {
            window.location.href = "/employee_fileOut.do";
        },

        fileIn: function () {
            $("#fileIn").dialog("open");
        },

        fileSave: function () {
            $("#empFileForm").form("submit", {
                url: "/employee_fileIn.do",
                success: function (data) {
                    data = $.parseJSON(data);
                    $("#fileIn").dialog("close");
                    $.messager.alert("温馨提示", data.msg, "info");
                }
            });
        },

        fileCancel: function () {
            $("#fileIn").dialog("close");
        }
    };

    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        empMethod[cmd]();
    });

})






