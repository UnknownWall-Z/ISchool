$(function () {
    $("#schoolClient_datagrid").datagrid({
        url: "/schoolClient_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {field: "name", title: "名字", width: 100},
            {field: "location", title: "地址", width: 100},
            {field: "importance", title: "重要度", width: 100},
            {field: "wantedLevel", title: "意向度", width: 100},
            {field: "schooleTel", title: "学校电话", width: 100},
            {field: "wantedSubject", title: "意向学科", width: 100},
            {
                field: "linkmenName", title: "联系人", width: 100
            },
            {
                field: "recruitre", title: "营销人员", width: 100, formatter: function (value) {
                return value ? value.username : "<span style='color: red'>无记载</span>";
            }
            },
            {
                field: "tracer", title: "跟进人员", width: 100, formatter: function (value) {
                return value ? value.username : "暂无跟进人员";
            }
            },
            {field: "lastTraceTime", title: "上次跟进时间", width: 100},
            {field: "nextTraceTime", title: "计划下次跟进时间", width: 100},
            {
                field: "clientState", title: "跟进状态", width: 100, formatter: function (value) {
                return value ? "<span style='color: green'>已跟进</span>" : "<span style='color: red'>待跟进</span>";
            }
            },
            {field: "state", title: "客户状态", width: 100}
        ]],
        toolbar: "#schoolClient_tb",
        onClickRow: function (rowIndex, rowData) {
            if (rowData.clientState || rowData.state != '正常') {
                $("#schoolClient_chagestatebtn").linkbutton("disable");
            } else {
                $("#schoolClient_chagestatebtn").linkbutton("enable");
            }
        }
    });
    $("#search_dialog").dialog({
        title: '搜索',
        width: 300,
        height: 200,
        closed: true,
        modal: true,
        buttons: "#btn_querySearch"
    });
    $("#pool_distribute_dialog").dialog({
        modal: true,
        title: '分配客户',
        width: 400,
        height: 300,
        closed: true,
        buttons: "#pool_distribute_btn"
    });
    $("#pool_distribute_datagrid").datagrid({
        fit: true,
        fitColumns: true,
        singleSelect: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {field: "name", title: "名字", width: 100},
            {field: "importance", title: "重要度", width: 100},
            {field: "wantedSchool", title: "意向校区", width: 100},
            {field: "wantedSubject", title: "意向学科", width: 100},
            {field: "wantedLevel", title: "意向度", width: 100}
        ]]
    });

    $("#fileIn").dialog({
        modal: true,
        width: 400,
        height: 100,
        closed: true,
        buttons: "#file_bt"
    });

    $("#schoolClient_dialog").dialog({
        modal: true,
        width: 800,
        height: 350,
        closed: true,
        buttons: "#schoolClient_bt"
    });
    $("#schoolTraceLog_dialog").dialog({
        modal: true,
        width: 600,
        height: 350,
        closed: true,
        buttons: "#schoolTraceLog_bt",
        title: '查询'
    });

    $("#take_pool").hide();
    var menuButton = {
        view_pool: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                userId: 0
            });
            $("#push_pool").hide();
            //$("#distribute_pool").show();
            $("#take_pool").show();
            $("#schoolClient_datagrid").datagrid({singleSelect: false});
            $("#schoolClient_chagestatebtn").linkbutton("disable");

            $("#schoolClient_add").hide();
            $("#schoolClient_editbtn").hide();
        },
        push_pool: function () {
            var row = $("#schoolClient_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要放入资源池的学校客户", "info");
                return;
            }
            if (row.state != '正常') {
                $.messager.alert("温馨提示", "此学校客户无法放入资源池", "info");
                return;
            } else {
                $.messager.confirm("温馨提示:", "确定要放入资源池么?", function (r) {
                    if (r) {
                        //弹出页面书写原因
                        $.post('/schoolClient_pushToPool.do', {id: row.id}, function (data) {
                            if (data.success) {
                                $.messager.alert("温馨提示", data.msg, "info");
                                $("#schoolClient_datagrid").datagrid("reload");
                            } else {
                                $.messager.alert("温馨提示", data.msg, "info");
                            }
                        });
                    }
                });
            }
        },
        back_pool: function () {
            $("#schoolClient_datagrid").datagrid({singleSelect: true});
            $("#schoolClient_datagrid").datagrid("reload", {});
            $("#take_pool").hide();
            $("#push_pool").show();
            $("#schoolClient_chagestatebtn").linkbutton("disable");
            $("#schoolClient_add").show();
            $("#schoolClient_editbtn").show();
        },
        take_pool: function () {
            var row = $("#schoolClient_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要接手资源池的学校客户", "info");
                return;
            } else {
                $.messager.confirm("温馨提示:", "确定要接手这个学校客户么?", function (r) {
                    if (r) {

                        $.post('/schoolClientTransferLog_takeFromPool.do', {id: row.id}, function (data) {
                            if (data.success) {
                                $.messager.alert("温馨提示", data.msg, "info");
                                $("#schoolClient_datagrid").datagrid("reload");
                            } else {
                                $.messager.alert("温馨提示", data.msg, "info");
                            }
                        });
                    }
                });
            }
        },
        distribute_pool: function () {
            var row = $("#schoolClient_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要分配的学校客户", "info");
                return;
            } else {
                //弹出分配任务的窗口
                var rows = $("#schoolClient_datagrid").datagrid("getSelections");
                $("#pool_distribute_dialog").dialog("open");
                $("#pool_distribute_datagrid").datagrid({
                    data: rows
                });
            }
        }
    };
    var quick_search = {
        search_near5: function () {

            $("#schoolClient_datagrid").datagrid("load", {
                nearTime: 5,
                clientState: false
            });
        },
        search_near10: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                nearTime: 10,
                clientState: false
            });
        },
        search_eagerness3: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                eagerness: "高"
            });
        },
        search_eagerness2: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                eagerness: "中"
            });
        },
        search_eagerness1: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                eagerness: "低"
            });
        },
        search_importance5: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                importance: "很重要"
            });
        },
        search_importance4: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                importance: "重要"
            });
        },
        search_importance3: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                importance: "有些重要"
            });
        },
        search_importance2: function () {
            $("#schoolClient_datagrid").datagrid("load", {
                importance: "一般重要"
            });
        }
    };

    $("#pool>div").on("click", function () {
        var cmd = $(this).data("cmd");
        menuButton[cmd]();
    });
    $("#quickSearch>div").on("click", function () {
        var cmd = $(this).data("cmd");
        quick_search[cmd]();
    });
    var methodObj = {
        pool_distribute_save: function () {
            var rows = $("#pool_distribute_datagrid").datagrid("getRows");
            $("#pool_distribute").form("submit", {
                url: '/schoolClientTransferLog_distribute.do',
                onSubmit: function (param) {
                    for (var index = 0; index < rows.length; index++) {
                        param["clientSchools[" + index + "].id"] = rows[index].id;
                    }
                    param["auditState"] = true;
                },
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#schoolClient_datagrid").datagrid("reload");
                        });
                        $("#pool_distribute_dialog").dialog("close");
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },
        pool_distribute_cancel: function () {
            $("#pool_distribute_dialog").dialog("close");
        },
        add: function () {
            $("#editForm").form("clear");
            $("#schoolClient_dialog").dialog("open");
            $("#schoolClient_dialog").dialog("setTitle", "增加学校客户");
            /* $("#emp_state").hide();*/
        },

        edit: function () {
            /* $("#emp_pwd").hide();*/
            var row = $("#schoolClient_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的学校客户", "info");
                return;
            } else {
                $("#editForm").form("clear");
                if (row.linkmen.id) {
                    row["linkmen.id"] = row.linkmen.id;
                }
                if (row.recruitre.id) {
                    row["recruitre.id"] = row.recruitre.id;
                }
                if (row.tracer.id) {
                    row["tracer.id"] = row.tracer.id;
                }
                row["clientState"] = row["clientState"] + "";
                $("#editForm").form("load", row);
                $("#schoolClient_dialog").dialog("open");
                $("#schoolClient_dialog").dialog("setTitle", "编辑学校客户");

            }
        },

        changState: function () {
            var row = $("#schoolClient_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要丢单的学校客户", "info");
                return;
            } else {
                $.messager.confirm("温馨提示", "确定要丢单该学校客户吗", function (r) {
                    if (r) {
                        $.post("/schoolClient/changState.do", {id: row.id}, function (data) {
                            if (data.success) {
                                $.messager.alert("温馨提示", data.msg, "info", function () {
                                    $("#schoolClient_datagrid").datagrid("reload");
                                });
                            } else {
                                $.messager.alert("温馨提示", data.msg, "info");
                            }
                        });
                    }
                });
            }
        },

        trace: function () {
            var row = $("#schoolClient_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要跟进的学校客户", "info");
                return;
            } else {
                //跟进日志
                $("#traceForm").form("clear");
                if (row.id) {
                    row["client.id"] = row.id;
                }
                if (row.name) {
                    row['client.name'] = row.name;
                }

                if (row.tracer.id) {
                    row["tracer.id"] = row.tracer.id;
                    if (row.tracer.username) {
                        row["tracer.username"] = row.tracer.username;
                    }
                    if (row.tracer.email) {
                        row["tracer.email"] = row.tracer.email;
                    }
                    if (row.tracer.tel) {
                        row["tracer.tel"] = row.tracer.tel;
                    }
                }
                $("#schoolTraceLog_dialog").dialog("open");
                $("#schoolTraceLog_dialog").dialog("setTitle", "增加学校客户");
                $("#traceForm").form("load",row);
            }
        },
        save_log: function () {


            $("#traceForm").form("submit", {
                url: url,
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#schoolTraceLog_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#schoolClient_datagrid").datagrid("load", {});
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },

        save: function () {

            var url = "/schoolClient_save.do";
            if ($("#eidtFormId").val()) {
                url = "/schoolClient_edit.do";
            }
            $("#editForm").form("submit", {
                url: url,
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#schoolClient_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#schoolClient_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },

        cancel: function () {
            $("#schoolClient_dialog").dialog("close");
        },
        cancel_log: function () {
            $("#schoolTraceLog_dialog").dialog("close");
        },

        reload: function () {
            $("#schoolClient_add").show();
            $("#schoolClient_editbtn").show();
            $('#schoolClient_datagrid').datagrid("load", {});
            $("#schoolClient_datagrid").datagrid({singleSelect: true});
            $("#take_pool").show();
            $("#push_pool").show();
            $("#schoolClient_chagestatebtn").linkbutton("disable");
        },

        selectQuery: function () {
            $("#search_dialog").dialog("open");
            $("#search_dialog").form("clear");

        },
        pageQuery_save: function () {
            var schoolName = $("#schoolName").val();
            var schoolType = $("#schoolType").val();
            var recruiterId = $("#recruiterId").val();
            var state = $("#state").val();
            $("#schoolClient_datagrid").datagrid("load", {
                schoolName: schoolName,
                type: schoolType,
                recruiterId: recruiterId,
                state: state
            });
            $("#search_dialog").dialog("close");
        },
        pageQuery_cancel: function () {
            $("#search_dialog").dialog("close");

        },

        fileOut: function () {
            window.location.href = "/schoolClient_fileOut.do";
        },

        fileIn: function () {
            $("#fileIn").dialog("open");
        },

        fileSave: function () {
            $("#schoolFileForm").form("submit", {
                url: "/schoolClient_fileIn.do",
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
    }


    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        methodObj[cmd]();
    });

})






