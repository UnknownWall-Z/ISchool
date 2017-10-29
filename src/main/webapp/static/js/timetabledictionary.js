//课程表下!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
$(function () {

    var timetableDatagrid,
        timetableDialog,
        timetableForm;
    timetableDatagrid = $("#timetable_datagrid");
    timetableDialog = $("#timetable_dialog");
    timetableForm = $("#timetable_form");
    /*
     * 父  初始化数据表格
     */
    timetableDatagrid.datagrid({
        url: "/studentclass_list.do?stateNow=1",
        width: 1000,
        fit: true,
        pagination: true,
        rownumbers: true,
        singleSelect: true,
        striped: true,
        fitColumns: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {field: "classname", title: "班级名称", width: 100},

            {
                field: "headteacher", title: "班主任", width: 100, formatter: function (value) {
                if (value) {
                    return value.realname;
                }
            }
            }
        ]],

        toolbar: '#timetablex_tb',

        /**
         *父点击 发送子的路径
         */
        onClickRow: function () {
            /**
             * 获取父的当前的id  和 子的路径的id进行对比
             * @type {jQuery}
             */
            var rowData = $("#timetable_datagrid").datagrid("getSelected");
            var id = $("#timetableitem_datagrid").datagrid("options").url = "/timetabledictionary_getTimetableitemByid.do?id=" + rowData.id;
            $("#timetableitem_datagrid").datagrid("load", {
                id: id,
            });
        }
    });


    /*
     * 初始化新增/编辑对话框
     */
    timetableDialog.dialog({
        width: 300,
        height: 300,
        closed: true,
        buttons: '#timetablex_bt'
    });
    var timetableMethod = {
        cancel: function () {
            $("#timetable_dialog").dialog("close");
        },

        reload: function () {
            $("[name='keyword']").val("");
            $('#begin').combo('setText','');
            $('#ending').combo('setText','');
            $('#timetable_datagrid').datagrid('load', {});
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            $("#timetable_datagrid").datagrid("load", {keyword: keyword});
        },
    };

    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        timetableMethod[cmd]();
    });
});
//课程表上!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


//子目录下////////////////////////////////////////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

$(function () {
    var timetableitemDatagrid,
        timetableitemDialog,
        timetableitemForm;
    timetableitemDatagrid = $("#timetableitem_datagrid");
    timetableitemDialog = $("#timetableitem_dialog");
    timetableitemForm = $("#timetableitem_form");
    var id=$("#timetable_datagrid").datagrid("getSelected");

    timetableitemDatagrid.datagrid({
       /* url: "/timetableitemdictionary_list.do",*/
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
            {field: "roomclass", title: "教室名称", width: 100, formatter: function (value) {
                if (value) {
                    return value.classroom;
                }
            }
            },
            { field: "employee", title: "任课老师", width: 100, formatter: function (value) {
                    if (value) {
                        return value.realname;
                    }
                }
            },

            {field: "coursetitle", title: "课程名称", width: 100},
            {field: "schooltime", title: "上课时间", width: 100},
            {field: "remark", title: "课程备注", width: 100}
        ]],

        toolbar: "#timetableitem_tb",

    }) ;


    $("#timetableitem_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons: "#timetableitem_bt"
    });

    var timetableitem = {

        additem: function () {
            $("#timetableitem_form").form("clear");
            $("#timetableitem_dialog").dialog("open");
            $("#timetableitem_dialog").dialog("setTitle", "增加明细");
        },

        edititem: function () {
            var row = $("#timetableitem_datagrid").datagrid("getSelected");
            if (!row) {
                $.messager.alert("温馨提示", "请选择要编辑的课程表明细", "info");
                return;
            } else {
                $("#timetableitem_form").form("clear");
                row["studentclass.id"] = row.studentclass.id;
                row["roomclass.id"] = row.roomclass.id;
                row["employee.id"] = row.employee.id;
                $("#timetableitem_form").form("load", row);
                $("#timetableitem_dialog").dialog("setTitle", "编辑明细");
                $("#timetableitem_dialog").dialog("open");
            }
        },
        /*删除*/
        delitem : function () {
            var row = $("#timetableitem_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的课程明细","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该明细吗",function (r) {
                    if(r){
                        $.post("/timetableitemdictionary_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#timetableitem_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },
        saveitem: function () {
            var rowData = $("#timetable_datagrid").datagrid("getSelected");

            var url = "/timetableitemdictionary_save.do";
            if ($("#itemId").val()) {
                url = "/timetableitemdictionary_edit.do";
            }

            $("#timetableitem_form").form("submit", {
                url: url,
                onSubmit: function(param){
                    param["studentclass.id"] = rowData.id;
                },
                success: function (data) {
                    data = $.parseJSON(data);
                    if (data.success) {
                        $("#timetableitem_dialog").dialog("close");
                        $.messager.alert("温馨提示", data.msg, "info", function () {
                            $("#timetableitem_datagrid").datagrid("reload");
                        });
                    } else {
                        $.messager.alert("温馨提示", data.msg, "info");
                    }
                }
            });
        },

        cancelitem: function () {
            $("#timetableitem_dialog").dialog("close");
        },

        reloaditem: function () {
            $("[name='keyworditem']").val("");
            $('.easyui-datebox').combobox('setText','');

            $("input[name='begindateitem']").val("");
            $("input[name='enddateitem']").val("");
            $('#timetableitem_datagrid').datagrid('load', {});
        },

        selectQueryitem: function () {
            var rowData = $("#timetable_datagrid").datagrid("getSelected");

            /*var id = $("#timetableitem_datagrid").datagrid("options").url = "/timetableitemdictionary_list.do?id=" + rowData.id;*/
            $("#timetableitem_datagrid").datagrid("options").url = "/timetableitemdictionary_list.do?id=" + rowData.id;
            var keyworditem = $("[name='keyworditem']").val();
            var begindateitem = $("[name='begindateitem']").val();
            var enddateitem = $("[name='enddateitem']").val();

            $("#timetableitem_datagrid").datagrid("load",
                {keyworditem: keyworditem,
                begindateitem: begindateitem,
                enddateitem: enddateitem}
            );
        },
    };

    $("a[data-item]").on("click", function () {
        var item = $(this).data("item");
        timetableitem[item]();
    });

});














