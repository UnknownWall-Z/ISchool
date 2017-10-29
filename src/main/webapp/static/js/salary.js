$(function () {
    //设置年份的选择
    var myDate= new Date();
    var startYear=myDate.getFullYear()-20;//起始年份
    var endYear=myDate.getFullYear()+20;//结束年份
    var obj=document.getElementById('myYear');
    for (var i=startYear;i<=endYear;i++){
        obj.options.add(new Option(i,i));
    }
    obj.options[obj.options.length-21].selected=1;


$("#salary_datagrid").datagrid({
        url : "/salary_list.do",
        fit : true,
        fitColumns : true,
        singleSelect : true,
        pagination : true,
        striped : true,
        toolbar : "#salary_tb",
        pageSize:23,
        pageList:[15,23,25,30],
        columns : [[
            {field:"employee.id",title:"员工编号",align:'center',width:100,formatter:salaryId},
            {field:"employee",title:"员工",width:100,align:'center',formatter:salaryName},
            {field:"salary",title:"工资",width:100,align:'center'},
            {field:"year",title:"年份",width:100,align:'center'},
            {field:"month",title:"月份",width:100,align:'center'},
            {field:"indays",title:"出勤天数",width:100,align:'center'},
            {field:"balancedate",title:"结算时间",width:100,align:'center'}
        ]]
    });

    function salaryName(value, row, index) {

        return value ? value.realname : "";
    }

    function salaryId(value,row,index){
        return row.employee?row.employee.id:"";
    }

    $("#fileIn").dialog({
        width: 400,
        height: 100,
        closed: true,
        buttons : "#file_bt"
    });

    $("#salary_dialog").dialog({
        width: 300,
        height: 350,
        closed: true,
        buttons : "#salary_bt"
    });

    var salaryMethod = {

        edit : function () {

            var row = $("#salary_datagrid").datagrid("getSelected");

            if(!row){
                $.messager.alert("温馨提示","请选择要编辑的员工工资","info");
                return;
            }
            row["employee.id"] = row["employee"].id;
            row["employee.realname"] = row["employee"].realname;
            $("#salary_dialog").dialog("open");
            $("#salary_form").form("load",row);
            $("#salary_dialog").dialog("setTitle","编辑工资");
        },

        save : function () {
            var url = "/salary_edit.do";
            $("#salary_form").form("submit",{
                url : url,
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#salary_dialog").dialog("close");
                            $("#salary_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                }
            });
        },

        del : function () {
            var row = $("#salary_datagrid").datagrid("getSelected");
            if(!row){
                $.messager.alert("温馨提示","请选择要删除的工资记录","info");
                return;
            }else{
                $.messager.confirm("温馨提示","确定要删除该记录吗",function (r) {
                    if(r){
                        $.post("/salary_delete.do",{id:row.id},function (data) {
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function () {
                                    $("#salary_datagrid").datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"info");
                            }
                        });
                    }
                });
            }
        },

        cancel : function () {
            $("#salary_dialog").dialog("close");
        },

        reload : function (){

            $("[name='keyword']").val('');

            $('#salary_datagrid').datagrid('load',{});
        },

        selectQuery : function () {
            var keyword = $("[name='keyword']").val();
            var startdate = $("[name='startdate']").val();
            var enddate = $("[name='enddate']").val();
            var myMonth = $("#myMonth").val();
            var myYear = $("#myYear").val();

            $("#salary_datagrid").datagrid("load",{
                keyword:keyword,
                startdate:startdate,
                enddate:enddate,
                year:myYear,
                month: myMonth
            });
        },

        balance : function () {
            if($("#myYear").val() && $("#myMonth").val()){
                var year = $("#myYear").val();
                var month = $("#myMonth").val();
                $.post("/salary_balance.do",{year:year,month:month},function (data) {
                    if(data.success){
                        $.messager.alert("温馨提示",data.msg,"info",function () {
                            $("#salary_datagrid").datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"info");
                    }
                });
            }else {
                $.messager.alert("温馨提示","请选择要结算的年份和月份","info");
            }


        },

        fileOut : function () {
            window.location.href = "/salary_fileOut.do";
        },

        fileIn : function () {
            $("#fileIn").dialog("open");
        },

        fileSave : function () {
            $("#SalaryFileForm").form("submit",{
                url : "/salary_fileIn.do",
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
        salaryMethod[cmd]();
    });

})






