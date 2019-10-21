<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>问卷详情查看</title>
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
<body>
<form id="addForm" class="my-form" method="post">
    <table class="layui-table" style="margin:20px auto;width: 80%;">
        <tr>
            <td width="15%" align="center"><label>题目</label></td>
            <td width="35%" class="orderValue"><label>${wenjuan.name}</label></td>
        </tr>
        <%--<tr>
            <td width="15%" align="center"><label>答案</label></td>
            <td width="35%" class="orderValue"><label>${wenjuan.daan}</label></td>
        </tr>--%>
        <tr>
            <td width="15%" align="center"><label>分数</label></td>
            <td width="35%" class="orderValue"><label>${wenjuan.fenshu}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>选项</label></td>
            <td width="35%" class="orderValue"><label>${wenjuan.xuanxiang}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>所属id</label></td>
            <td width="35%" class="orderValue"><label>${wenjuan.TId}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>创建时间</label></td>
            <td width="35%" class="orderValue"><label><fmt:formatDate value="${wenjuan.createtime}"
                                                                      pattern="yyyy-MM-dd HH:mm:ss"/></label></td>
        </tr>
    </table>
</form>

</body>
</html>