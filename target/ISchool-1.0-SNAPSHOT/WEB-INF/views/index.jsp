<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/static/common/common.jsp"%>
    <style type="text/css">
        .border_right_none{
            border-right: none;
        }
    </style>
    <script type="text/javascript">
        $(function(){
            $("#cc").layout({
                fit : true,
                fitColumns : true
            });
            $("#index_tree").tree({
                url : "/menu_selectSystemMenu.do",
                animate : true,
                onClick : function (node) {
                    if($("#index_tabs").tabs("exists",node.text)){
                        $("#index_tabs").tabs("select",node.text);
                    }else{
                        $("#index_tabs").tabs("add",{
                            title : node.text,
                            closable : true,
                            content : "<iframe frameborder=0 height='100%' width='100%' src="+node.url+"></iframe>"
                        });
                    }
                }
            });
            $("#index_tabs").tabs({
                fit : true
            })
        })
    </script>


</head>
<body>
<div id="cc" class="easyui-layout">
    <div data-options="region:'north'" style="height:5%;">
        <span style="align-items: center;">红黑雨员工管理系统</span>
        欢迎登录:
        <a href="/logout.do">注销</a>
    </div>

    <div data-options="region:'south'" style="height:4%;">
        <center>版权所有:红黑雨科技有限公司</center>
    </div>

    <div data-options="region:'west',title:'系统菜单'" style="width:15%;height:85%;">
        <ul id="index_tree"></ul>
    </div>

    <div data-options="region:'center'" style="background:#eee;">
        <div id="index_tabs">
            <div title="系统首页">欢迎登录系统</div>
        </div>
    </div>
</div>
</body>
</html>