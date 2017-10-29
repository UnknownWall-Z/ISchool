$(function () {
    $("#role_datagrid").datagrid({
        url : "/role_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        columns : [[
            {field:"name",title:"角色名称",width:100},
            {field:"sn",title:"角色编号",width:100}
        ]],
        toolbar : "#role_tb"
    });

    $("#allPermissions").datagrid({
        url : "/permission_listAll.do" ,
        width : 200,
        height : 350,
        title : "所有权限",
        fitColumns : true,
        columns:[[
            {field:"name",title:"权限名称",width:100}
        ]],
        onDblClickRow : function (rowIndex, rowData) {
            $("#allPermissions").datagrid("unselectAll");
            var rows = $("#selfPermissions").datagrid("getRows");
            for (var i = 0; i < rows.length; i ++) {
                if(rows[i].id == rowData.id){
                    $("#selfPermissions").datagrid("selectRow",i);
                    return;
                }
            }
            $("#selfPermissions").datagrid("appendRow",rowData);
        }
    });

    $("#selfPermissions").datagrid({
        width : 200,
        height : 350,
        title : "角色权限",
        fitColumns : true,
        columns:[[
            {field:"name",title:"权限名称",width:100}
        ]],
        onDblClickRow : function (rowIndex, rowData) {
            $("#selfPermissions").datagrid("unselectAll");
            $("#selfPermissions").datagrid("deleteRow",rowIndex);
        }
    });



    $("#role_dialog").dialog({
        width: 500,
        height: 500,
        closed: true,
        buttons : "#role_bt"
    });

    var roleMethod = {
        add : function () {
            $("#selfPermissions").datagrid("loadData",{rows:[]});
            $("#editForm").form("clear");
            $("#role_dialog").dialog("setTitle","增加角色");
            $("#role_dialog").dialog("open");
        },

        edit : function () {
            var row = $("#role_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的角色","info");
                return;
            }else{
                $("#editForm").form("clear");
                var options = $("#selfPermissions").datagrid("options");
                options.url = "/role_getPermissionsById.do?id="+row.id;
                $("#selfPermissions").datagrid("reload");
                $("#editForm").form("load",row);
                $("#role_dialog").dialog("setTitle","编辑角色");
                $("#role_dialog").dialog("open");
            }
        },

        del : function () {
            var row = $("#role_datagrid").datagrid("getSelected");
            if(!row.id){
                $.messager.alert("温馨提示","请选择要删除的角色","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该角色吗",function (r) {
                    if(r){
                        $.post("/role_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#role_datagrid").datagrid("reload");
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
            var url = "/role_save.do";
            if($("[name='id']").val()){
                url = "/role_edit.do";
            }
            $("#editForm").form("submit",{
                url : url,
                onSubmit : function (param) {
                    var rows = $("#selfPermissions").datagrid("getRows");
                    for(i = 0;i<rows.length;i++){
                        param["permissions["+i+"].id"] = rows[i].id;
                    }
                },
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#role_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#role_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#role_dialog").dialog("close");
        },

        reload : function (){
            $('#role_datagrid').datagrid('load',{});
        },

    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        roleMethod[cmd]();
    });

})






