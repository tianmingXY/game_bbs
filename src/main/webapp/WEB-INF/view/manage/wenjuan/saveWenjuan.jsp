<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>编辑问卷</title>
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
      id="saveWenjuanForm"
      onsubmit="return false;">
    <input type="hidden" value="${wenjuan.id}" name="id">
    <div class="layui-form-item ">
        <label class="layui-form-label">题目</label>
        <div class="layui-input-block">
            <input type="text" id="name" name="name" lay-verify="required"
                   placeholder="请输入题目"
                   lay-verify="required" value="${wenjuan.name}" class="layui-input"/>
        </div>
    </div>
    <%--   <div class="layui-form-item ">
           <label class="layui-form-label">答案</label>
           <div class="layui-input-block">
               <input type="text" id="daan" name="daan" lay-verify="required"
                      placeholder="请输入答案"
                      lay-verify="required" value="${wenjuan.daan}" class="layui-input"/>
           </div>
       </div>--%>
    <div class="layui-form-item ">
        <label class="layui-form-label">分数</label>
        <div class="layui-input-block">
            <input type="text" id="fenshu" name="fenshu" lay-verify="required"
                   placeholder="请输入分数"
                   lay-verify="required" value="${wenjuan.fenshu}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">选项</label>
        <div class="layui-input-block">
            <input type="text" id="xuanxiang" name="xuanxiang" lay-verify="required"
                   placeholder="请输入选项"
                   lay-verify="required" value="${wenjuan.xuanxiang}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">所属id</label>
        <div class="layui-input-block">
            <input type="text" id="tId" name="tId" lay-verify="required" value="0"
                   placeholder="请输入所属id"
                   lay-verify="required" value="${wenjuan.TId}" class="layui-input"/>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="saveWenjuan">立即保存</button>
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
    }).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl', 'laydate'], function () {
        var form = layui.form, table = layui.table;
        layer = parent.layer === undefined ? layui.layer : parent.layer,
            laypage = layui.laypage, laydate = layui.laydate,
            $ = layui.jquery;
        nowTime = new Date().valueOf();
        //表单提交
        form.on("submit(saveWenjuan)", function (data) {
            //弹出loading
            var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
            var msg;
            var subURL = ctx + "/manage/saveWenjuan";//添加提交地址
            if (!isEmpty(data.field.id)) { //判断是添加还是修改
                subURL = ctx + "/manage/updateWenjuan";//修改提交地址
            }
            $.ajax({
                type: "post",
                url: subURL,
                data: data.field,
                dataType: "json",
                success: function (d) {
                    if (d.code == 0) {
                        msg = d.msg;
                        // 重置表单 saveWenjuanForm是表单的id
                        //$("#saveWenjuanForm")[0].reset();
                        //layui.form.render();
                        layer.msg(msg, {time: 3000, icon: 1}, function () {
                            var url = ctx + "/manage/wenjuanList"; //返回列表页面
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