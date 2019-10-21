<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav" lay-filter="" style="background-color: rgba(0,0,0,0.8);text-align: center;">
  <li class="layui-nav-item"><a href="javascript:void(0);">友情链接：</a></li>
  <c:forEach items="${sessionScope.linkurlList}" var="item">
    <li class="layui-nav-item"><a href="${item.url}" target="_blank">${item.name}</a></li>
  </c:forEach>
  <%--<li class="layui-nav-item"><a href="">社区</a></li>--%>
</ul>
<div class="layui-footer footer footer-index"
     style="text-align: center;background-color: rgba(0,0,0,0.8);padding: 10px;font-size: 15px;color: #eee;">
  <div class="layui-main">
    <h4>© 2019 Game游戏贴吧 版权所有</h4>
    <p>
      Game游戏贴吧 前端页面
    </p>
  </div>
</div>

<script>
  //注意：导航 依赖 element 模块，否则无法进行功能性操作
  layui.use('element', function(){
    var element = layui.element;

    //…
  });
</script>