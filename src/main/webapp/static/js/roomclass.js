$(function () {
    $("#roomclass_datagrid").datagrid({
        url : "/roomclass_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        columns : [[
            {field:"id",title:"编号",width:100},
            {field:"classroom",title:"教室",width:100},
            {field:"roomlocation",title:"教室位置",width:100},
            {field:"studentclass",title:"使用班级",width:100,formatter:function (value) {
                if(value) {
                    return value.classname;
                }}},
            {field:"totalstudent",title:"学生总数",width:100},
            {field:"inputdate",title:"使用时间",width:100},
            {field:"remark",title:"备注",width:100,}
        ]],

        toolbar : "#roomclass_tb",
    });


    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });

    $("#roomclass_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons : "#roomclass_bt"
    });

    var roomclassMethod = {
        add : function () {
            $("#editForm").form("clear");
            $("#roomclass_dialog").dialog("open");
            $("#roomclass_dialog").dialog("setTitle","增加教室");
            $("#roomclass_state").hide();
        },

        edit : function () {
            $("#roomclass_pwd").hide();
            var row = $("#roomclass_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的教室","info");
                return;
            }else{
                $("#editForm").form("clear");
                row["studentclass.id"] = row["studentclass"].id;
                row["state"] = row["state"]+"";

                var ids = $.ajax({
                    url: "/roomclass_getRoomclass.do?id="+row.id,
                    async: false
                }).responseText;


                $("#studentclass").combobox("setValue",ids);
                $("#editForm").form("load",row);
                $("#roomclass_dialog").dialog("open");
                $("#roomclass_dialog").dialog("setTitle","编辑教室");
            }
        },

        changState : function () {
            var row = $("#roomclass_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要使用的教室","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要使用该教室吗",function (r) {
                    if(r){
                        $.post("/roomclass_changState.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#roomclass_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        save : function () {
            var url = "/roomclass_save.do";
            if($("[name='id']").val()){
                url = "/roomclass_edit.do";
            }
            $("#editForm").form("submit",{
                url : url,
                onSubmit : function (param) {
                    var id = $("#roomclass_combobox").combobox("getValue");
                    param["studentclass.id"] = id;
                },
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#roomclass_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#roomclass_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#roomclass_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $('.easyui-datebox').combobox('setText','');
            $("input[name='begindate']").val("");
            $("input[name='enddate']").val("");
            $('#roomclass_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            var begindate = $("[name='begindate']").val();
            var enddate = $("[name='enddate']").val();

            $("#roomclass_datagrid").datagrid("load",{
                keyword:keyword,
                enddate:enddate,
                begindate:begindate
            });
        },

        fileOut : function () {
            window.location.href = "/roomclass_fileOut.do";
        },

        fileIn : function () {
            $("#fileIn").dialog("open");
        },

        fileSave : function () {
            $("#roomclassFileForm").form("submit",{
                url : "/roomclass_fileIn.do",
                success : function (data) {
                    data = $.parseJSON(data);
                    $("#fileIn").dialog("close");
                    $.messager.alert("温馨提示",data.msg,"info");
                }
            });
        },

        fileCancel : function () {
            $("#fileIn").dialog("close");
        }
    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        roomclassMethod[cmd]();
    });

});






