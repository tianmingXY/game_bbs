<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>编辑用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all"/>
    <script>
        var ctx = "${ctx}";  //全局js项目路径
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
<form class="layui-form layui-form-pane" action="" style="width:80%;margin:0 auto;margin-top: 2%;"
      id="saveUserinfoForm"
      onsubmit="return false;">
    <input type="hidden" value="${userinfo.id}" name="id">
    <div class="layui-form-item ">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" id="name" name="name" lay-verify="required"
                   placeholder="请输入姓名"
                   value="${userinfo.name}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">电话</label>
        <div class="layui-input-block">
            <input type="text" id="phone" name="phone" lay-verify="required"
                   placeholder="请输入电话"
                   value="${userinfo.phone}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">邮箱</label>
        <div class="layui-input-block">
            <input type="text" id="email" name="email" lay-verify="required"
                   placeholder="请输入邮箱"
                   value="${userinfo.email}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">头像</label>
        <div class="layui-input-block">
            <input id="myfile" type="file" name="myfile" style="display: none;"
                   onchange="uploadFileUtil('myfile','picurl')">
            <input type="text" id="picurl" name="picurl" lay-verify="required"
                   placeholder="网络图片请输入图片 如果是要上传，请点击后面的上传文件按钮"
                   value="${userinfo.picurl}" class="layui-input" style="width: 80%;display: inline-block;"/>
            <span onclick="uploadFileUtilClick('myfile')" class="layui-btn"><i class="layui-icon"></i>上传文件</span>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">金额</label>
        <div class="layui-input-block">
            <input type="text" id="money" name="money" lay-verify="required"
                   placeholder="请输入金额"
                   value="${userinfo.money}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <input type="text" id="sex" name="sex" lay-verify="required"
                   placeholder="请输入性别"
                   value="${userinfo.sex}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="text" id="password" name="password" lay-verify="required"
                   placeholder="请输入密码"
                   value="${userinfo.password}" class="layui-input"/>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="saveUserinfo">立即保存</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                <button onclick="backPage()" class="layui-btn layui-btn-warm">返回</button>
            </div>
        </div>
</form>
<script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>
<script type="text/javascript" src="${ctx}/static/js/common.js"></script>
<script type="text/javascript">
    var $;
    var $form;
    var form;
    layui.config({
        base: "js/"
    }).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl', 'laydate', 'upload'], function () {
        var form = layui.form, table = layui.table;
        layer = parent.layer === undefined ? layui.layer : parent.layer,
            laypage = layui.laypage, laydate = layui.laydate, upload = layui.upload,
            $ = layui.jquery;
        nowTime = new Date().valueOf();
        //表单提交
        form.on("submit(saveUserinfo)", function (data) {
            //弹出loading
            var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
            var msg;
            var subURL = ctx + "/manage/saveUserinfo";//添加提交地址
            if (!isEmpty(data.field.id)) { //判断是添加还是修改
                subURL = ctx + "/manage/updateUserinfo";//修改提交地址
            }
            $.ajax({
                type: "post",
                url: subURL,
                data: data.field,
                dataType: "json",
                success: function (d) {
                    if (d.code == 0) {
                        msg = d.msg;
                        // 重置表单 saveUserinfoForm是表单的id
                        //$("#saveUserinfoForm")[0].reset();
                        //layui.form.render();
                        layer.msg(msg, {time: 3000, icon: 1}, function () {
                            var url = ctx + "/manage/userinfoList"; //返回列表页面
                            window.location.href = url;
                        });
                    } else {
                        msg = d.msg;
                        layer.alert(msg);
                    }
                }
            });
            return false;
        })

    });
</script>
</body>
</html>