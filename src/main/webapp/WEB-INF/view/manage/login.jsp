<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>登录--后台管理</title>
    <link rel="stylesheet" href="${ctx }/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${ctx }/static/css/login.css" media="all"/>
    <script>
        var ctx = "${ctx}";
    </script>
    <script type="text/javascript">
        if (window != top) {
            top.location.href = location.href;
        }
    </script>
</head>
<body>


<div class="video_mask"></div>
<div class="login" style="padding: 50px 50px;">
    <%--<h1>管理员登录</h1>--%>
    <form class="layui-form" id="loginForm">
        <div class="layui-form-item">
            <input class="layui-input" name="username" placeholder="用户名" value="admin" lay-verify="required"
                   type="text"
                   autocomplete="off">
        </div>
        <div class="layui-form-item" style="margin-top: 30px">
            <input class="layui-input" name="password" placeholder="密码" value="123456" lay-verify="required"
                   type="password" autocomplete="off">
        </div>
       <%-- <div class="layui-form-item" style="margin-top: 30px">
            <select name="role" class="layui-select">
                <option value="管理员登录">管理员登录</option>
                <option value="用户登录">用户登录</option>
            </select>
        </div>--%>
        <div class="layui-form-item form_code" style="margin-top: 30px">
            <input class="layui-input" style="width: 140px;" name="vcode"
                   placeholder="验证码" lay-verify="required" value=""
                   type="text" autocomplete="off" maxlength="4">
            <div class="code"><img id="captcha" src="${ctx }/manage/codeCreate" width="100" height="36"
                                   onclick="refreshCode(this)"></div>
        </div>
        <button class="layui-btn login_btn" lay-submit="" lay-filter="login" id="btn">登录</button>
    </form>
</div>
<script type="text/javascript" src="${ctx }/static/layui/layui.js"></script>
<script type="text/javascript" src="${ctx }/static/js/login.js"></script>
</body>
</html>