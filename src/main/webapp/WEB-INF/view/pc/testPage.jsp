<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Game游戏贴吧-系统公告</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->

<!--轮播图 start-->
<jsp:include page="banner.jsp"/>
<!--轮播图 end-->


<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30">

        <div class="layui-collapse">

            <h1><a class="layui-btn layui-btn-danger" href="${ctx}/test/testTable"> 表格页面</a></h1>
            <br>
            <br>
            <br>
            <h1><a class="layui-btn layui-btn-danger" href="${ctx}/pc/articleIndex"> 帖子列表2</a></h1>

        </div>

        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0"></div>
        </div>
    </div>
    <%--引入分页代码--%>
    <%--<jsp:include page="commonPage.jsp"/>--%>
</div>

<jsp:include page="foot.jsp"/>

<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
</body>
</html>