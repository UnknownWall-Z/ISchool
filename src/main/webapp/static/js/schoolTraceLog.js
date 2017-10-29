/**
 * By Sniper
 */
$(function () {
    $("#log_datagrid").datagrid({
        url: "/schoolTraceLog_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {
                field: "tracer", title: "跟进员工", width: 100, formatter: function (value) {
                return value ? value.username : "";
            }
            },
            {
                field: "client", title: "学校客户", width: 100, formatter: function (value) {
                return value ? value.name : "漏写";
            }
            },
            {field: "talkTime", title: "跟进时间", width: 100},
            {field: "inputTime", title: "建表时间", width: 100},
            {field: "talkWay", title: "跟进方式", width: 100},
            {
                field: "state", title: "状态", width: 100, formatter: function (value) {
                return value ? "<span style='color:green'>已审核</span>" : "<span style='color:red'>未审核</span>";
            }
            }
        ]],
        toolbar: "#log_tb",
        onClickRow: function (rowIndex, rowData) {
            if (rowData.state) {
                $("#btn_log_audit").linkbutton("disable");
            } else {
                $("#btn_log_audit").linkbutton("enable");
            }
        }
    });

    function booleanFormatter(value) {
        if (value) {
            return "是";
        } else {
            return "否";
        }
    }

    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons: "#file_bt"
    });

    $("#log_dialag").dialog({
        width: 570,
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
                if (row["tracer"].id) {
                    row["tracer.id"] = row["tracer"].id;
                    if (row["tracer"].username) {
                        row["tracer.username"] = row["tracer"].username;
                    }
                    if (row["tracer"].tel) {
                        row["tracer.tel"] = row["tracer"].tel;
                    }
                    if (row["tracer"].email) {
                        row["tracer.email"] = row["tracer"].email;
                    }
                }
                if (row["client"].id) {
                    row["client.id"] = row["client"].id;
                    if (row["client"].name) {
                        row["client.name"] = row["client"].name;
                    }
                }
                if (row['manager'].id) {
                    row['manager.id'] = row['manager'].id;
                    if (row['manager'].username) {
                        row['manager.username'] = row['manager'].username;
                    }
                }

                $("#editForm").form("load", row);
                //如果没审核.隐藏审核人信息
                $("input").prop("readonly", "readonly");
                $("#save").hide();
                if (!row.state) {
                    $("#log_manager").hide();
                }
                $("#log_dialag").dialog("open");
                $("#log_dialag").dialog("setTitle", "查看");
            }
        },

        audit: function () {
            var row = $("#log_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要审核的日志", "info");
                return;
            } else {
                //审核功能
                $("#editForm").form("clear");
                if (row["tracer"].id) {
                    row["tracer.id"] = row["tracer"].id;
                    if (row["tracer"].username) {
                        row["tracer.username"] = row["tracer"].username;
                    }
                    if (row["tracer"].tel) {
                        row["tracer.tel"] = row["tracer"].tel;
                    }
                    if (row["tracer"].email) {
                        row["tracer.email"] = row["tracer"].email;
                    }
                }
                if (row["client"].id) {
                    row["client.id"] = row["client"].id;
                    if (row["client"].name) {
                        row["client.name"] = row["client"].name;
                    }
                }
                $('input').removeAttr("readonly");

                //如果已经审核了.显示审核人.禁用标签.将dialog里的确定标签
                $("#editForm").form("load", row);
                $("#log_manager").hide();
                $("#save").show();
                //如果没审核.隐藏审核人信息
                $("#log_dialag").dialog("open");
                $("#log_dialag").dialog("setTitle", "审核");
            }
        },

        changState: function () {
            var row = $("#log_datagrid").datagrid("getSelected");
            if (!row.id) {
                $.messager.alert("温馨提示", "请选择要离职的员工", "info");
                return;
            } else {
                $.messager.confirm("温馨提示", "确定要离职该员工吗", function (r) {
                    if (r) {
                        $.post("/employee/changState.do", {id: row.id}, function (data) {
                            if (data.success) {
                                $.messager.alert("温馨提示", data.msg, "info", function () {
                                    $("#log_datagrid").datagrid("reload");
                                });
                            } else {
                                $.messager.alert("温馨提示", data.msg, "info");
                            }
                        });
                    }
                });
            }
        },

        save: function () {
            $.messager.confirm("温馨提示", "确定要审核吗?", function (r) {
                if (r) {
                    $("#editForm").form("submit", {
                        url: '/schoolTraceLog_audit.do',
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






