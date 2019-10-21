<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>修改密码</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all"/>
    <script>
        var ctx = "${ctx}";
    </script>
    <style type="text/css">
        /*修改密码*/
        .changePwd {
            width: 90%;
            margin: 3% auto;
        }
    </style>
</head>
<body class="childrenBody">
<form class="layui-form changePwd" id="cpwd">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" value="${sessionScope.loginuserName}" disabled
                   class="layui-input layui-disabled">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">旧密码</label>
        <div class="layui-input-block">
            <input type="password" value="" placeholder="请输入旧密码" lay-verify="oldPwd" class="layui-input pwd"
                   name="oldPwd">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">新密码</label>
        <div class="layui-input-block">
            <input type="password" value="" placeholder="请输入新密码" lay-verify="newPwd" id="newPwd" class="layui-input pwd"
                   name="newPwd">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">确认密码</label>
        <div class="layui-input-block">
            <input type="password" value="" placeholder="请确认密码" lay-verify="repass" class="layui-input pwd">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="changePwd">立即修改</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
<script type="text/javascript">
    var $;
    var form;
    layui.config({
        base: "js/"
    }).use(['form', 'layer', 'jquery', 'laydate'], function () {
        var layer = parent.layer === undefined ? layui.layer : parent.layer,
            laypage = layui.laypage, laydate = layui.laydate;
        $ = layui.jquery;
        form = layui.form;

        //自定义验证规则
        form.verify({
            oldPwd: [/(.+){6,16}$/, '密码必须6到16位'],
            newPwd: [/(.+){6,16}$/, '密码必须6到16位'],
            repass: function (value) {
                var repassvalue = $('#newPwd').val();
                if (value != repassvalue) {
                    return '两次输入的密码不一致!';
                }
            }
        });

        form.on("submit(changePwd)", function (data) {
            //弹出loading
            var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
            var msg;
            $.ajax({
                type: "post",
                url: ctx + "/manage/changePwdSubmit",
                async: false,
                data: data.field,
                dataType: "json",
                success: function (d) {
                    if (d.code == 0) {
                        msg = "密码修改成功，需要重新登录！";
                        $('#cpwd')[0].reset();
                        layer.msg(msg, function () {
                            location.href = "${ctx}/manage/login";
                        });
                    } else {
                        msg = d.msg;
                        $('#cpwd')[0].reset();
                        layer.msg(msg);
                    }
                }
            });
            return false;
        })

    })
</script>
</body>
</html>