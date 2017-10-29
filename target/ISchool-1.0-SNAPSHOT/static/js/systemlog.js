$(function () {
    $("#systemlog_datagrid").datagrid({
        url: "/systemlog_list.do",
        fit: true,
        fitColumns: true,
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[

            {field: "id", title: "编号", width: 100},

            {
                field: "opuser", title: "操作用户", width: 100, formatter: function (value) {
                if (value) {
                    return value.realname
                }
            }
            },
            {field: "optime", title: "操作时间", width: 100},
            {field: "opip", title: "登陆IP", width: 100},
            {field: "function", title: "使用功能", width: 100},
            {field: "params", title: "操作信息", width: 100}
        ]],
        toolbar: "#systemlog_tb",

    });

    $("#systemlog_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons: "#systemlog_bt"
    });

    var systemlogMethod = {
        /*删除*/
        del : function () {
            var row = $("#systemlog_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的系统日志","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该日志吗",function (r) {
                    if(r){
                        $.post("/systemlog_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#systemlog_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },
        cancel: function () {
            $("#systemlog_dialog").dialog("close");
        },

        reload: function () {
            $("[name='keyword']").val("");
            $('#begin').combo('setText','');
            $('#ending').combo('setText','');
            $('#systemlog_datagrid').datagrid('load', {});
        },

        selectQuery: function () {
            var keyword = $("[name='keyword']").val();
            var begindate = $("[name='begindate']").val();
            var enddate = $("[name='enddate']").val();
            $("#systemlog_datagrid").datagrid("load",
                {keyword: keyword ,
                begindate: begindate,
                enddate: enddate}
            );
        },
    };
    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        systemlogMethod[cmd]();
    });

});






