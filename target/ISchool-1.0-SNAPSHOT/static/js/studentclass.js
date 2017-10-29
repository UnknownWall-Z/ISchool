$(function () {
    $("#studentclass_datagrid").datagrid({
        url: "/studentclass_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,

        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {field: "classname", title: "班级名称", width: 100},
            {field: "tatolstudent", title: "学生总数", width: 100},
            {field: "seating", title: "座位总数", width: 100},
            {
                field: "headteacher", title: "班主任", width: 100, formatter: function (value) {
                if (value) {
                    return value.realname;
                }
            }
            },
            {field: "classlocation", title: "班级地址", width: 100},
            {field: "affilliation", title: "归属系", width: 100},
            {
                field: "state", title: "课程表状态", width: 100, formatter: function (value) {
                if (value) {
                    return "未分配";
                } else {
                    return "<span style='color: red'>已分配</span>";
                }
            }
            },


        ]],
        toolbar: "#studentclass_tb",
        onClickRow: function (rowIndex, rowData) {
            if (rowData.state) {
                $("#studentclass_editbtn").linkbutton("enable");
                $("#studentclass_chagestatebtn").linkbutton("enable");
            } else {
                $("#studentclass_editbtn").linkbutton("disable");
                $("#studentclass_chagestatebtn").linkbutton("disable");

            }
        }
    });

    //--------------------
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

    $("#studentclass_dialog").dialog({
        width: 300,
        height: 300,
        closed: true,
        buttons: "#studentclass_bt"
    });

    var studentclassMethod = {

        add: function () {
            $("#editForm").form("clear");
            $("#studentclass_dialog").dialog("open");
            $("#studentclass_dialog").dialog("setTitle", "添加班级");
            $("#studentclass_state").hide();
        },

        edit: function () {
            $("#studentclass_pwd").hide();
            var row = $("#studentclass_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的班级", "info");
                return;
            } else {
                $("#editForm").form("clear");
                row["headteacher.id"] = row["headteacher"].id;
                row["state"] = row["state"] + "";

                var ids = $.ajax({
                    url: "/studentclass_getEmployee.do?id=" + row.id,
                    async: false
                }).responseText;

                ids = $.parseJSON(ids);
                $("#editForm").form("load", row);
                $("#studentclass_dialog").dialog("open");
                $("#studentclass_dialog").dialog("setTitle", "编辑班级");
            }
        },

        changState: function () {
            var row = $("#studentclass_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要分配的班级", "info");
                return;
            } else {
                $.messager.confirm("温馨提示", "确定要分配该班级课程表吗?", function (r) {
                    if (r) {
                        $.post("/studentclass_changState.do", {id: row.id}, function (data) {
                            if (data.success) {
                                $.messager.alert("温馨提示", data.msg, "info", function () {
                                    $("#studentclass_datagrid").datagrid("reload");
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
            var url = "/studentclass_save.do";
            if ($("[name='id']").val()) {
                url = "/studentclass_edit.do";
            }

            $("#editForm").form("submit", {
                url: url,
                onSubmit: function (param) {
                    var id = $("#studentclass_combobox").combobox("getValue");
                    param["headteacher.id"] = id;

                },
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#studentclass_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#studentclass_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
            console.log("fds");
        },

        cancel: function () {
            $("#studentclass_dialog").dialog("close");
        },

        reload: function () {
            $("[name='keyword']").val("");
            $('#studentclass_datagrid').datagrid('load', {});
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            $("#studentclass_datagrid").datagrid("load", {keyword: keyword});
        },

        fileOut: function () {
            window.location.href = "/studentclass_fileOut.do";
        },

        fileIn: function () {
            $("#fileIn").dialog("open");
        },

        fileSave: function () {
            $("#studentclassFileForm").form("submit", {
                url: "/studentclass_fileIn.do",
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
        studentclassMethod[cmd]();
    });
});






