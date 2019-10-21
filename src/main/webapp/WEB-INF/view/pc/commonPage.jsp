<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>


<%--<div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-1"><a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0">上一页</a><span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span><a href="javascript:;" data-page="2">2</a><a href="javascript:;" data-page="3">3</a><a href="javascript:;" data-page="4">4</a><a href="javascript:;" data-page="5">5</a><a href="javascript:;" class="layui-laypage-next" data-page="2">下一页</a></div>--%>
<div style="text-align: center;margin: 10px auto;">

    <div class="layui-box layui-laypage layui-laypage-default tqm-page" id="layui-laypage-1">
        <%--首页--%>
        <a href="${ctx}/${pathURL}?p=1">首页</a>
        <%--判断是否有上一页--%>
        <c:if test="${currentPage>1}">
            <a href="${ctx}/${pathURL}?p=${currentPage-1}">上一页</a>
        </c:if>

        <c:forEach begin="${currentPage-3>0?(currentPage-3):1}"
                   end="${currentPage+3<totalPage?(currentPage+3):totalPage}" step="1" var="k">
            <c:if test="${currentPage==k}">
                <a class="layui-laypage-curr  layui-disabled"
                   style="color: green;font-weight: bold;font-size: 25px;">${k}</a>
            </c:if>
            <c:if test="${currentPage!=k}">
                <a href="${ctx}/${pathURL}?p=${k}">${k}</a>
            </c:if>
        </c:forEach>

        <%--判断是否有下一页--%>
        <c:if test="${currentPage<totalPage}">
            <a href="${ctx}/${pathURL}?p=${currentPage+1}">&raquo;</a>
        </c:if>
        <%--尾页--%>
        <a href="${ctx}/${pathURL}?p=${totalPage}">尾页</a>
        <span>共${totalNums}条 &nbsp;&nbsp; ${totalPage}页</span>
    </div>
</div>
<style>
    /*鼠标为手型*/
    .tqm-page a, .tqm-page span {
        cursor: pointer;
        padding: 8px 20px;
        font-size: 20px;
    }
</style>


