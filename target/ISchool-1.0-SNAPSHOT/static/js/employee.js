$(function () {
    $("#emp_datagrid").datagrid({
        url : "/employee_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        pageSize:23,
        pageList:[15,23,25,30],
        striped : true,
        columns : [[
            {field:"id",title:"编号",width:100},
            {field:"username",title:"用户名",width:100},
            {field:"realname",title:"真实姓名",width:100},
            {field:"tel",title:"电话",width:100},
            {field:"dept",title:"部门",width:100,formatter:function (value) {
                if(value) {
                    return value.name;
                }}},
            {field:"email",title:"邮箱",width:100},
            {field:"inputtime",title:"入职时间",width:100},
            {field:"state",title:"状态",width:100,formatter : function (value) {
                if(value){
                    return "在职";
                }else{
                    return "<span style='color: red'>离职</span>";
                }
            }},
            {field:"admin",title:"管理员",width:100,formatter : booleanFormatter}
        ]],
        toolbar : "#emp_tb",
        onClickRow : function (rowIndex, rowData) {
            if(!rowData.state){
                $("#emp_editbtn").linkbutton("disable");
                $("#emp_chagestatebtn").linkbutton("disable");
            }else {
                $("#emp_editbtn").linkbutton("enable");
                $("#emp_chagestatebtn").linkbutton("enable");
            }
        }
    });

    function booleanFormatter(value) {
        if(value){
            return "是";
        }else{
            return "否";
        }
    }

    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });

    $("#emp_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons : "#emp_bt"
    });

    var empMethod = {
        add : function () {
            $("#editForm").form("clear");
            $("#emp_dialog").dialog("open");
            $("#emp_dialog").dialog("setTitle","增加员工");
            $("#emp_state").hide();
        },

        edit : function () {
            $("#emp_pwd").hide();
            var row = $("#emp_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的员工","info");
                return;
            }else{
                $("#editForm").form("clear");
                row["dept.id"] = row["dept"].id;
                row["state"] = row["state"]+"";
                row["admin"] = row["admin"]+"";

                var ids = $.ajax({
                    url: "/employee_getRoles.do?id="+row.id,
                    async: false
                }).responseText;

                ids = $.parseJSON(ids);
                $("#roles").combobox("setValue",ids);
                $("#editForm").form("load",row);
                $("#emp_dialog").dialog("open");
                $("#emp_dialog").dialog("setTitle","编辑员工");
            }
        },

        changState : function () {
            var row = $("#emp_datagrid").datagrid("getSelected");
            if(!row.id){
                $.messager.alert("温馨提示","请选择要离职的员工","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要离职该员工吗",function (r) {
                    if(r){
                        $.post("/employee_changState.do",{id:row.id},function (data) {
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
            }
        },

        save : function () {
            var url = "/employee_save.do";
            if($("[name='id']").val()){
                url = "/employee_edit.do";
            }
            $("#editForm").form("submit",{
                url : url,
                onSubmit : function (param) {
                    var ids = $("#roles").combobox("getValues");
                    for(i=0;i<ids.length;i++){
                        param["roles["+i+"].id"] = ids[i];
                    }
                },
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#emp_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#emp_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#emp_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $('#emp_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            $("#emp_datagrid").datagrid("load",{keyword:keyword});
        },

        fileOut : function () {
            window.location.href = "/employee_fileOut.do";
        },

        fileIn : function () {
            $("#fileIn").dialog("open");
        },

        fileSave : function () {
            $("#empFileForm").form("submit",{
                url : "/employee_fileIn.do",
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
        empMethod[cmd]();
    });

});






