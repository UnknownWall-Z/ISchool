$(function () {
    /*
     * 抽取所有需要用得元素.
     */
    var transferDatagrid, transferDialog, transferForm;
    transferDatagrid = $("#transfer_datagrid");
    transferDialog = $("#transfer_dialog");
    transferForm = $("#transfer_form");
    /*
     * 初始化数据表格
     */
    transferDatagrid.datagrid({
        url: "/transfer_list.do",
        fit: true,
        rownumbers: true,
        singleSelect: true,
        striped: true,
        pagination: true,
        fitColumns: true,
        toolbar: '#transfer_datagrid_tb',
        columns : [[
            {checkbox:true, field:"ok",width:100},
            {field:"id",title:"编号",width:100},
            {field:"client",title:"客户姓名",width:100,formatter:function (value) {
                if(value) {
                    return value.username;
                }}},

            {field:"client1",title:"QQ",width:100,formatter:function (value,rowData,index) {
                if(rowData.client) {
                    return rowData.client.qq;
                }}},

            {field:"client2",title:"电话",width:100,formatter:function (value,rowData,index) {
                if(rowData.client) {
                    return rowData.client.tel;
                }}},

            {field:"transfertime",title:"移交时间",width:100},
            {field:"reason",title:"移交原因",width:100},
            {field:"preowner",title:"原拥有者",width:100,formatter:preFormatter},
            {field:"aimowner",title:"移交目标",width:100,formatter:aimFormatter}
        ]]
    });
    /*
     * 初始化新增/编辑对话框
     */
    transferDialog.dialog({
        title: "高级查询",
        width: 200,
        height: 300,
        closed: true,
        buttons: '#transfer_dialog_bt'
    });
    /*
     * 对页面按钮进行统一监听
     */
    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        if (cmd) {
            cmdObj[cmd]();
        }
    });
    /*
     * 所有的操作封装到cmdObj对象中,方便管理
     */
    var cmdObj = {

        reload: function () {
            transferDatagrid.datagrid("reload");
        },

        cancel: function () {
            transferDialog.dialog("close");
        },
        search: function () {
            transferForm.form("clear");
            transferDialog.dialog("open");
        },
        findData: function () {
          /*  var row = $("#transfer_datagrid").datagrid("getSelected");
            alert(row);*/
            transferForm.form("submit", {
                url: "/transfer_list.do",
                success: function (data) {
                    data = $.parseJSON(data);
                    transferDatagrid.datagrid("loadData", data);
                }
            })
            transferDialog.dialog("close");
        },
        cancel: function () {
            transferDialog.dialog("close");
        },
        sss:function () {
          window.location.href="/backup.do";
        }
    }
});
function preFormatter(value) {
    if (value) {
        return value.username;
    }
    return "";

}
function aimFormatter(value) {
    if (value) {
        return value.username;
    }
    return "";
}
/*function valueFormatter(value) {

    return value.name;
}*/
