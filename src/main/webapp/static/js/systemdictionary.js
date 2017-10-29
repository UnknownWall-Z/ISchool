$(function(){

    var systemdictionaryitemDatagrid,systemdictionaryitemDialog,systemdictionaryitemForm;
    systemdictionaryitemDatagrid = $("#systemdictionaryitem_datagrid");
    systemdictionaryitemDialog = $("#systemdictionaryitem_dialog");
    systemdictionaryitemForm = $("#systemdictionaryitem_form");
    /*
     * 初始化数据表格
     */
    systemdictionaryitemDatagrid.datagrid({
        width:1000,
        fit:true,
        pagination:true,
        rownumbers:true,
        singleSelect:true,
        striped:true,
        fitColumns:true,
        toolbar:'#systemdictionaryitem_datagrid_tb'
    });
    /*
     * 初始化新增/编辑对话框
     */
    systemdictionaryitemDialog.dialog({
        width:300,
        height:300,
        closed:true,
        buttons:'#systemdictionaryitem_dialog_bt'
    });
    /*
     * 抽取所有需要用得元素.
     */
    var systemdictionaryDatagrid,systemdictionaryDialog,systemdictionaryForm;
    systemdictionaryDatagrid = $("#systemdictionary_datagrid");
    systemdictionaryDialog = $("#systemdictionary_dialog");
    systemdictionaryForm = $("#systemdictionary_form");
    /*
     * 初始化数据表格
     */
    systemdictionaryDatagrid.datagrid({
        url:"/systemdictionary_listAll.do",
        fit:true,
        pagination:true,
        rownumbers:true,
        singleSelect:true,
        split:"true",
        width:600,
        striped:true,
        fitColumns:true,
        toolbar:'#systemdictionary_datagrid_tb',
        onClickRow:function () {
            var rowData=$("#systemdictionary_datagrid").datagrid("getSelected");
            systemdictionaryitemDatagrid.datagrid("options").url="/systemdictionaryitem_list.do?sid="+rowData.id;
            systemdictionaryitemDatagrid.datagrid("load");
        }
    });
    /*
     * 初始化新增/编辑对话框
     */
    systemdictionaryDialog.dialog({
        width:300,
        height:300,
        closed:true,
        buttons:'#systemdictionary_dialog_bt'
    });
    /*
     * 对页面按钮进行统一监听
     */
    $("a[data-cmd]").on("click",function(){
        var cmd = $(this).data("cmd");
        if(cmd){
            cmdObj[cmd]();
        }
    });
    /*
     * 所有的操作封装到cmdObj对象中,方便管理
     */
    var cmdObj = {
        additem:function(){
            systemdictionaryitemForm.form("clear");
            systemdictionaryitemDialog.dialog("setTitle","新增");
            systemdictionaryitemDialog.dialog("open");
        },

        edititem:function(){
            var rowData = systemdictionaryitemDatagrid.datagrid("getSelected");
            if(rowData){
                systemdictionaryitemForm.form("clear");
                systemdictionaryitemDialog.dialog("setTitle","编辑");
                systemdictionaryitemDialog.dialog("open");
                if(rowData.systemdictionary)
                    rowData["systemdictionary.name"]=rowData.systemdictionary.name;
                systemdictionaryitemForm.form("load",rowData);
            }else{
                $.messager.alert("温馨提示","请选择需要编辑的数据!","warining");
            }
        },

        delitem:function(){
            var rowData = systemdictionaryitemDatagrid.datagrid("getSelected");
            if(rowData){
                $.messager.confirm("温馨提示","您确定需要删除选中数据吗？",function(yes){
                    if(yes){
                        $.post("/systemdictionaryitem_changState.do?sid="+rowData.id,function(data){
                            if(data.success){
                                $.messager.alert("温馨提示",data.msg,"info",function(){
                                    systemdictionaryitemDatagrid.datagrid("reload");
                                });
                            }else{
                                $.messager.alert("温馨提示",data.msg,"error");
                            }
                        },"json")
                    }
                });
            }else{
                $.messager.alert("温馨提示","请选择需要删除的数据!","warining");
            }
        },

        reloaditem:function(){
            systemdictionaryitemDatagrid.datagrid("reload");
        },

        saveitem:function(){
            var url;
            var idVal = $("[name='id']").val();
            if(idVal){
                url = "/systemdictionaryitem_edit.do"
            }else{
                url = "/systemdictionaryitem_save.do";
            }
            systemdictionaryitemForm.form("submit",{
                url:url,
                success:function(data){
                    data = $.parseJSON(data);
                    if(data.success){
                        $.messager.alert("温馨提示",data.msg,"info",function(){
                            systemdictionaryitemDialog.dialog("close");
                            systemdictionaryitemDatagrid.datagrid("reload");
                        });
                    }else{
                        $.messager.alert("温馨提示",data.msg,"error");
                    }
                }
            });
        },
        cancelitem:function (){
            systemdictionaryitemDialog.dialog("close");
        }
    }
});
function systemdictionFormatter(value,record,index){
    if(value){
        return value.name;
    }
    return value;
}