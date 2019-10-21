<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav layui-nav-tree" lay-filter="test">
    <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
    <%--<li class="layui-nav-item"><a href="${ctx}/pc/userinfo_center">账户信息</a></li>--%>

    <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:;">个人中心菜单</a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/pc/userinfoCenter">账户信息</a></dd>
                <%--<dd><a href="${ctx}/pc/userGameinfo?username=${sessionScope.loginUserinfo.name}">我的游戏记录</a></dd>--%>
                <dd><a href="${ctx}/pc/userinfoCenter">游戏排行榜</a></dd>
            </dl>
        </li>
    </ul>
    <div style="text-align:center;margin: 0px auto;margin-top:20px;width: 50%;">
        <img src="${sessionScope.loginUserinfo.picurl}"  style="width: 100%;border-radius: 500px;">
        <br>
        <h1 style="font-size: 20px;">${sessionScope.loginUserinfo.name}</h1>
    </div>


</ul>