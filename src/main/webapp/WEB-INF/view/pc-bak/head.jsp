<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="header">
    <div class="container">
        <div id="weather"></div>
        <div class="toptxt">
            <c:if test="${sessionScope.loginUserinfo==null}">
                <a href="${ctx}/pc/login">登陆</a>|<a href="${ctx}/pc/register">注册</a>
            </c:if>
            <c:if test="${sessionScope.loginUserinfo!=null}">
                <a href="#">欢迎
                    <span style="color: white;font-weight: bold;">${sessionScope.loginUserinfo.name}</span>
                    登陆</a>
                <a href="${ctx}/pc/loginOut">退出登录</a>
            </c:if>
            <a href="#">加入收藏</a><a href="#">设为首页</a></div>
        <div class="logo"><a href="#"><img src="${ctx}/static/index/images/logo.png"/></a></div>
        <div class="search">
            <input type="text" id="searchInput" class="ipt-sea" placeholder="请输入搜索关键词"/>
            <a href="javascript:;" onclick="searchFun()">搜索</a></div>
    </div>
    <script>
        function searchFun() {
            var searchInput = $("#searchInput").val();
            location.href = "${ctx}/pc/articleList?keyword=" + searchInput+"&type=搜索帖子";
        }
    </script>

</div>
<div class="nav">
    <ul class="" id="navul">
        <li class="active"><a href="${ctx}/pc/index">首页</a></li>
        <li><a href="${ctx}/pc/about">关于我们</a></li>
        <li><a href="${ctx}/pc/articleList?type=仲裁动态">仲裁动态</a>
            <ul>
                <li><a href="#">本院动态</a></li>
                <li><a href="#">领导活动</a></li>
                <li><a href="#">重要发文</a></li>
                <li><a href="#">通知公告</a></li>
            </ul>
        </li>
        <li><a href="${ctx}/pc/informIndex">通知公告</a></li>
        <li><a href="${ctx}/pc/articleList?type=事务公开">事务公开</a></li>
        <li><a href="${ctx}/pc/liuyan">在线留言</a></li>
        <li><a href="${ctx}/pc/articleList?type=防控领域">防控领域</a></li>
        <li><a href="${ctx}/pc/articleList?type=警示教育">警示教育</a>
            <ul>
                <li><a href="${ctx}/pc/liuyan">在线留言</a></li>
                <li><a href="${ctx}/pc/wenjuan">问卷调查</a></li>
            </ul>
        </li>
    </ul>
</div>
<script type="text/javascript">
    $(".navbg").capacityFixed();
</script>