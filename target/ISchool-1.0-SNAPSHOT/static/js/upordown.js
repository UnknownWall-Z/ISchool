$(function () {

    $("#upordown_datagrid").datagrid({
        url : "/student_upordownlist.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        checkbox : true,
        selectOnCheck : false,
        columns : [[
            {checkbox:true, field:"ok",width:100},
            {field:"id",title:"编号",width:100},
            {field:"username",title:"学员姓名",width:100},
            {field:"totalfee",title:"总学费",width:100},
            {field:"ownedfee",title:"待缴学费",width:100},
            {field:"payedfee",title:"已交学费",width:100},
            {field:"upordowndate",title:"升班/留级时间",width:100},
            {field:"qq",title:"QQ",width:100},
            {field:"tel",title:"联系电话",width:100},
            {field:"oldclass",title:"以前的班级",width:100,formatter:function (value) {
                if(value) {
                    return value.classname;
                }}},

            {field:"studentclass",title:"流入的班级",width:100,formatter:function (value) {
                if(value) {
                    return value.classname;
                }}},

            {field:"marketuser",title:"营销人员",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}},
            {field:"state",title:"状态",width:100,formatter:function (value) {
                if(value == "正常") {
                    return value;
                }else if(value == null){
                    return "";
                }else{
                    return "<span style='color: red'>"+value+"</span>";
                }
            }},
        ]],
        toolbar : "#upordown_tb",
       /* onClickRow : function (rowIndex, rowData) {
            if(!rowData.state){
                $("#upordown_editbtn").linkbutton("disable");
                $("#upordown_chagestatebtn").linkbutton("disable");
            }else {
                $("#upordown_editbtn").linkbutton("enable");
                $("#upordown_chagestatebtn").linkbutton("enable");
            }
        }*/
    });

    $("#upordown_dialog").dialog({
        width: 600,
        height: 350,
        closed: true,
        buttons : "#upordown_bt"
    });

    $("#upordownread_dialog").dialog({
        width: 600,
        height: 350,
        closed: true,
        buttons : "#upordownread_bt"
    });

    $("#changeClass_dialog").dialog({
        width: 300,
        height: 250,
        closed: true,
        buttons : "#changeclass_bt"
    });

    var upordownMethod = {

        edit : function () {
            var row = $("#upordown_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的学员","info");
                return;
            }else{
                if(row.studentclass){
                    row["studentclass.id"] = row.studentclass.id;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.id;
                }
                if(row.oldclass){
                    row["oldclass.id"] = row.oldclass.id;
                }
                $("#upordown_form").form("clear");
                $("#upordown_form").form("load",row);
                $("#upordown_dialog").dialog("setTitle","编辑转班信息");
                $("#upordown_dialog").dialog("open");
            }
        },


        show : function () {
            var row = $("#upordown_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要查看的学员","info");
                return;
            }else{
                $("#upordownread_form").form("clear");
                if(row.studentclass){
                    row["studentclass.id"] = row.studentclass.classname;
                }
                if(row.marketuser){
                    row["marketuser.id"] = row.marketuser.username;
                }
                if(row.oldclass){
                    row["oldclass.id"] = row.oldclass.classname;
                }
                $("#upordownread_form").form("load",row);
                $("#upordownread_dialog").dialog("setTitle","查看学员");
                $("#upordownread_dialog").find("input").attr("style","border:none;background-color:transparent");
                $("#upordownread_dialog").dialog("open");
            }
        },

        save : function () {
            $("#upordown_form").form("submit",{
                url : "/upordown_edit.do",
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#upordown_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#upordown_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        del : function () {
            var row = $("#upordown_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的转班记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该转班记录吗?该学生所在班级将变为之前的班级!",function (r) {
                    if(r){
                        $.post("/upordown_delete.do",{id:row.id,nowclass:row.oldclass.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#upordown_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        add : function () {
            $("#changeClassForm").form("clear");
            $("#changeClass_dialog").dialog("open");
        },

        saveChange : function () {
            $("#changeClassForm").form("submit",{
                url : "/student_changeClass.do",
                success:function(data){
                    data = $.parseJSON(data);
                    $("#changeClass_dialog").dialog("close");
                    $.messager.alert("温馨提示",data.msg,"info",function () {
                        $("#upordown_datagrid").datagrid("reload");
                    });
                }
            });
        },

        cancelChange : function () {
            $("#changeClass_dialog").dialog("close");
        },

        cancel : function () {
            $("#upordown_dialog").dialog("close");
        },

        saveread : function () {
            $("#upordownread_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $('#upordown_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            $("#upordown_datagrid").datagrid("load",{keyword:keyword});
        },

        fileOut : function () {
            window.location.href = "/upordown_fileOut.do";
        }

    };

    $("a[data-cmd]").on("click",function () {
        var cmd = $(this).data("cmd");
        upordownMethod[cmd]();
    });

})






