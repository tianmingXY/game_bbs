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
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->
<jsp:include page="banner.jsp"/>


<div class="layui-container layadmin-cmdlist-fluid">
    <div class="layui-row layui-col-space30 content">

        <div class="cont w1000">
            <div class="title">
        <span class="layui-breadcrumb" lay-separator="|" style="visibility: visible;">
          <a href="javascript:;" class="active">系统帖子</a><span lay-separator="">|</span>
          <a href="javascript:;">前端帖子</a><span lay-separator="">|</span>
          <a href="javascript:;">${type==null?'帖子列表':type}</a>
        </span>
            </div>
            <div class="list-item">
                <c:forEach items="${beanDataList}" var="item">
                <div class="item">
                    <div class="layui-fluid">
                        <div class="layui-row">
                            <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                                <div class="img"><img src="${item.picurl}" alt=""></div>
                            </div>
                            <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                                <div class="item-cont">
                                    <h3> ${item.title}
                                        <button class="layui-btn layui-btn-danger new-icon">new</button>
                                    </h3>
                                    <h5 style="font-size: 15px;">${item.type}</h5>
                                    <p>
                                            ${item.outline}
                                    </p>
                                    <a href="${ctx}/pc/articleDetail?id=${item.id}" class="layui-btn layui-btn-normal" style="display: inline-block;margin-top: 20px;"><i class="layui-icon layui-icon-release"></i> 点我查看</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>

        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0"></div>
        </div>
    </div>

    <%--引入分页代码--%>
    <jsp:include page="commonPage.jsp"/>
</div>


<jsp:include page="foot.jsp"/>

<style>
    .content .cont .title {
        margin-bottom: 60px;
    }

    .content .cont .title a {
        font-size: 16px;
        color: #000 !important;
    }

    .content .cont .title .layui-breadcrumb span {
        position: relative;
        top: -1px;
        margin: 0 16px;
    }

    .content .cont .title a.active, .content .cont .title a:hover {
        color: #ff7f21 !important;
    }

    .content .cont .list-item .layui-fluid {
        padding: 0;
    }

    .content .cont .list-item .item {
        margin-bottom: 80px;
        overflow: hidden;
    }

    .content .cont .list-item .item .img img {
        width: 100%;
    }

    .content .cont .list-item .item .item-cont {
        padding-left: 100px;
    }

    .content .cont .list-item .item .item-cont .go-icon {
        width: 33px;
        height: 11px;
        background: url(../img/jiantou.png) center center no-repeat;
        display: block;
        padding: 10px 0;
        margin-top: 16px;
    }

    .content .cont .list-item .item .item-cont h3 {
        font-size: 24px;
        margin: 20px 0;
    }

    .content .cont .list-item .item .item-cont h3 .new-icon {
        width: 36px;
        height: 18px;
        line-height: 18px;
        text-align: center;
        padding: 0;
        margin: -3px 0 0 10px;
    }

    .content .cont .list-item .item .item-cont h5 {
        font-size: 12px;
        color: #ff7f21;
        margin-bottom: 32px;
    }

    .content .cont .list-item .item .item-cont p {
        line-height: 37px;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
        /* autoprefixer: off */
        -webkit-box-orient: vertical;
        /* autoprefixer: on */
    }
</style>


<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
<script>
    layui.use('form', function () {
        var form = layui.form;

        //各种基于事件的操作，下面会有进一步介绍
    });
</script>


</body>
</html>