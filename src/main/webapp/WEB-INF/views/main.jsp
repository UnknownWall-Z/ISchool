<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台首页</title>
    <%@include file="/static/common/common.jsp" %>

    <!---------------------------------------------------------->
    <link rel="stylesheet" href="/mstp/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="/mstp/css/font.css" type="text/css" />
    <link rel="stylesheet" href="/mstp/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="/mstp/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="/mstp/css/app.css" type="text/css" />
    <!---------------------------------------------------------->
</head>
<body>

<%------------------------------------------菜单-------------------------------------------%>

        <div class="app app-header-fixed" id="app">
            <!-- navbar -->
            <div class="app-header navbar">



                <!-- navbar header -->
                <div class="navbar-header bg-dark">
                    <button class="pull-right visible-xs dk" data-toggle="class:show" data-target=".navbar-collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                    </button>
                    <button class="pull-right visible-xs" data-toggle="class:off-screen" data-target=".app-aside" ui-scroll="app">
                        <i class="glyphicon glyphicon-align-justify"></i>
                    </button>
                    <!-- brand -->
                    <a href="#/" class="navbar-brand text-lt" onclick="link('/dasssss/responsive_table.html');">
                        <%--<i class="fa fa-btc"></i>--%>
                        <img src="/mstp/img/logo.png" alt="." class="hide">
                        <span class="hidden-folded m-l-xs">红黑雨</span>
                    </a>
                    <!-- / brand -->
                </div>
                <!-- / navbar header -->


                <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
                    <!-- buttons -->
                    <div class="nav navbar-nav hidden-xs">
                        <a href="#" class="btn no-shadow navbar-btn" data-toggle="class:app-aside-folded" data-target=".app">
                            <i class="fa fa-dedent fa-fw text"></i>
                            <i class="fa fa-indent fa-fw text-active"></i>
                        </a>
                        <a href class="btn no-shadow navbar-btn" data-toggle="class:show" data-target="#aside-user">
                            <i class="icon-user fa-fw"></i>
                        </a>
                    </div>
                    <!-- / buttons -->

        <%-------------------------------------顶端栏----------------------------------------------%>


        <ul class="nav navbar-nav hidden-sm">
            <li class="dropdown pos-stc">

                <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                    <span>学员消息</span>
                    <span class="caret"></span>
                </a>
        <%--------------------===============================================----------------------%>

                <div class="dropdown-menu wrapper w-full bg-white">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="m-l-xs m-t-xs m-b-xs font-bold"> 已就业学员 <span class="badge badge-sm bg-success">+8</span></div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <ul class="list-unstyled l-h-2x">
                                        <li onclick="link('/showCompany_view.do?id=14')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>赵小飞</a>
                                        </li>
                                        <li onclick="link('/showCompany_view.do?id=15')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>钱小虎</a>
                                        </li>
                                        <li onclick="link('/showCompany_view.do?id=16')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>孙小曼</a>
                                        </li>
                                        <li onclick="link('/showCompany_view.do?id=17')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>李小刀</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-xs-6">
                                    <ul class="list-unstyled l-h-2x">
                                        <li onclick="link('/showCompany_view.do?id=18')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>周小天</a>
                                        </li>
                                        <li onclick="link('/showCompany_view.do?id=19')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>吴小华</a>
                                        </li>
                                        <li onclick="link('/showCompany_view.do?id=21')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>王小丽</a>
                                        </li>
                                        <li onclick="link('/showCompany_view.do?id=22')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>冯小巩</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 b-l b-light">
                            <div class="m-l-xs m-t-xs m-b-xs font-bold">流失学员 <span class="label label-sm bg-primary">-6</span></div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <ul class="list-unstyled l-h-2x">
                                        <li onclick="link('/showAway_view.do?id=34')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>章三</a>
                                        </li>
                                        <li onclick="link('/showAway_view.do?id=30')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>厘肆
                                                <span class="badge badge-sm bg-warning">土豪</span></a>
                                        </li>
                                        <li onclick="link('/showAway_view.do?id=29')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>丸唔</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-xs-6">
                                    <ul class="list-unstyled l-h-2x">
                                        <li onclick="link('/showAway_view.do?id=27')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>造遛</a>
                                        </li>
                                        <li onclick="link('/showAway_view.do?id=28')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>孫欺</a>
                                        </li>
                                        <li onclick="link('/showAway_view.do?id=25')">
                                            <a><i class="fa fa-fw fa-angle-right text-muted m-r-xs"></i>完吧</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 b-l b-light">
                            <div class="m-l-xs m-t-xs m-b-sm font-bold">Analysis</div>
                            <div class="text-center">
                                <div class="inline">
                                    <div ui-jq="easyPieChart" ui-options="{
                                      percent: 65,
                                      lineWidth: 50,
                                      trackColor: '{{app.color.light}}',
                                      barColor: '{{app.color.info}}',
                                      scaleColor: false,
                                      size: 100,
                                      rotate: 90,
                                      lineCap: 'butt',
                                      animate: 2000
                                    }">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        <%--------------------------------------------------------------------------------------------------------%>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                    <i class="fa fa-fw fa-plus visible-xs-inline-block"></i>
                    <span translate="header.navbar.new.NEW">客户消息</span> <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                    <li onclick="link('/client_view.do')">
                        <a href="#" translate="header.navbar.new.PROJECT">潜在客户</a>
                    </li>
                    <li onclick="link('/schoolLinkMan_view.do')">
                        <a>
                            <span class="badge bg-info pull-right">5</span>
                            <span translate="header.navbar.new.TASK">学校联系人</span>
                        </a>
                    </li>
                    <li onclick="link('/clienttrack_view.do')">
                        <a translate="header.navbar.new.USER">学员跟踪</a></li>
                    <li class="divider"></li>
                    <li onclick="link('/schoolClient_view.do')">
                        <a>
                            <span class="badge bg-danger pull-right">4</span>
                            <span translate="header.navbar.new.EMAIL">大客户</span>
                        </a>
                    </li>
                </ul>
            </li>
        <%--------------------------------------------------------------------------------------------------------%>

        </ul>
        <%-------------------------------------顶端栏----------------------------------------------%>


        <!-- search form -->
            <form class="navbar-form navbar-form-sm navbar-left shift" ui-shift="prependTo" data-target=".navbar-collapse" role="search" ng-controller="TypeaheadDemoCtrl">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" ng-model="selected" typeahead="state for state in states | filter:$viewValue | limitTo:8"
                             action="/index.do"  name="module" class="form-control input-sm bg-light no-border rounded padder" placeholder="请输入模块名">
                        <span class="input-group-btn">
                             <button type="submit" class="btn btn-sm bg-light rounded"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </div>
            </form>
        <!-- / search form -->

        <%-- -----------------------------------式子-------------------------------------------- --%>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">

                <%--________式子主体_______--%>
                <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                    <i class="icon-bell fa-fw"></i>
                </a>
                <!-- dropdown -->
                <%--<div class="dropdown-menu w-xl animated fadeInUp">--%>
                    <%--<div class="panel bg-white">--%>
                        <%--<div class="panel-heading b-light bg-light">--%>
                            <%--<strong>You have <span>2</span> notifications</strong>--%>
                        <%--</div>--%>
                        <%--<div class="list-group">--%>
                            <%--<a href class="media list-group-item">--%>
                            <%--<span class="pull-left thumb-sm">--%>
                               <%--<img src="img/a0.jpg" alt="..." class="img-circle">--%>
                            <%--</span>--%>
                                <%--<span class="media-body block m-b-none">--%>
                                <%--Use awesome animate.css<br>--%>
                                <%--<small class="text-muted">10 minutes ago</small>--%>
                                <%--</span>--%>
                            <%--</a>--%>
                            <%--<a href class="media list-group-item">--%>
                                <%--<span class="media-body block m-b-none">--%>
                                <%--1.0 initial released<br>--%>
                                <%--<small class="text-muted">1 hour ago</small>--%>
                                <%--</span>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <%--<div class="panel-footer text-sm">--%>
                            <%--<a href class="pull-right"><i class="fa fa-cog"></i></a>--%>
                            <%--<a href="#notes" data-toggle="class:show animated fadeInRight">See all the--%>
                                <%--notifications</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <!-- / dropdown -->
                <%--________式子主体_______--%>
            </li>

            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="dropdown-toggle clear" data-toggle="dropdown">
                    <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                    <img src="/mstp/img/b15.jpg" alt="...">
                    <i class="on md b-white bottom"></i>
                    </span>
                    <span class="hidden-sm hidden-md">${user.username}</span> <b class="caret"></b>
                </a>
                <!-- dropdown -->
                <ul class="dropdown-menu animated fadeInRight w">
                    <li class="wrapper b-b m-b-sm bg-light m-t-n-xs">
                        <div>
                            <p>${user.name}</p>
                        </div>
                        <progressbar value="60" class="progress-xs m-b-none bg-white"></progressbar>
                    </li>
                    <li>
                        <a href>
                            <span class="badge bg-danger pull-right">${user.ondutystate}</span>
                            <span>姓名:${user.realname}</span>
                        </a>
                    </li>
                    <li>
                        <a ui-sref="app.page.profile">电话:${user.tel}</a>
                    </li>
                    <li>
                        <a ui-sref="app.page.profile">邮箱:${user.email}</a>
                    </li>
                    <li>
                        <a ui-sref="app.docs">
                            <span class="label bg-info pull-right">管理员</span>
                            身份:
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li onclick="tc();">
                        <a ui-sref="access.signin">退出</a>
                    </li>
                </ul>
                <!-- / dropdown -->
            </li>

        </ul>

        <form id="tc" action="/logout.do" method="post"></form>


        <%-- -----------------------------------式子-------------------------------------------- --%>
        </div>
        <!-- / navbar collapse -->
    </div>
            <!-- / navbar -->

            <!-------------------------------------------------------------------------------------------------------->

            <%--<!-- menu -->--%>
            <div class="app-aside hidden-xs bg-dark">
                <div class="aside-wrap">
                    <div class="navi-wrap">


                        <!-- user -->
                        <a>
                        <div class="clearfix hidden-xs text-center hide" id="aside-user">
                            <div class="dropdown wrapper">
                                <a ui-sref="app.page.profile">
                            <span class="thumb-lg w-auto-folded avatar m-t-sm">
                              <img src="/mstp/img/b15.jpg" class="img-full" alt="...">
                            </span>
                                </a>
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle hidden-folded">
                            <span class="clear">
                              <span class="block m-t-sm">
                                <strong class="font-bold text-lt">${user.username}</strong>
                                <%--<b class="caret"></b>--%>
                              </span>
                              <span class="text-muted text-xs block">${user.realname}</span>
                            </span>
                                </a>
                                <!-- dropdown -->
                                <%--<ul class="dropdown-menu animated fadeInRight w hidden-folded">--%>
                                    <%--<li class="wrapper b-b m-b-sm bg-info m-t-n-xs">--%>
                                        <%--<span class="arrow top hidden-folded arrow-info"></span>--%>
                                        <%--<div>--%>
                                            <%--<p>300mb of 500mb used</p>--%>
                                        <%--</div>--%>
                                        <%--<progressbar value="60" type="white" class="progress-xs m-b-none dker"></progressbar>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href>Settings</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a ui-sref="app.page.profile">Profile</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href>--%>
                                            <%--<span class="badge bg-danger pull-right">3</span>--%>
                                            <%--Notifications--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li class="divider"></li>--%>
                                    <%--<li>--%>
                                        <%--<a ui-sref="access.signin">Logout</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                                <!-- / dropdown -->
                            </div>
                            <div class="line dk hidden-folded"></div>
                        </div>
                        <!-- / user -->

                        <!-- nav -->
                        <nav ui-nav class="navi">
                            <ul class="nav">


                                <!-- 系统小标题 -->
                                <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                                    <span translate="aside.nav.HEADER">system</span>
                                </li>


            <!--###############################系统模块#############################################-->
                                <li onclick="link('/dasssss/responsive_table.html');">
                                    <a href="#" class="auto">
                                      <%--<span class="pull-right text-muted">--%>
                                        <%--<i class="fa fa-fw fa-angle-right text"></i>--%>
                                        <%--<i class="fa fa-fw fa-angle-down text-active"></i>--%>
                                      <%--</span>--%>
                                        <i class="glyphicon glyphicon-th-large icon text-success"></i>
                                        <span class="font-boldx">首页</span>
                                    </a>
                                    <%--<ul class="nav nav-sub dk">--%>
                                        <%--<li class="nav-sub-header">--%>
                                            <%--<a href>--%>
                                                <%--<span>Apps</span>--%>
                                            <%--</a>--%>
                                        <%--</li>--%>

                                        <%--<li ui-sref-active="active" onclick="link('/employee_view.do');">--%>
                                            <%--<a ui-sref="apps.note">--%>
                                                <%--<span>员工管理</span>--%>
                                            <%--</a>--%>
                                        <%--</li>--%>
                                        <%--<li ui-sref-active="active" onclick="link('/department_view.do');">--%>
                                            <%--<a ui-sref="apps.contact">--%>
                                                <%--<span>部门管理</span>--%>
                                            <%--</a>--%>
                                        <%--</li>--%>
                                        <%--<li ui-sref-active="active"  onclick="link('/role_view.do');">--%>
                                            <%--<a ui-sref="app.weather">--%>
                                                <%--<span>角色管理</span>--%>
                                            <%--</a>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                </li>

                                <li>
                                    <a href class="auto">
                                      <span class="pull-right text-muted">
                                        <i class="fa fa-fw fa-angle-right text"></i>
                                        <i class="fa fa-fw fa-angle-down text-active"></i>
                                      </span>
                                        <i class="glyphicon glyphicon-stats icon text-primary-dker"></i>
                                        <span class="font-bold" translate="aside.nav.DASHBOARD">报表</span>
                                    </a>

                                    <ul class="nav nav-sub dk">
                                        <li class="nav-sub-header">
                                            <a href>
                                                <span translate="aside.nav.DASHBOARD">Dashboard</span>
                                            </a>
                                        </li>
                                        <li ui-sref-active="active" onclick="link('/studentChart_view.do')">
                                            <a ui-sref="app.dashboard-v1">
                                                <span>正式学员报表</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>


                                <li ui-sref-active="active" onclick="link('/dasssss/calendar.html');">
                                    <a ui-sref="app.calendar">
                                        <i class="glyphicon glyphicon-calendar icon text-info-dker"></i>
                                        <span class="font-bold" translate="aside.nav.CALENDAR">日历</span>
                                    </a>
                                </li>

                                <%--<li ui-sref-active="active">--%>
                                    <%--<a ui-sref="app.mail.list">--%>
                                        <%--<b class="badge bg-info pull-right">9</b>--%>
                                        <%--<i class="glyphicon glyphicon-envelope icon text-info-lter"></i>--%>
                                        <%--<span class="font-bold" translate="aside.nav.EMAIL">邮箱</span>--%>
                                    <%--</a>--%>
                                <%--</li>--%>

            <!--###############################系统模块#############################################-->

                        <!-- menu-->
                                <!-- nav -->
                                <nav ui-nav class="navi">
                                    <ul class="nav">



                                        <li class="line dk"></li>

                                        <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                                            <span translate="aside.nav.components.COMPONENTS">Components</span>
                                        </li>
            <%--=======================================系统管理====================================--%>
                                        <li>
                                            <a href class="auto">
                                              <span class="pull-right text-muted">
                                                <i class="fa fa-fw fa-angle-right text"></i>
                                                <i class="fa fa-fw fa-angle-down text-active"></i>
                                              </span>
                                                <%--<b class="badge bg-info pull-right">3</b>--%>
                                                <i class="glyphicon glyphicon-th"></i>
                                                <span>系统管理</span>
                                            </a>
                                            <ul class="nav nav-sub dk">
                                                <li class="nav-sub-header">
                                                    <a href>
                                                        <span>系统管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/employee_view.do')">
                                                    <a ui-sref="layout.app">
                                                        <span>员工管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/department_view.do')">
                                                    <a ui-sref="layout.fullwidth">
                                                        <span>部门管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/role_view.do')">
                                                    <a ui-sref="layout.mobile">
                                                        <span>角色管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/systemdictionary_view.do')">
                                                    <a ui-sref="layout.mobile">
                                                        <span>数据字典</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/systemlog_view.do')">
                                                    <a ui-sref="layout.mobile">
                                                        <span>系统日志</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                    <%--=================================客户服务===================================--%>
                                        <li ng-class="{active:$state.includes('app.ui')}">
                                            <a href class="auto">
                                              <span class="pull-right text-muted">
                                                <i class="fa fa-fw fa-angle-right text"></i>
                                                <i class="fa fa-fw fa-angle-down text-active"></i>
                                              </span>
                                                <i class="glyphicon glyphicon-briefcase icon"></i>
                                                <span translate="aside.nav.components.ui_kits.UI_KITS">客户服务</span>
                                            </a>
                                            <ul class="nav nav-sub dk">
                                                <li class="nav-sub-header">
                                                    <a href>
                                                        <span translate="aside.nav.components.ui_kits.UI_KITS">客户服务</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/client_view.do')">
                                                    <a ui-sref="app.ui.buttons">
                                                        <span translate="aside.nav.components.ui_kits.BUTTONS">潜在客户管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/clienttrack_view.do')">
                                                    <a ui-sref="app.ui.icons" >
                                                        <%--<b class="badge bg-info pull-right">3</b>--%>
                                                        <span translate="aside.nav.components.ui_kits.ICONS">学员跟踪</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/transfer_view.do')">
                                                    <a ui-sref="app.ui.grid">
                                                        <span translate="aside.nav.components.ui_kits.GRID">移交历史</span>
                                                    </a>
                                                </li>
                                                <%--<li ui-sref-active="active">--%>
                                                    <%--<a ui-sref="app.ui.widgets">--%>
                                                        <%--<b class="badge bg-success pull-right">13</b>--%>
                                                        <%--<span translate="aside.nav.WIDGETS">Widgets</span>--%>
                                                    <%--</a>--%>
                                                <%--</li>--%>
                                                <li ui-sref-active="active" onclick="link('/schoolClient_view.do')">
                                                    <a ui-sref="app.ui.bootstrap">
                                                        <b class="badge bg-primary pull-right">大</b>
                                                        <span translate="aside.nav.components.ui_kits.BOOTSTRAP">大客户(学校)</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/schoolLinkMan_view.do')">
                                                    <a ui-sref="app.ui.sortable">
                                                        <span translate="aside.nav.components.ui_kits.SORTABLE">学校联系人</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/schoolTraceLog_view.do')">
                                                    <a ui-sref="app.ui.portlet">
                                                        <span translate="aside.nav.components.ui_kits.PORTLET">学校跟踪</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/schoolClientTransferLog_view.do')">
                                                    <a ui-sref="app.ui.timeline">
                                                        <span translate="aside.nav.components.ui_kits.TIMELINE">学校移交历史</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <%--学员管理================================================================--%>
                                        <li ng-class="{active:$state.includes('app.table')}">
                                            <a href class="auto">
                                              <span class="pull-right text-muted">
                                                <i class="fa fa-fw fa-angle-right text"></i>
                                                <i class="fa fa-fw fa-angle-down text-active"></i>
                                              </span>
                                                <%--<b class="label bg-primary pull-right">2</b>--%>
                                                <i class="glyphicon glyphicon-list"></i>
                                                <span translate="aside.nav.components.table.TABLE">学员管理</span>
                                            </a>
                                            <ul class="nav nav-sub dk">
                                                <li class="nav-sub-header">
                                                    <a href>
                                                        <span translate="aside.nav.components.table.TABLE">学员管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/student_view.do')">
                                                    <a ui-sref="app.table.static">
                                                        <span translate="aside.nav.components.table.TABLE_STATIC">正式学员管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/student_upordown.do')">
                                                    <a ui-sref="app.table.datatable">
                                                        <span translate="aside.nav.components.table.DATATABLE">学员升班留级</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/receipt_view.do')">
                                                    <a ui-sref="app.table.footable">
                                                        <span translate="aside.nav.components.table.FOOTABLE">收款管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/studentloss_view.do')">
                                                    <a ui-sref="app.table.grid">
                                                        <span>学员流失</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/expenditure_view.do')">
                                                    <a ui-sref="app.table.grid">
                                                        <span>支出管理</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    <%--=====================================教务管理=======================================--%>
                                        <li ng-class="{active:$state.includes('app.form')}">
                                            <a href class="auto">
                                              <span class="pull-right text-muted">
                                                <i class="fa fa-fw fa-angle-right text"></i>
                                                <i class="fa fa-fw fa-angle-down text-active"></i>
                                              </span>
                                                <i class="glyphicon glyphicon-edit"></i>
                                                <span translate="aside.nav.components.form.FORM">教务管理</span>
                                            </a>
                                            <ul class="nav nav-sub dk">
                                                <li class="nav-sub-header">
                                                    <a href>
                                                        <span translate="aside.nav.components.form.FORM">教务管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/studentclass_view.do')">
                                                    <a ui-sref="app.form.elements">
                                                        <span translate="aside.nav.components.form.FORM_ELEMENTS">班级管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/timetabledictionary_view.do')">
                                                    <a ui-sref="app.form.validation">
                                                        <span translate="aside.nav.components.form.FORM_VALIDATION">课程表管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/roomclass_view.do')">
                                                    <a ui-sref="app.form.wizard">
                                                        <span translate="aside.nav.components.form.FORM_WIZARD">教室管理</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    <%--=====================================日常办公=========================================--%>
                                        <li ui-sref-active="active">
                                            <a ui-sref="app.chart">
                                              <span class="pull-right text-muted">
                                                <i class="fa fa-fw fa-angle-right text"></i>
                                                <i class="fa fa-fw fa-angle-down text-active"></i>
                                              </span>
                                              <i class="glyphicon glyphicon-signal"></i>
                                              <span translate="aside.nav.components.CHART">日常办公</span>
                                            </a>
                                            <ul class="nav nav-sub dk">
                                                <li class="nav-sub-header">
                                                    <a href>
                                                        <span translate="aside.nav.components.CHART">日常办公</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/salary_view.do')">
                                                    <a ui-sref="app.form.elements">
                                                        <span translate="aside.nav.components.CHART_ELEMENTS">工资管理</span>
                                                    </a>
                                                </li>
                                                <li ui-sref-active="active" onclick="link('/attendance_view.do')">
                                                    <a ui-sref="app.form.validation">
                                                        <span translate="aside.nav.components.CHART_ELEMENTS_VALIDATION">考勤管理</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    <li class="line dk hidden-folded"></li>

                                </ul>
                            </nav>
                                <!-- nav -->


                                <!--下拉最低处 -->
                                <div class="wrapper m-t">
                                    <div class="text-center-folded">
                                        <span class="pull-right pull-none-folded">60%</span>
                                        <span class="hidden-folded" translate="aside.MILESTONE">当前精力</span>
                                    </div>
                                    <div class="progress progress-xxs m-t-sm dk">
                                        <div class="progress-bar progress-bar-info" style="width: 60%;">
                                        </div>
                                    </div>
                                    <div class="text-center-folded">
                                        <span class="pull-right pull-none-folded">35%</span>
                                        <span class="hidden-folded" translate="aside.RELEASE">已读信息</span>
                                    </div>
                                    <div class="progress progress-xxs m-t-sm dk">
                                        <div class="progress-bar progress-bar-primary" style="width: 35%;">
                                        </div>
                                    </div>
                                </div>
                                <!-- aside footer -->


    <%------------------------------------------旧---------------------------------------------%>


    <%-----------------------------------------菜单--------------------------------------------%>



    <%-- **************************************板块***************************************** --%>





        <iframe id="ifc" src="${url}"  style="width: 930px;height:695px;
            position:absolute; top:50px; left:200px;" frameborder="0">
        </iframe>

        <%--<iframe id="ifd"  style="width: 1080px;height:700px;--%>
                <%--position:absolute; top:120px; left:200px;" frameborder="0">--%>
        <%--</iframe>--%>

        <%--<iframe id="ifa"  style="width: 1050px;height:600px;--%>
                <%--position:absolute; top:120px; left:200px;" frameborder="0">--%>
        <%--</iframe>--%>


    <%--easyui包下面的easyui.css里的.panel-header、.accordion .accordion-header-selected .panel-title
     下对应的background值--%>
    <%-- **************************************板块***************************************** --%>
        </div>
    </div>
</div>

<!-- 下拉操作jQuery -->
<script src="/mstp/vendor/jquery/jquery.min.js"></script>
<script src="/mstp/vendor/jquery/bootstrap.js"></script>
<script type="text/javascript">
    +function ($) {
        $(function(){
            // class
            $(document).on('click', '[data-toggle^="class"]', function(e){
                e && e.preventDefault();
                // 菜单伸缩 用户头像显示
                var $this = $(e.target), $class , $target, $tmp, $classes, $targets;
                !$this.data('toggle') && ($this = $this.closest('[data-toggle^="class"]'));
                $class = $this.data()['toggle'];
                $target = $this.data('target') || $this.attr('href');
                $class && ($tmp = $class.split(':')[1]) && ($classes = $tmp.split(','));
                $target && ($targets = $target.split(','));
                $classes && $classes.length && $.each($targets, function( index, value ) {
                    if ( $classes[index].indexOf( '*' ) !== -1 ) {
                        var patt = new RegExp( '\\s' +
                            $classes[index].
                            replace( /\*/g, '[A-Za-z0-9-_]+' ).
                            split( ' ' ).
                            join( '\\s|\\s' ) +
                            '\\s', 'g' );
                        $($this).each( function ( i, it ) {
                            var cn = ' ' + it.className + ' ';
                            while ( patt.test( cn ) ) {
                                cn = cn.replace( patt, ' ' );
                            }
                            it.className = $.trim( cn );
                        });
                    }
                    ($targets[index] !='#') && $($targets[index]).toggleClass($classes[index]) || $this.toggleClass($classes[index]);
                });
                $this.toggleClass('active');
            });

            // collapse nav
            // 下拉菜单
            $(document).on('click', 'nav a', function (e) {
                var $this = $(e.target), $active;
                $this.is('a') || ($this = $this.closest('a'));

                $active = $this.parent().siblings( ".active" );
                $active && $active.toggleClass('active').find('> ul:visible').slideUp(200);

                ($this.parent().hasClass('active') && $this.next().slideUp(200)) || $this.next().slideDown(200);
                $this.parent().toggleClass('active');

                $this.next().is('ul') && e.preventDefault();

                setTimeout(function(){ $(document).trigger('updateNav'); }, 300);
            });
        });
    }(jQuery);

    function link(moduleName) {
        $("#ifc").attr("src",moduleName);
    }
    function tc() {
        $("#tc").submit();
    }
</script>
</body>
</html>