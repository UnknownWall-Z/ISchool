$(function () {
    $("#timetableitem_datagrid").datagrid({
        url : "/timetableitem_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        columns : [[
            {field:"id",title:"编号",width:100},
            {field:"timetableitmename",title:"名称",width:100},
            {field:"schooltime",title:"上课时间",width:100},
            {field:"coursetitle",title:"课程名称",width:100},
            {field:"employee",title:"任课老师",width:100,formatter:function (value) {
                if(value) {
                    return value.realname;
                }}
            },
            {field:"roomclass",title:"教室名称",width:100,formatter : function (value) {
                if(value){
                    return value.classroom;
                }
            }},
            {field:"studentclass",title:"班级名称",width:100,formatter : function (value) {
                if(value){
                    return value.classname;
                }
            }},

            {field:"remark",title:"课程备注",width:100}
        ]],
        toolbar : "#timetableitem_tb",

    });

    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });

    $("#timetableitem_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons : "#timetableitem_bt"
    });

    var timetableitemMethod = {

        add : function () {
            $("#editForm").form("clear");
            $("#timetableitem_dialog").dialog("open");
            $("#timetableitem_dialog").dialog("setTitle","增加明细");
        },

        edit : function () {
            var row = $("#timetableitem_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的课程表明细","info");
                return;
            }else{
                $("#editForm").form("clear");
                 row["studentclass.id"] = row.studentclass.id;
                 row["roomclass.id"] = row.roomclass.id;
                 row["employee.id"] = row.employee.id;
                $("#editForm").form("load",row);
                $("#timetableitem_dialog").dialog("setTitle","编辑明细");
                $("#timetableitem_dialog").dialog("open");
            }
        },


        save : function () {
            var url = "/timetableitem_save.do";
            if($("[name='id']").val()){
                url = "/timetableitem_edit.do";
            }

            $("#editForm").form("submit",{
                url : url,
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $("#timetableitem_dialog").dialog("close");
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#timetableitem_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        cancel : function () {
            $("#timetableitem_dialog").dialog("close");
        },

        reload : function (){
            $("[name='keyword']").val("");
            $("[name='bigindate']").val("");
            $("[name='enddate']").val("");
            $('#timetableitem_datagrid').datagrid('load',{ });
        },

        selectQuery : function () {
            var keyword = $("" +  "[name='keyword']").val();
            var bigindate = $("" +  "[name='bigindate']").val();
            var enddate = $("" +  "[name='enddate']").val();
            $("#timetableitem_datagrid").datagrid("load",
                {keyword:keyword},
                {bigindate:bigindate},
                {enddate:enddate}
            );
        },

        fileOut : function () {
            window.location.href = "/timetableitem_fileOut.do";
        },

        fileIn : function () {
            $("#fileIn").dialog("open");
        },

        fileSave : function () {
            $("#timetableitemFileForm").form("submit",{
                url : "/timetableitem_fileIn.do",
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
        timetableitemMethod[cmd]();
    });

});






