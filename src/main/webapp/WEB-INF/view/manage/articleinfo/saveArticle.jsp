<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>编辑帖子</title>
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
      id="saveArticleForm"
      onsubmit="return false;">
    <input type="hidden" value="${article.id}" name="id">
    <div class="layui-form-item ">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-block">
            <input type="text" id="title" name="title" lay-verify="required"
                   placeholder="请输入标题"
                   value="${article.title}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">大纲</label>
        <div class="layui-input-block">
            <input type="text" id="outline" name="outline" lay-verify="required"
                   placeholder="请输入大纲"
                   value="${article.outline}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">帖子主图</label>
        <div class="layui-input-block">
            <input id="myfile" type="file" name="myfile" style="display: none;" onchange="uploadFileUtil('myfile','picurl')">
            <input type="text" id="picurl" name="picurl" lay-verify="required"
                   placeholder="网络图片请输入图片 如果是要上传，请点击后面的上传文件按钮"
                   value="${article.picurl}" class="layui-input" style="width: 80%;display: inline-block;"/>
            <span onclick="uploadFileUtilClick('myfile')" class="layui-btn"><i class="layui-icon"></i>上传文件</span>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">帖子分类</label>
        <div class="layui-input-block">
            <%-- <input type="text" id="type" name="type" lay-verify="required"
                    placeholder="请输入帖子分类"
                    value="${article.type}" class="layui-input"/>--%>
            <select id="type" name="type" class="layui-select">
                <c:forEach var="item" items="${sorttypeList}">
                    <option value="${item.sortname}"  ${item.sortname==article.type?'selected':''}>${item.sortname}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label" style="height: 325px;">帖子内容</label>
        <div class="layui-input-block">
            <%--<input type="text" id="content" name="content" lay-verify="required"
                   placeholder="请输入帖子内容"
                   value="${article.content}" class="layui-input"/>--%>
            <textarea id="content" name="content" lay-verify="content"
                      style="display: none;height: 250px;width: 100%;"></textarea>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">帖子作者</label>
        <div class="layui-input-block">
            <input type="text" id="author" name="author" lay-verify="required"
                   placeholder="请输入帖子作者"
                   value="${article.author}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">点击数</label>
        <div class="layui-input-block">
            <input type="text" id="hits" name="hits" lay-verify="required"
                   placeholder="请输入点击数"
                   value="${article.hits==null?0:article.hits}" class="layui-input"/>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">帖子状态</label>
        <div class="layui-input-block">
            <%--<input type="text" id="state" name="state" lay-verify="required"
                   placeholder="请输入帖子状态"
                   value="${article.state}" class="layui-input"/>--%>
            <select id="state" name="state" class="layui-select">
                <option value="正常"  ${"正常"==article.state?'selected':''}>正常</option>
                <option value="不显示"  ${"不显示"==article.state?'selected':''}>不显示</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item ">
        <label class="layui-form-label">备注</label>
        <div class="layui-input-block">
            <input type="text" id="intro" name="intro" lay-verify="required"
                   placeholder="请输入备注"
                   value="${article.intro==null?'无':article.intro}" class="layui-input"/>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="saveArticle">立即保存</button>
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
    }).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl', 'laydate', 'layedit'], function () {
        var form = layui.form, table = layui.table;
        layer = parent.layer === undefined ? layui.layer : parent.layer,
            laypage = layui.laypage, laydate = layui.laydate,
            $ = layui.jquery;
        nowTime = new Date().valueOf();


        //layui编辑器使用 开始
        var layedit = layui.layedit;
        layedit.set({
            uploadImage: {
                url: '${ctx}/layeditUploadFile' //接口url
                , type: 'post' //默认post
            }
        });
        var contentIndex = layedit.build('content'); //建立编辑器
        layedit.setContent(contentIndex, '${article.content} '); //赋值
        //编辑器内容同步到表单元素中
        form.verify({
            content: function (value) {
                return layedit.sync(contentIndex);
            }
        });
        //layui编辑器使用 结束


        //表单提交
        form.on("submit(saveArticle)", function (data) {
            //弹出loading
            var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
            var msg;
            var subURL = ctx + "/manage/saveArticle";//添加提交地址
            if (!isEmpty(data.field.id)) { //判断是添加还是修改
                subURL = ctx + "/manage/updateArticle";//修改提交地址
            }
            $.ajax({
                type: "post",
                url: subURL,
                data: data.field,
                dataType: "json",
                success: function (d) {
                    if (d.code == 0) {
                        msg = d.msg;
                        // 重置表单 saveArticleForm是表单的id
                        //$("#saveArticleForm")[0].reset();
                        //layui.form.render();
                        layer.msg(msg, {time: 3000, icon: 1}, function () {
                            var url = ctx + "/manage/articleList"; //返回列表页面
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