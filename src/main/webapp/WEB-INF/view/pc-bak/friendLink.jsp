<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="linksbox" id="link">
    <div class="txtlisttit linktit"><span>友情链接</span>
        <div class="tab-nav j-tab-nav"><a href="javascript:void(0);" class="current">省内各州市网站</a> <a
                href="javascript:void(0);" class="">州内各县市网站</a> <a href="javascript:void(0);" class="">党群部门</a> <a
                href="javascript:void(0);" class="">政府部门</a> <a href="javascript:void(0);" class="">乡镇部门</a></div>
    </div>
    <div class="listcon tab-con">
        <div class="j-tab-con">
            <div class="tab-con-item linkcon" style="display: block;">
                <ul class="linkslist">
                    <c:forEach items="${linkurlList}" var="item" varStatus="ss">
                        <li><a href="${item.url}" target="_blank">${item.name}</a></li>
                    </c:forEach>
                    <%--<li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市市政府官方政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>
                    <li><a href="#" target="_blank">市政府官方</a></li>--%>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="tab-con-item linkcon" style="display: none;">
                <ul class="linkslist">
                    <c:forEach items="${linkurlList}" var="item" varStatus="ss">
                        <li><a href="${item.url}" target="_blank">${item.name}</a></li>
                    </c:forEach>
                    <%--<li><a href="#" target="_blank">市政府官方</a></li>--%>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="tab-con-item linkcon" style="display: none;">
                <ul class="linkslist">
                    <c:forEach items="${linkurlList}" var="item" varStatus="ss">
                        <li><a href="${item.url}" target="_blank">${item.name}</a></li>
                    </c:forEach>
                    <%--<li><a href="#" target="_blank">市政府官方</a></li>--%>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="tab-con-item linkcon" style="display: none;">
                <ul class="linkslist">
                    <c:forEach items="${linkurlList}" var="item" varStatus="ss">
                        <li><a href="${item.url}" target="_blank">${item.name}</a></li>
                    </c:forEach>
                    <%--<li><a href="#" target="_blank">市政府官方</a></li>--%>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="tab-con-item linkcon" style="display: none;">
                <ul class="linkslist">
                    <c:forEach items="${linkurlList}" var="item" varStatus="ss">
                        <li><a href="${item.url}" target="_blank">${item.name}</a></li>
                    </c:forEach>
                    <%--<li><a href="#" target="_blank">市政府官方</a></li>--%>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>