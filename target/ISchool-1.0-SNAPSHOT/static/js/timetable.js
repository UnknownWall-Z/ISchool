$(function () {
    $("#timetable_datagrid").datagrid({
        url: "/timetable_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {
                field: "studentclass", title: "班级名称", width: 100, formatter: function (value) {
                    if (value) {
                        return value.classname;
                    }
                }
            },
            {
                field: "employee", title: "班主任", width: 100, formatter: function (value) {
                if (value) {
                    return value.realname;
                }
            }
            },
            {
                field: "timetableitem", title: "课程明细", width: 100, formatter: function (value) {
                    if (value) {
                        return value.timetableitmename;
                    }
                }
            },
        ]],
        toolbar: "#timetable_tb"
    });


    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons: "#file_bt"
    });

    $("#timetable_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons: "#timetable_bt"
    });

    var timetableMethod = {

        add: function () {
            $("#editForm").form("clear");
            $("#timetable_dialog").dialog("open");
            $("#timetable_dialog").dialog("setTitle", "添加课程表");
            $("#timetable_state").hide();
        },

        edit: function () {
            var row = $("#timetable_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的课程表", "info");
                return;
            } else {
                $("#editForm").form("clear");
                row["studentclass.id"] = row["studentclass"].id;
                row["employee.id"] = row["employee"].id;
                row["timetableitem.id"] = row["timetableitem"].id;

                $("#editForm").form("load", row);
                $("#timetable_dialog").dialog("open");
                $("#timetable_dialog").dialog("setTitle", "编辑课程表");
            }
        },

        //分配课程
        allocationCourse: function () {
            var row = $("#timetable_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要分配的班级", "info");
                return;
            }else {

                $("#allocationCourseForm").form("clear");
                row["studentclass.id"] = [row.studentclass.id];
                row["roomclass.id"] = [row.roomclass.id];
                row["employee.id"] = [row.employee.id];
                $("#allocationCourseForm").form("load", row);
                $("#timetable_dialog").dialog("open");
                $("#timetable_dialog").dialog("setTitle", "编辑课程表");
            }
        },

        save: function () {
            var url = "/timetable_save.do";
            if ($("[name='id']").val()) {
                url = "/timetable_edit.do";
            }

            $("#editForm").form("submit", {
                url: url,
                onSubmit: function (param) {
                    var id = $("#timetable_combobox").combobox("getValue");
                    param["headteacher.id"] = id;

                },
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#timetable_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#timetable_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
            console.log("fds");
        },

        cancel: function () {
            $("#timetable_dialog").dialog("close");
        },

        reload: function () {
            $("[name='keyword']").val("");
            $('#timetable_datagrid').datagrid('load', {});
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            $("#timetable_datagrid").datagrid("load", {keyword: keyword});
        },

        fileOut: function () {
            window.location.href = "/timetable_fileOut.do";
        },

        fileIn: function () {
            $("#fileIn").dialog("open");
        },

        fileSave: function () {
            $("#timetableFileForm").form("submit", {
                url: "/timetable_fileIn.do",
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
        timetableMethod[cmd]();
    });
});






