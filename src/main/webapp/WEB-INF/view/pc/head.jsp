<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav layui-bg-green" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/pc/index">Game游戏贴吧信息展示</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/index">首页</a></li>
    <%--<li class="layui-nav-item"><a href="${ctx}/manage/login">后台管理</a></li>--%>
    <li class="layui-nav-item"><a href="${ctx}/pc/informIndex">公告信息</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/wenjuan">问卷调查</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/liuyan">留言</a></li>
    <%--<li class="layui-nav-item"><a href="${ctx}/test/testPage">测试地址</a></li>--%>
    <li class="layui-nav-item">
        <a href="${ctx}/pc/articleIndex">帖子列表2</a>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="${ctx}/test/testTable">表格页面</a></dd>
            <dd><a href="${ctx}/pc/articleIndex">帖子列表2</a></dd>
            <%--<dd><a href="">XXXX地址</a></dd>--%>
        </dl>
    </li>
    <c:if test="${sessionScope.loginUserinfo==null}">
        <li class="layui-nav-item"><a href="${ctx}/pc/login">马上登陆</a></li>
        <li class="layui-nav-item"><a href="${ctx}/pc/register">点我注册</a></li>
    </c:if>
    <c:if test="${sessionScope.loginUserinfo!=null}">
        <%--<li class="layui-nav-item"><a href="${ctx}/pc/stockinfoindex">我要买入</a></li>
        <li class="layui-nav-item"><a href="${ctx}/pc/myorder">我的交易记录</a></li>--%>
        <%-- <li class="layui-nav-item"><a href="${ctx}/pc/userinfoCenter">
             欢迎
             <span style="color: white;font-weight: bold;">${sessionScope.loginUserinfo.name}</span>
             登陆</a>
         </li>
         <li class="layui-nav-item"><a href="${ctx}/pc/loginOut">退出登录</a></li>--%>
        <li class="layui-nav-item">
            <a href=""><img src="${sessionScope.loginUserinfo.picurl}"
                            class="layui-nav-img">${sessionScope.loginUserinfo.name}</a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/pc/userinfoCenter">个人中心</a></dd>
                <dd><a href="${ctx}/pc/loginOut">退出登录</a></dd>
            </dl>
        </li>
    </c:if>
</ul>