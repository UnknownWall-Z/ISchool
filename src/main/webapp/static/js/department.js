$(function () {
    $("#department_datagrid").datagrid({
        url: "/department_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "sn", title: "部门编号", width: 100, align: 'center'},
            {field: "name", title: "部门名称", width: 100, align: 'center'},
            {field: "manage", title: "部门经理", width: 100, align: 'center', formatter: manageName},
            {field: "parent", title: "上级部门", width: 100, align: 'center', formatter: parentName},
            {
                field: "state", title: "状态", width: 100, align: 'center',formatter: function (value) {
                if (value) {
                    return "正常";
                } else {
                    return "<span style='color: red'>停用</span>";
                }
            }
            }
        ]],
        toolbar: "#department_tb",
        onClickRow: function (rowIndex, rowData) {
            if (!rowData.state) {
                $("#department_editbtn").linkbutton("disable");
                $("#department_chagestatebtn").linkbutton("disable");
                $("#department_restorechagestatebtn").linkbutton("enable");
            } else {
                $("#department_editbtn").linkbutton("enable");
                $("#department_chagestatebtn").linkbutton("enable");
                $("#department_restorechagestatebtn").linkbutton("disable");
            }
        }
    });

    function manageName(value, row, index) {
        return row.manage ? row.manage.realname : "";
    }

    function parentName(value, row, index) {
        return row.parent ? row.parent.name : "";
    }

   /* $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons: "#file_bt"
    });*/

    $("#department_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons: "#department_bt"
    });

    var departmentMethod = {
        add: function () {
            $("#editForm").form("clear");
            $("#department_dialog").dialog("open");
            $("#department_dialog").dialog("setTitle", "增加部门");
        },

        edit: function () {
            var row = $("#department_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的部门", "info");
                return;
            } else {
                $("#editForm").form("clear");

                if (row["manage"]) {
                    row["manage.id"] = row["manage"].id;
                }

                if (row["parent"]) {
                    row["parent.id"] = row["parent"].id;
                }

                $("#editForm").form("load", row);
                $("#department_dialog").dialog("open");
                $("#department_dialog").dialog("setTitle", "编辑部门");
            }
        },

        changState: function () {
            var row = $("#department_datagrid").datagrid("getSelected");
            if (!row.id) {
                $.messager.alert("温馨提示", "请选择要停用的部门", "info");
                return;
            } else {
                $.messager.confirm("温馨提示", "确定要停用该部门吗", function (r) {
                    if (r) {
                        $.post("/department_changState.do",
                            {id: row.id},
                            function (data) {
                                if (data.success) {
                                    $.messager.alert("温馨提示", data.msg, "info", function () {
                                        $("#department_datagrid").datagrid("reload");
                                    });
                                } else {
                                    $.messager.alert("温馨提示", data.msg, "info");
                                }
                            });
                    }
                });
            }
        },


        restoreChangState: function () {
            var row = $("#department_datagrid").datagrid("getSelected");
            if (!row.id) {
                $.messager.alert("温馨提示", "请选择要恢复的部门", "info");
                return;
            } else {
                $.messager.confirm("温馨提示", "确定要恢复该部门吗", function (r) {
                    if (r) {
                        $.post("/department_restoreChangState.do",
                            {id: row.id},
                            function (data) {
                                if (data.success) {
                                    $.messager.alert("温馨提示", data.msg, "info", function () {
                                        $("#department_datagrid").datagrid("reload");
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
            var url = "/department_save.do";
            if ($("[name='id']").val()) {
                url = "/department_edit.do";
            }
            $("#editForm").form("submit", {
                url: url,
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#department_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#department_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },

        cancel: function () {
            $("#department_dialog").dialog("close");
        },

        reload: function () {
            $("[name='keyword']").val("");
            $('#department_datagrid').datagrid('load', {});
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            var state = $("#department_state").val();
            $("#department_datagrid").datagrid("load", {
                keyword: keyword,
                stateselect:state
            });
        },

        fileOut: function () {
            window.location.href = "/department_fileOut.do";

        },

        /*
        fileIn: function () {
            $("#fileIn").dialog("open");
        },

        fileSave: function () {
            $("#departmentFileForm").form("submit", {
                url: "/department_fileIn.do",
                success: function (data) {
                    data = $.parseJSON(data);
                    $("#fileIn").dialog("close");
                    $.messager.alert("温馨提示", data.msg, "info");
                }
            });
        },*/

       /* fileCancel: function () {
            $("#fileIn").dialog("close");
        }*/
    };

    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        departmentMethod[cmd]();
    });

})






