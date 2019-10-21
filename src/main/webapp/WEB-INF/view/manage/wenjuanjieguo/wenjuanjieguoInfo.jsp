<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>问卷结果详情查看</title>
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
            <td width="15%" align="center"><label>用户名</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.username}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案1</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a1}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案2</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a2}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案3</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a3}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案4</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a4}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案5</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a5}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案6</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a6}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案7</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a7}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案8</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a8}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案9</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a9}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>答案10</label></td>
            <td width="35%" class="orderValue"><label>${wenjuanjieguo.a10}</label></td>
        </tr>
        <tr>
            <td width="15%" align="center"><label>创建时间</label></td>
            <td width="35%" class="orderValue"><label><fmt:formatDate value="${wenjuanjieguo.createtime}"
                                                                      pattern="yyyy-MM-dd HH:mm:ss"/></label></td>
        </tr>
    </table>
</form>

</body>
</html>