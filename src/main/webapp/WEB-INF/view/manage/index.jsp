<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="userIndex" value="${ctx}/manage/personalData"/>
<%--登陆判断--%>
<c:if test="${sessionScope.loginAdmin==null}">
    <%--没有登录则跳转到后台登陆页面--%>
    <c:redirect url="manage/login"/>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Game游戏贴吧-后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/static/css/main.css" media="all"/>
    <script>
        var ctx = "${ctx}";
    </script>
</head>
<body class="main_body">
<div class="layui-layout layui-layout-admin">
    <!-- 顶部 -->
    <div class="layui-header header">
        <div class="layui-main">
            <a href="#" class="logo">后台管理中心</a>
            <!-- 显示/隐藏菜单 -->
            <a href="javascript:;" class="iconfont hideMenu icon-menu1"></a>
            <!-- 顶部右侧菜单 -->
            <ul class="layui-nav top_menu">
                <li class="layui-nav-item" id="showIndexHome">
                    <%--<a href="${ctx}/manageIndex" ><i class="iconfont icon-computer"></i><cite>系统首页</cite></a>--%>
                    <a href="${ctx}/pc/index" target="_blank"><i
                            class="iconfont icon-computer"></i><cite>系统首页</cite></a>
                </li>
                <li class="layui-nav-item showNotice" id="showNotice" pc>
                    <a href="javascript:;"><i class="iconfont icon-gonggao"></i><cite>系统公告</cite></a>
                </li>
                <li class="layui-nav-item" mobile>
                    <a href="javascript:;" class="mobileAddTab" data-url="${ctx}/sys/changePwd"><i
                            class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a>
                </li>
                <li class="layui-nav-item" mobile>
                    <a href="${ctx}/sys/loginOut" class="signOut"><i
                            class="iconfont icon-loginout"></i> 退出</a>
                </li>
                <li class="layui-nav-item" pc>
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe612;</i>
                        <cite>${sessionScope.loginAdmin.adminname} </cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="${ctx}/manage/personalData"><i
                                class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a></dd>
                        <dd><a href="javascript:;" data-url="${ctx}/manage/changePwd"><i
                                class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a></dd>
                        <dd><a href="${ctx}/manage/loginOut" class="signOut"><i
                                class="iconfont icon-loginout"></i><cite>退出</cite></a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧导航 -->
    <div class="layui-side layui-bg-black">
        <!-- <div class="navBar layui-side-scroll"></div> -->
        <div class="navBar">
            <ul class="layui-nav layui-nav-tree">
                <li class="layui-nav-item">
                    <a href="javascript:;" data-url="#">
                        <i class="layui-icon">系统菜单</i>
                    </a>
                </li>
                <%--<c:if test="${sessionScope.loginAdmin.role=='管理员'}">--%>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/adminList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>管理员管理</cite>
                    </a>
                </li>
                <%--</c:if>--%>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/userinfoList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>用户管理</cite>
                    </a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/wenjuanList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>问卷管理</cite>
                    </a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/wenjuanjieguoList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>问卷结果管理</cite>
                    </a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/sorttypeList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>帖子分类管理</cite>
                    </a>
                </li>

                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/countDateShow">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>数据分析统计</cite>
                    </a>
                </li>

                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/informList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>公告管理</cite>
                    </a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/articleList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>帖子管理</cite>
                    </a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/linkurlList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>友情链接管理</cite>
                    </a>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;" data-url="${ctx}/manage/liuyanList">
                        <i class="layui-icon" data-icon=""></i>
                        <cite>留言管理</cite>
                    </a>
                </li>
                <span class="layui-nav-bar" style="top: 67.5px; height: 0px; opacity: 0;"></span>
            </ul>

        </div>
    </div>
    <!-- 右侧内容 -->
    <div class="layui-body layui-form">
        <div class="layui-tab marg0" lay-filter="bodyTab" id="top_tabs_box">
            <ul class="layui-tab-title top_tab" id="top_tabs">
                <li class="layui-this" lay-id=""><i class="iconfont icon-computer"></i> <cite>后台首页</cite></li>
            </ul>
            <!-- 当前页面操作 -->
            <ul class="layui-nav closeBox">
                <li class="layui-nav-item" pc>
                    <a href="javascript:;"><i class="iconfont icon-caozuo"></i> 页面操作</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" class="refresh refreshThis"><i class="layui-icon">&#x1002;</i>
                            刷新当前</a></dd>
                        <dd><a href="javascript:;" class="closePageOther"><i class="iconfont icon-prohibit"></i>
                            关闭其他</a></dd>
                        <dd><a href="javascript:;" class="closePageAll"><i class="iconfont icon-guanbi"></i> 关闭全部</a>
                        </dd>
                    </dl>
                </li>
            </ul>
            <div class="layui-tab-content clildFrame">
                <div class="layui-tab-item layui-show">
                    <%--系统默认进入首页--%>
                    <iframe src="${userIndex}"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="showWelcomeMsgDiv" style="display: none;">
    欢迎${sessionScope.loginuserName}登录-Game游戏贴吧-后台管理系统！
</div>
<!-- 移动导航 -->
<div class="site-tree-mobile layui-hide"><i class="layui-icon">&#xe602;</i></div>
<div class="site-mobile-shade"></div>

<script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/static/js/leftNav.js"></script>
<script type="text/javascript" src="${ctx}/static/js/index.js"></script>

</body>
</html>