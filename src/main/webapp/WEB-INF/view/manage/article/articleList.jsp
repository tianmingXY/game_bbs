<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>帖子列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/static/css/font_eolqem241z66flxr.css" media="all"/>
    <link rel="stylesheet" href="${ctx}/static/css/list.css" media="all"/>
    <script>
        var ctx = "${ctx}"; //js全局项目路径
    </script>
    <style type="text/css">
    </style>
</head>
<body class="childrenBody">
<blockquote class="layui-elem-quote list_search">
    <div class="layui-inline">
        <a class="layui-btn layui-btn-normal addBtn"><i class="layui-icon">&#xe608;</i> 添加帖子</a>
    </div>
    <div class="layui-inline">
        <a class="layui-btn layui-btn-danger batchDel"><i class="layui-icon">&#xe640;</i>批量删除</a>
    </div>
    <!--搜索表单开始-->
    <div class="layui-inline layui-layout-right">
        <form class="layui-form">
            <div>
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" id="keyword" name="keyword" value="" placeholder="请输入关键字"
                               class="layui-input search_input">
                    </div>
                    <a class="layui-btn search_btn" lay-submit="" data-type="search"
                       lay-filter="search">查询</a>
                </div>
            </div>
        </form>
    </div>
    <!--搜索表单结束-->
    <div class="layui-inline">
        <div class="layui-form-mid layui-word-aux"></div>
    </div>
</blockquote>
<!-- 数据表格 -->
<table id="articleList" lay-filter="test"></table>
<script type="text/javascript" src="${ctx}/static/layui/layui.js"></script>

<script type="text/javascript" src="${ctx}/static/js/common.js"></script>
<script type="text/javascript" src="${ctx}/view/manage/article/articleList.js"></script>
<script type="text/html" id="barEdit">
    <a class="layui-btn layui-btn-warm  layui-btn-xs" lay-event="infoDetail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/html" id="tableImg">
    <%--图片显示模板--%>
    <img src="{{d.picurl}}" style="height:48px;width:48px;line-height:48px!important;"/>
</script>
<style>
    .layui-table-cell {
        height: 36px;
        line-height: 36px;
    }
</style>
</body>
</html>