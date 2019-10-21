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
    <div class="layui-row layui-col-space30">
        <div class="mainTop layui-clear">
            <div class="fr">
                <form class="layui-form" action="${ctx}/pc/index" method="post">
                    <div class="layui-form-item">
                        <div class="layui-inline" style="text-align: left;">
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input dateIcon" name="title" id="title"
                                       value="${title}"
                                       placeholder="请输入标题关键词"
                                       style="width: 240px;">
                            </div>
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input dateIcon" name="author" id="author"
                                       value="${author}"
                                       placeholder="请输入作者"
                                       style="width: 240px;">
                            </div>
                            <div class="layui-input-inline">
                                <select name="type" id="type" class="layui-select">
                                    <option value="">请选择分类</option>
                                    <c:forEach items="#{sorttypeList}" var="item">
                                        <option value="${item.sortname}" ${item.sortname==type?'selected':''}>${item.sortname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="layui-input-inline">
                                <select name="orderStr" id="orderStr" class="layui-select">
                                    <option value="">请选择排序要求</option>
                                    <option value=" id asc ">ID升序</option>
                                    <option value=" id desc ">ID降序</option>
                                </select>
                            </div>
                            <div class="layui-input-inline">
                                <button type="submit" class="layui-btn layui-btn-blue"><i class="layui-icon layui-icon-search"></i> 搜索</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>


        <c:forEach items="${beanDataList}" var="item">
            <div class="layui-col-md4 layui-col-sm6">
                <div class="cmdlist-container">
                    <a href="${ctx}/pc/articleDetail?id=${item.id}">
                            <%--<img src="${fn:startsWith(item.picurl, 'http')?'':ctx}/${item.picurl}" style="width: 100%;">--%>
                        <img src="${item.picurl}" style="width: 100%;height: 250px;">
                    </a>
                    <a href="javascript:;">
                        <div class="cmdlist-text">
                            <p class="info"><a href="${ctx}/pc/articleDetail?id=${item.id}">${item.title}</a></p>
                            <div class="price">
                                <b>分类:<span style="color: green">${item.type}</span></b>
                                <p>作者:${item.author}</p>
                                <span class="flow"><i class="layui-icon layui-icon-date"></i>
                                    <fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd"/>
                                </span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </c:forEach>

        <div class="layui-col-md12 layui-col-sm12">
            <div id="demo0"></div>
        </div>
    </div>

    <%--引入分页代码--%>
    <jsp:include page="commonPage.jsp"/>
</div>


<jsp:include page="foot.jsp"/>

<style>
    .fl {
        float: left;
    }

    .fr {
        float: right;
    }

    .mb10 {
        margin-bottom: 10px;
    }

    .sideBlock {
        padding: 24px;
    }

    .layui-form-item .layui-input-inline {
        width: auto;
    }

    .layui-input, .layui-select, .layui-textarea {
        height: 36px;
    }

    .layui-form-label {
        padding: 8px 15px;
    }

    .layui-form-switch {
        height: 34px;
        line-height: 34px;
        margin-top: 0;
        min-width: 54px;
    }

    .layui-form-switch i {
        width: 24px;
        height: 24px;
        top: 5px;
    }

    .layui-form-onswitch i {
        margin-left: -28px;
        top: 5px;
    }

    .layui-form-switch em {
        margin-left: 27px;
    }

    .layui-form-onswitch em {
        margin-left: 5px;
    }

    .layui-btn {
        height: 36px;
    }

    /*修改颜色风格-蓝色 */
    .layui-form-select dl dd.layui-this {
        background-color: #02a7f0;
    }

    .layui-btn-blue {
        background-color: #02a7f0;
    }

    .layui-form-onswitch {
        border-color: #02a7f0;
        background-color: #02a7f0;
    }

    .layui-form-radio > i:hover, .layui-form-radioed > i {
        color: #02a7f0;
    }

    .layui-form-checked[lay-skin=primary] i {
        border-color: #02a7f0;
        background-color: #02a7f0;
    }

    .layui-form-checkbox[lay-skin=primary]:hover i {
        border-color: #02a7f0;
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