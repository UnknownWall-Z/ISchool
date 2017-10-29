$(function () {
    $("#attendance_datagrid").datagrid({
        url : "/attendance_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        pageSize:23,
        pageList:[15,23,25,30],
        columns : [[
            {field:"id",title:"ID",width:100},
            {field:"employee",title:"用户名",width:100,formatter : attendanceFormatter},
            {field:"signintime",title:"签到时间",width:100},
            {field:"signouttime",title:"签退时间",width:100},
            {field:"ondutystate",title:"上班状态",width:100},
            {field:"offdutystate",title:"下班状态",width:100},
            {field:"addsigntime",title:"补签时间",width:100}
        ]],
        toolbar : "#attendance_tb"
    });

    function attendanceFormatter(value, row, index) {
        return value ? value.username : "";
    }

    //点击按钮弹出对话框
    $("#attendance_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons : "#attendance_bt"
    });

    var attendanceMethod = {
        signIn : function () {
            $.messager.alert("每日签到","签到成功","info",function (r) {
                if(r){
                    $.post("/",{signintime:new Date()},function (data) {
                        if(data.success){
                            $.messager.alert("温馨提示",data.msg,"info",function () {
                                $("#emp_datagrid").datagrid("reload");
                            });
                        }else{
                            $.messager.alert("温馨提示",data.msg,"info");
                        }
                    });
                }
            });
        },

        signOut : function () {
            $.messager.alert("每日签到","签退成功","info",function (r) {
                if(r){
                    $.post("/",{signouttime:new Date()},function (data) {
                        if(data.success){
                            $.messager.alert("温馨提示",data.msg,"info",function () {
                                $("#emp_datagrid").datagrid("reload");
                            });
                        }else{
                            $.messager.alert("温馨提示",data.msg,"info");
                        }
                    });
                }
            });

        },


        addSignt : function () {
            $.messager.alert("每日签到","补签成功","info",function (r) {
                if(r){
                    $.post("/",{addSign:new Date()},function (data) {
                        if(data.success){
                            $.messager.alert("温馨提示",data.msg,"info",function () {
                                $("#emp_datagrid").datagrid("reload");
                            });
                        }else{
                            $.messager.alert("温馨提示",data.msg,"info");
                        }
                    });
                }
            });
        },


        // 取消保存
        cancel : function() {
            // 关闭窗口
            $("#attendance_dialog").dialog("close");
        },

        reload : function (){
            $('#attendance_datagrid').datagrid('load',{ });
        }
    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        attendanceMethod[cmd]();
    });

});






