<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Game游戏贴吧-留言管理</title>
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

            <%--内容区域--%>
            <div class="layui-card layadmin-header">
                <div class="layui-breadcrumb" lay-filter="breadcrumb">
                    <a lay-href="">主页</a>
                    <a><cite>页面</cite></a>
                    <a><cite>留言板</cite></a>
                </div>
            </div>

            <div class="layui-fluid layadmin-message-fluid">
                <form action="${ctx}/pc/liuyanSubmit" method="post">
                    <div class="layui-row">
                        <div class="layui-col-md12">
                            <div class="layui-form">
                                <div class="layui-form-item layui-form-text">
                                    <div class="layui-input-block">
                                        <input name="score" type="hidden" value="0" id="scoreInput">
                                        <input name="picurl" type="hidden" value="${sessionScope.loginUserinfo.picurl}">
                                        <input name="username" type="hidden" value="${sessionScope.loginUserinfo.name}">
                                        <textarea name="content" placeholder="请输入内容" class="layui-textarea"></textarea>
                                    </div>
                                </div>

                                <div class="layui-form-item" style="overflow: hidden;">
                                    <div class="layui-input-block layui-input-right">
                                        <c:if test="${sessionScope.loginUserinfo==null}">
                                            <a class="layui-btn" href="${ctx}/pc/login">登录以后才能发表留言</a>
                                        </c:if>
                                        <c:if test="${sessionScope.loginUserinfo!=null}">
                                            <button type="submit" class="layui-btn">发表留言</button>
                                        </c:if>
                                    </div>
                                    <div class="layadmin-messag-icon">
                                        <a href="javascript:;"><i class="layui-icon layui-icon-face-smile-b"></i></a>
                                        <a href="javascript:;"><i class="layui-icon layui-icon-picture"></i></a>
                                        <a href="javascript:;"><i class="layui-icon layui-icon-link"></i></a>
                                        <a href="javascript:;"><span id="xingxingScore"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-col-md12 layadmin-homepage-list-imgtxt message-content">
                            <c:forEach items="${liuyanList}" var="item" varStatus="ss">
                                <div class="media-body">
                                    <a href="javascript:;" class="media-left" style="float: left;">
                                            <%--<img src="${ctx}/static/img/headicon.jpg" height="46px" width="46px">--%>
                                        <img src="${item.picurl}" height="46px" width="46px">
                                    </a>
                                    <div class="pad-btm">
                                        <p class="fontColor"><a href="javascript:;">${item.username}</a></p>
                                        <p class="min-font">
                                          <span class="layui-breadcrumb" lay-separator="-">
                                            <a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>
                                            <a href="javascript:;"> <span id="xingxing${item.id}"></span></a>
                                            <a href="javascript:;">
                                                <span class="layui-icon layui-icon-date"></span>
                                                <fmt:formatDate value="${item.createtime}"
                                                                pattern="yyyy-MM-dd HH:mm:ss"/></a>
                                              <script>
                                                  //只读
                                                  layui.use(['rate'], function () {
                                                      var rate = layui.rate;
                                                      rate.render({
                                                          elem: '#xingxing${item.id}'
                                                          , value: ${item.score}
                                                          , readonly: true
                                                      });
                                                  });
                                              </script>
                                          </span>
                                        </p>
                                    </div>
                                    <p class="message-text">${item.content}</p>
                                </div>
                            </c:forEach>
                            <div class="layui-row message-content-btn">
                                <a href="javascript:;" class="layui-btn">没有更多了</a>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>

        <script>
            layui.use(['layer', 'form', 'rate'], function () {
                var rate = layui.rate;
                var $ = layui.$
                    , admin = layui.admin
                    , form = layui.form;
                //显示文字
                rate.render({
                    elem: '#xingxingScore'
                    , value: 2 //初始值
                    , text: true //开启文本
                    , setText: function (value) {
                        var arrs = {
                            '1': '1星'
                            , '2': '2星'
                            , '3': '3星'
                            , '4': '4星'
                            , '5': '5星'
                        };
                        this.span.text(arrs[value] || (value + "星"));
                        $("#scoreInput").val(value);
                    }
                });

            });
        </script>


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