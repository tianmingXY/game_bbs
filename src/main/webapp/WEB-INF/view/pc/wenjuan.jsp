<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>问卷调查页面</title>
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
    <h1 style="text-align: center;">Game游戏贴吧-问卷调查页面</h1>
    <div>
        <form id="ketiForm" action="${ctx}/pc/submitWenjuan" method="post">
            <input type="hidden" name="username" value="${sessionScope.loginUserinfo.name}">
            <input type="hidden" name="name" value="${beanData.name}">
            <c:forEach var="item" items="${wenjuanList}" varStatus="ss">
                <div class="layui-elem-quote" style="margin: 20px;">
                    <p style="font-size: 18px; margin-bottom: 15px;">${ss.count}.${item.name}  </p>
                    <c:set value="${ fn:split(item.xuanxiang, '  ') }" var="str1"/>
                    <p>
                        <c:forEach var="kk" items="${str1}">

                            <c:set value="${ fn:split(kk, '.') }" var="str2"/>
                            <label style="font-size: 15px;">
                                <input type="radio" name="xx${item.id}" checked
                                       value="${str2[0]}.${str2[1]}"> ${str2[0]}.${str2[1]} </label> &nbsp;&nbsp;&nbsp;

                        </c:forEach>
                    </p>
                </div>
            </c:forEach>
            <div class="layui-elem-quote" style="margin: 20px;">
                <c:if test="${sessionScope.loginUserinfo==null}">
                    <h2 style="color: red;">登录以后才能参加考试</h2>
                </c:if>
                <c:if test="${sessionScope.loginUserinfo!=null}">
                    <button type="submit" class="layui-btn layui-btn-primary">提交问卷</button>
                </c:if>
            </div>
        </form>
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