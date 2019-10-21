<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Game游戏贴吧</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <link href="${ctx}/static/index/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/index/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctx}/static/index/js/jquery-1.8.3.min.js"></script>
    <link href="${ctx}/static/index/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/static/index/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/static/index/js/nav.js"></script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->
<%--轮播图 \\--%>
<jsp:include page="banner.jsp"/>
<%--轮播图  //--%>

<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30">


        <div style="text-align: center">
            <img src="${ctx}/static/img/success.jpg">
        </div>


        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0"></div>
        </div>
    </div>

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