<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>修改管理员</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx }/static/layui/css/layui.css" media="all"/>
    <script>
        <%--JS gloable varilible--%>
        var ctx = "${ctx}";
    </script>
    <style type="text/css">
        .layui-form-item .layui-inline {
            width: 33.333%;
            float: left;
            margin-right: 0;
        }

        @media ( max-width: 1240px) {
            .layui-form-item .layui-inline {
                width: 100%;
                float: none;
            }
        }
    </style>
</head>
<body class="childrenBody">
<form class="layui-form layui-form-pane" action="" style="width:80%;margin:0 auto;margin-top: 2%;" id="saveAdminForm"
      onsubmit="return false;">
    <input type="hidden" value="${admin.id}" name="id">
    <div class="layui-form-item ">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" id="adminname" lay-verify="required" name="adminname" placeholder="请输入管理员用户名"
                   value="${admin.adminname}"
                   class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">管理员邮箱</label>
        <div class="layui-input-block">
            <input type="text" id="admineamil" lay-verify="required" name="admineamil" placeholder="请输入管理员邮箱"
                   value="${admin.admineamil}"
                   class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">管理员密码</label>
        <div class="layui-input-block">
            <input type="text" id="adminpassword" lay-verify="required" name="adminpassword" placeholder="请输入管理员密码"
                   value="${admin.adminpassword}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">管理员电话</label>
        <div class="layui-input-block">
            <input type="text" id="adminphone" lay-verify="required" name="adminphone" placeholder="请输入管理员电话"
                   value="${admin.adminphone}"
                   class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">状态</label>

        <div class="layui-input-block">
            <select name="status" id="status" class="layui-select">
                <option value="0"  ${admin.status==0?'selected':''}>可用-可以登录</option>
                <option value="1"  ${admin.status==1?'selected':''}>禁用-禁止登录</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">角色类型</label>
        <div class="layui-input-block">
            <select id="role" name="role" class="layui-select">
                <option value="管理员"  ${"管理员"==admin.role?'selected':''}>管理员</option>
                <%-- <c:forEach var="item" items="${roleList}">
                     <option value="${item.rolename}"  ${item.rolename==admin.role?'selected':''}>${item.rolename}</option>
                 </c:forEach>--%>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="saveAdmin">立即保存</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            <button onclick="backPage()" class="layui-btn layui-btn-warm">返回</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx }/static/layui/layui.js"></script>

<script type="text/javascript" src="${ctx}/static/js/common.js"></script>
<script type="text/javascript" src="${ctx}/view/manage/admin/saveAdmin.js"></script>
</body>
</html>