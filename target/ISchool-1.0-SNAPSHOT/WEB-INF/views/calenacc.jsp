<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
    <%--<%@include file="/static/common/common.jsp" %>--%>
    <link rel="stylesheet" href="../../e-calendar-v2/css/jquery.e-calendar.css" />
    <script src="../../e-calendar-v2/js/jquery-2.1.3.min.js"></script>
    <script type="text/javascript" src="../../e-calendar-v2/js/jquery.e-calendar.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                var times=[new Date(2017, new Date().getMonth(), 15, 15),
                    new Date(2017, new Date().getMonth(), 16, 16),
                    new Date(2017, new Date().getMonth(), 17, 17)];
                $('#calendar').eCalendar({
                    yearRange:['2015','2016','2017','2018','2019','2020','2021'],   //年的下拉框
                    weekDays: ['日', '一', '二', '三', '四', '五', '六'],
                    months: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],//月的下拉框
                    // textArrows: { previous: '<', next: '>' },    //改为图片< >
                    eventTitle: '日程列表',
                    //初始化数据 month:2016-9格式
                    initData: function (settings, month) {
                        var jj="[";
                        <c:forEach items="${dates}" var="item" >
                            jj+='{datetime:new Date("'+"${item}"+' GMT+0800".replace(/-/g,"/"))},'
                        </c:forEach>
//                        times=[new Date(2017, new Date().getMonth(), 15, 15),
//                            new Date(2017, new Date().getMonth(), 16, 16),
//                            new Date(2017, new Date().getMonth(), 17, 17)]
//                        for(var i in times){
//                            jj+='{datetime:new Date("'+times[i]+'".replace(/-/g,"/"))}'
//                            if(i!=times.length){
//                                jj+=",";
//                            }
//                        }
                        jj+="]";
                        jj=eval(jj);
                        settings.events = jj
                    }
                });
            });
    </script>


</head>
<body>
    <form id="reload" action="/reload_view.do" method="post"></form>
    <div id="calendar" class="c-grid-title"></div>
</body>
</html>
