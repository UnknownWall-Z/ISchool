$(function () {
    $("#schoolLinkMan_datagrid").datagrid({
        url: "/schoolLinkMan_listAll.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {field: "name", title: "联系人姓名", width: 100},
            {field: "age", title: "年龄", width: 100},
            {
                field: "gender", title: "性别", width: 100, formatter: function (value) {
                return value ? "男" : "女";
            }
            },
            {field: "birthday", title: "生日", width: 100},
            {field: "qq", title: "QQ", width: 100},
            {field: "wechat", title: "微信", width: 100},
            {field: "email", title: "邮箱", width: 100},
            {
                field: "school", title: "学校", width: 100, formatter: function (value) {
                if (value) {
                    return value.name;
                }
            }
            },
            {field: "firstlinkman", title: "是否是第一联系人", width: 100, formatter: booleanFormatter},
            {field: "position", title: "职位", width: 100},
            {field: "department", title: "部门", width: 100},
            {field: "introduction", title: "简介", width: 100}
        ]],
        toolbar: "#schoolLinkMan_tb"
    });

    function booleanFormatter(value) {
        if (value) {
            return "是";
        } else {
            return "否";
        }
    }

    $("#schoolLinkMan_dialog").dialog({
        modal: true,
        width: 700,
        height: 350,
        closed: true,
        buttons: "#schoolLinkMan_bt"
    });

    var methodObj = {
        add: function () {
            $("#editForm").form("clear");
            $("#schoolLinkMan_dialog").dialog("open");
            $("#schoolLinkMan_dialog").dialog("setTitle", "增加联系人");
        },

        edit: function () {
            /* $("#emp_pwd").hide();*/
            var row = $("#schoolLinkMan_datagrid").datagrid("getSelected");
            console.log(row);
            if (!row) {
                $.messager.alert("温馨提示", "请选择要修改的联系人", "info");
                return;
            } else {
                $("#editForm").form("clear");
                if (row["school"]) {
                    if (row["school"].id) {
                        row["school.id"] = row["school"].id;
                    }
                }
                row["gender"] = row["gender"] + "";
                row["firstlinkman"] = row["firstlinkman"] + "";
                $("#school").combobox("setValue", row["school.id"]);
                $("#editForm").form("load", row);
                $("#schoolLinkMan_dialog").dialog("open");
                $("#schoolLinkMan_dialog").dialog("setTitle", "编辑联系人");
            }
        },

        del: function () {
            var row = $("#schoolLinkMan_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要删除的联系人", "info");
                return;
            } else {
                $.messager.confirm("温馨提示", "确定要删除该联系人吗", function (r) {
                    if (r) {
                        $.post("/schoolLinkMan_delete.do", {id: row.id}, function (data) {
                            if (data.success) {
                                $.messager.alert("温馨提示", data.msg, "info", function () {
                                    $("#schoolLinkMan_datagrid").datagrid("reload");
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
            var url = "/schoolLinkMan_save.do";
            if ($("[name='id']").val()) {
                url = "/schoolLinkMan_edit.do";
            }
            $("#editForm").form("submit", {
                url: url,
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#schoolLinkMan_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#schoolLinkMan_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },

        cancel: function () {
            $("#schoolLinkMan_dialog").dialog("close");
        },

        reload: function () {
            /*$("[name='keyword']").val("");*/
            $('#schoolLinkMan_datagrid').datagrid('load', {});
        },
    };

    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        methodObj[cmd]();
    });

})






