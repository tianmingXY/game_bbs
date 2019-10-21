<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>地图导航及道路信息查询系统-公交列表</title>
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
<jsp:include page="banner.jsp"/>

<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30" style="padding: 10px 30px;">
        <table class="layui-table layui-table-grid" lay-even lay-skin="line" lay-size="lg">
            <thead>
            <tr  style="color: green;font-weight: bold;">
                <th>ID</th>
                <th>名称</th>
                <th>添加时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <%--<c:forEach items="${baseBeanList}" var="item">--%>
                <tr>
                    <th>10001</th>
                    <th>测试名称</th>
                    <th>2019-05-23 16:10:00</th>
                    <th><a href="#" class="layui-btn">查看详情</a></th>
                </tr>
            <%--</c:forEach>--%>
            </tbody>
        </table>
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