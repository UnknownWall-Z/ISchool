$(function () {
    $("#studentChart_datagrid").datagrid({
        url: "/studentChart_list.do",
        fit: true,
        fitColumns: true,
        title: '学生报表',
        singleSelect: true,
        pagination: true,
        striped: true,
        columns: [[
            {field: "id", title: "编号", width: 100},
            {field: "groupType", title: "分组类型", width: 100},
            {field: "totalPayedfee", title: "已付总款", width: 100},
            {field: "totalOwnedfee", title: "未付总款", width: 100},
            {field: "totalFinished", title: "未付清人数", width: 100}
        ]],
        toolbar: "#studentChart_tb"
    });
    $("#studentChart_dialog").dialog({
        width: 600,
        height: 470,
        closed: true,
        title: '统计',
        modal:true,
        buttons: "#studentChart_bt"
    });
    $(function () {

    });

    //取某一列的所有数据
    function getColumn(rows, column) {
        var content = new Array;
        for (var index = 0; index < rows.length; index++) {
            content[index] = '' + rows[index][column] + '';
        }
        return content;
    }

    function content() {
        var value;
        var name;
    }

    function getData(rows, column1, column2) {
        var date = new Array;
        for (var index = 0; index < rows.length; index++) {
            date[index] = new content();
            date[index].value = rows[index][column1];
            date[index].name = rows[index][column2];
        }
        return date;
    }

    var studentChartMethod = {
        search: function () {
            var keyword = $("#keyword").val();
            var beginTime = $("#beginTime").val();
            var endTime = $("#endTime").val();
            var groupType = $("#groupType").val();
            $('#studentChart_datagrid').datagrid('load', {
                keyword: keyword,
                beginTime: beginTime,
                endTime: endTime,
                groupType: groupType
            });
        },

        reload: function () {
            $("input").val("")
            $('#studentChart_datagrid').datagrid('load', {});
        },
        fileOut: function () {
            var groupType = $("#groupType").val();
            window.location.href = "/studentChart_fileOut.do?groupType=" + groupType;
        },
        cancel: function () {
            $("#studentChart_dialog").dialog("close");
        },

        // --------------------------------------------------------------------------------
        //饼图
        openPie: function () {
            $("#studentChart_dialog").dialog("open");
            // 准备好的dom 初始化echarts图表
            var myChart = echarts.init(document.getElementById('main'));
            var rows = $("#studentChart_datagrid").datagrid("getRows");

            option = {
                title: {
                    text: '学员缴费统计图',
                    x: 'center'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: ['已付总款','未付清总款','未付清人数'],
                    selected: {
                        '已付总款' : false,
                        '未付清人数' : false
                    },
                    selectedMod:'false'
                },
                toolbox: {
                    show: true,
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {
                            type: ['pie']
                        },
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                calculable: true,
                series: [
                    {
                        name: '已付总款',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '60%'],
                        data: getData(rows, "totalPayedfee", "groupType")
                    },
                    {
                        name: '未付清总款',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '60%'],
                        data: getData(rows, "totalOwnedfee", "groupType")
                    },
                    {
                        name: '未付清人数',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '60%'],
                        data: getData(rows, "totalFinished", "groupType")
                    }
                ]
            };
            // 为echarts对象加载数据
            myChart.setOption(option);
        },

        //--------------------------------------------------------------------------------
        //柱状图
        openBar: function () {
            $("#studentChart_dialog").dialog("open");
            var myChart = echarts.init(document.getElementById('main'));
            var rows = $("#studentChart_datagrid").datagrid("getRows");

            option = {
                title: {
                    text: '学员缴费报告',
                    subtext: 'Sniper'
                },
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data: ['已付总款', '未付清总款','未付清人数']
                },
                toolbox: {
                    show: true,
                    feature: {
                        mark: {show: true},
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        type: 'category',
                        data: getColumn(rows, 'groupType')
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                series: [
                    {
                        name: '已付总款',
                        type: 'bar',
                        data: getColumn(rows, "totalPayedfee"),
                        markLine: {
                            data: [
                                {type: 'average', name: '平均值'},
                                {type: 'max', name: '最大值'},
                                {type: 'min', name: '最小值'}
                            ]
                        }
                    },
                    {
                        name: '未付清总款',
                        type: 'bar',
                        data: getColumn(rows, "totalOwnedfee"),
                        markLine: {
                            data: [
                                {type: 'average', name: '平均值'},
                                {type: 'max', name: '最大值'},
                                {type: 'min', name: '最小值'}
                            ]
                        }
                    }
                    ,
                    {
                        name: '未付清人数',
                        type: 'bar',
                        data: getColumn(rows, "totalFinished"),
                        markLine: {
                            data: [
                                {type: 'average', name: '平均值'},
                                {type: 'max', name: '最大值'},
                                {type: 'min', name: '最小值'}
                            ]
                        }
                    }
                ]
            };
            myChart.setOption(option);
        }
    };
    $("a[data-cmd]").on("click", function () {
        var cmd = $(this).data("cmd");
        studentChartMethod[cmd]();
    });
});








