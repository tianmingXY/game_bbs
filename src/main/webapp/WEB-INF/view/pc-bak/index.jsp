<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <base href="${ctx}/"/>
    <title>Game游戏贴吧</title>
    <link href="${ctx}/static/index/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/index/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctx}/static/index/js/jquery-1.8.3.min.js"></script>
    <link href="${ctx}/static/index/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/static/index/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/static/index/js/nav.js"></script>
    <script>
        jQuery(function ($) {
            $('#newspic').slideBox({
                duration: 0.3,//滚动持续时间，单位：秒
                easing: 'linear',//swing,linear//滚动特效
                delay: 5,//滚动延迟时间，单位：秒
                hideClickBar: false,//不自动隐藏点选按键
                clickBarRadius: 10
            });
        });
    </script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->


<div class="container container_col">
    <div class="news-notice">
        <div class="indnews">
            <div class="news-pic">
                <div id="newspic" class="slideBox">
                    <ul class="items">
                        <li><a href="#" title="本会召开第一届第一次主任会议和委员会议1"><img src="${ctx}/static/index/upload/newsimg.jpg"></a>
                        </li>
                        <li><a href="#" title="本会召开第一届第一次主任会议和委员会议2"><img src="${ctx}/static/index/upload/newsimg.jpg"></a>
                        </li>
                        <li><a href="#" title="本会召开第一届第一次主任会议和委员会议3"><img src="${ctx}/static/index/upload/newsimg.jpg"></a>
                        </li>
                        <li><a href="#" title="本会召开第一届第一次主任会议和委员会议4"><img src="${ctx}/static/index/upload/newsimg.jpg"></a>
                        </li>
                        <li><a href="#" title="本会召开第一届第一次主任会议和委员会议5"><img src="${ctx}/static/index/upload/newsimg.jpg"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="news-txt" id="news">
            <div class="news-title">
                <div class="news-name tab-nav j-tab-nav">
                    <a href="javascript:void(0);" class="current">本院动态<i></i></a>
                    <a href="javascript:void(0);" class="">领导活动<i></i></a>
                    <a href="javascript:void(0);" class="">重要发文<i></i></a>
                    <a href="javascript:void(0);" class="">通知公告<i></i></a>
                </div>
                <a href="#" class="more">更多 >></a>
            </div>
            <div class="tab-con">
                <div class="j-tab-con">
                    <div class="tab-con-item news-con" style="display: block;">

                        <div class="hotnews">
                            <h1>1本会召开第一届第一次主任会议和委员会议</h1>
                            <div class="hotcon"><a href="#">2017年2月20日，中卫仲裁委员会召开了中卫仲裁委员会第一届第一次主任会议和第一届第一次委员会议。会议由中卫市委常委、副市长、中卫仲裁委员会主任袁诗鸣主持。副主任李斌、郝正智、姜丽丽，委员盛建宁、张学文、俞正荣、李宝庆、王占强等出席了会议...</a>
                            </div>
                        </div>
                        <ul class="newslist">
                            <c:forEach items="${beanDataList}" var="item" varStatus="ss">
                                <c:if test="${ss.count<=5}">
                                    <li><a href="${ctx}/pc/detail?id=${item.id}">${item.title}</a><span><fmt:formatDate
                                            value="${item.createtime}" pattern="MM-dd"/></span></li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="tab-con-item news-con" style="display: none;">
                        <div class="hotnews">
                            <h1>2本会召开第一届第一次主任会议和委员会议</h1>
                            <div class="hotcon"><a href="#">2017年2月20日，中卫仲裁委员会召开了中卫仲裁委员会第一届第一次主任会议和第一届第一次委员会议。会议由中卫市委常委、副市长、中卫仲裁委员会主任袁诗鸣主持。副主任李斌、郝正智、姜丽丽，委员盛建宁、张学文、俞正荣、李宝庆、王占强等出席了会议...</a>
                            </div>
                        </div>
                        <ul class="newslist">
                            <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                            <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                            <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                            <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                            <li><a href="#">"一带一路"仲裁发展交流会在我市召开</a><span>09-10</span></li>
                        </ul>
                    </div>
                    <div class="tab-con-item news-con" style="display: none;">
                        <div class="hotnews">
                            <h1>3本会召开第一届第一次主任会议和委员会议</h1>
                            <div class="hotcon"><a href="#">2017年2月20日，中卫仲裁委员会召开了中卫仲裁委员会第一届第一次主任会议和第一届第一次委员会议。会议由中卫市委常委、副市长、中卫仲裁委员会主任袁诗鸣主持。副主任李斌、郝正智、姜丽丽，委员盛建宁、张学文、俞正荣、李宝庆、王占强等出席了会议...</a>
                            </div>
                        </div>
                        <ul class="newslist">
                            <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                            <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                            <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                            <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                            <li><a href="#">"一带一路"仲裁发展交流会在我市召开</a><span>09-10</span></li>
                        </ul>
                    </div>
                    <div class="tab-con-item news-con" style="display: none;">
                        <div class="hotnews">
                            <h1>4本会召开第一届第一次主任会议和委员会议</h1>
                            <div class="hotcon"><a href="#">2017年2月20日，中卫仲裁委员会召开了中卫仲裁委员会第一届第一次主任会议和第一届第一次委员会议。会议由中卫市委常委、副市长、中卫仲裁委员会主任袁诗鸣主持。副主任李斌、郝正智、姜丽丽，委员盛建宁、张学文、俞正荣、李宝庆、王占强等出席了会议...</a>
                            </div>
                        </div>
                        <ul class="newslist">
                            <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                            <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                            <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                            <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                            <li><a href="#">"一带一路"仲裁发展交流会在我市召开</a><span>09-10</span></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="fwzn">
        <div class="tit">服<br/>
            务<br/>
            指<br/>
            南
        </div>
        <div class="iconlist"><a href="#" class="icon1">
            <div class="pic"><img src="${ctx}/static/index/images/zhinan01.png"/></div>
            <p>仲裁须知</p>
        </a>
            <a href="#" class="icon1">
                <div class="pic"><img src="${ctx}/static/index/images/zhinan06.png"/></div>
                <p>受案范围</p>
            </a>
            <a href="#" class="icon2">
                <div class="pic"><img src="${ctx}/static/index/images/zhinan02.png"/></div>
                <p>立案提交材料</p>
            </a> <a href="#" class="icon3">
                <div class="pic"><img src="${ctx}/static/index/images/zhinan03.png"/></div>
                <p>财产及证据保全</p>
            </a> <a href="#" class="icon5">
                <div class="pic"><img src="${ctx}/static/index/images/zhinan05.png"/></div>
                <p>仲裁程序</p>
            </a> <a href="#" class="icon6">
                <div class="pic"><img src="${ctx}/static/index/images/zhinan04.png"/></div>
                <p>仲裁条款</p>
            </a> <a href="#" class="icon7">
                <div class="pic"><img src="${ctx}/static/index/images/zhinan07.png"/></div>
                <p>常用文书</p>
            </a></div>
    </div>
    <div class="col-box">
        <div class="news-txt col-3">
            <div class="news-title">
                <div class="name">仲裁规则<i></i></div>
                <div class="smalllist"><a href="#">仲裁规则</a> <a href="#">法律法规</a> <a href="#">统计数据</a></div>
                <a href="#" class="more">更多 >></a></div>
            <div class="news-con">
                <ul class="newslist">
                    <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                    <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                    <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">“一带一路”仲裁发展交流会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                </ul>
            </div>
        </div>
        <div class="news-txt col-3">
            <div class="news-title">
                <div class="name">仲裁员<i></i></div>
                <div class="smalllist"><a href="#">仲裁员名册</a> <a href="#">仲裁员守则</a></div>
                <a href="#" class="more">更多 >></a></div>
            <div class="news-con">
                <ul class="newslist">
                    <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                    <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                    <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">“一带一路”仲裁发展交流会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                </ul>
            </div>
        </div>
        <div class="news-txt col-3 last">
            <div class="news-title">
                <div class="name">法律法规<i></i></div>
                <a href="#" class="more">更多 >></a></div>
            <div class="news-con">
                <ul class="newslist">
                    <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                    <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                    <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">“一带一路”仲裁发展交流会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                </ul>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-box">
        <div class="col-2-l">
            <div class="tit">在线服务</div>
            <div class="list">
                <div class="ct">
                    <a href="#" class="color_bj color-1">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw1.png"/></div>
                        <p>注册登记</p></a>
                </div>
                <div class="ct">
                    <a href="#" class="color_bj color-2">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw2.png"/></div>
                        <p>在线立案</p></a>
                </div>
                <div class="ct">
                    <a href="#" class="color_bj color-3">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw3.png"/></div>
                        <p>在线审批</p></a>
                </div>
                <div class="ct">
                    <a href="#" class="color_bj color-4">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw4.png"/></div>
                        <p>在线咨询</p></a>
                </div>
                <div class="ct">
                    <a href="#" class="color_bj color-5">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw5.png"/></div>
                        <p>在线调解</p></a>
                </div>
                <div class="ct">
                    <a href="#" class="color_bj color-6">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw6.png"/></div>
                        <p>在线查询</p></a>
                </div>
                <div class="ct last">
                    <a href="#" class="color_bj color-7">
                        <div class="pic"><img src="${ctx}/static/index/images/zxfw7.png"/></div>
                        <p>电子送达</p></a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>


    </div>
    <div class="col-box">
        <div class="col-2-r">
            <div class="tit">格式合同</div>
            <div class="tit" style="margin-left:307px;">示范条款</div>
            <div class="tit" style="margin-left:420px; background: url(images/jsq2.png) 0 9px no-repeat;">费用速算</div>
            <div class="clearfix"></div>
            <div class="sfbox">
                <div class="gsht">
                    <ul class="newslist htlist">
                        <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                        <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                        <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                        <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                        <li><a href="#">"一带一路"仲裁发展交流会在我市召开</a><span>09-10</span></li>
                        <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                    </ul>
                </div>
                <div class="sftxt">
                    <div class="info">将民商事案子发展到仲裁机构办理有四种办法：<br/>
                        ①在合同中写上以上条款若发生纠纷提交仲裁机构仲裁的条款；<br/>
                        ②后来补充仲裁协议；<br/>
                        ③临时邀请仲裁；<br/>
                        ④在签订合同的同时就约定先予仲裁。<br/>
                        其中第一种是最基本方式。<br/>
                        根据《中华人民共和国仲裁法》和《最高人民法院关于适用（中华人民共和国仲裁法）》相关规定中华人民共和国仲裁法中华人民共和国仲裁法中华人民共和国仲裁法中华人民共和国仲裁法中华人民共和国仲裁法
                    </div>
                    <a href="#">[查看详情]</a></div>
                <div class="jisuan">
                    <div class="jsbox"><span>争议金额</span>
                        <div class="jsq">
                            <input type="text" class="ipt-jsq" placeholder="输入金额..."/>
                            <a href="javascript:;">计算</a></div>
                    </div>
                    <div class="jsjg">
                        <div class="tab">案件受理费：<span>0.00元</span></div>
                        <div class="tab">案件处理费：<span>0.00元</span></div>
                        <div class="tab last">总计：<span>0.00元</span></div>
                    </div>
                    <div class="smtxt">仅供参考，计算结果以立案室的计算为准</div>
                    <div class="xxlinks"><a href="#" class="fl">案件受理费标准>></a> <a href="#" class="fr">案件处理费标准>></a></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>


    </div>
    <%--友情链接 start--%>
    <jsp:include page="friendLink.jsp"/>
    <%--友情链接 end--%>
</div>
<div class="foot">
    <div class="ft-menu">
        <div class="container">
            <div class="menu">
                <dl>
                    <dt>首页</dt>
                    <dd>
                        <a href="#"></a>
                    </dd>
                </dl>
                <dl>
                    <dt>关于我们</dt>
                    <dd>
                        <a href="#">关于中仲</a>
                    </dd>
                </dl>
                <dl>
                    <dt>仲裁动态</dt>
                    <dd>
                        <a href="#">仲裁动态</a>
                    </dd>
                </dl>
                <dl>
                    <dt>仲裁员</dt>
                    <dd>
                        <a href="#">仲裁员名册</a>
                        <a href="#">仲裁员守则</a>
                    </dd>
                </dl>
                <dl>
                    <dt>法律制度</dt>
                    <dd>
                        <a href="#">仲裁规则</a>
                        <a href="#">法律法规</a>
                        <a href="#">统计数据</a>
                    </dd>
                </dl>
                <dl>
                    <dt>在线服务</dt>
                    <dd>
                        <a href="#">在线咨询</a>
                        <a href="#">立案申请</a>
                    </dd>
                </dl>
                <dl>
                    <dd class="last">
                        <p>联系地址：中国北京123456789号（市财政局后楼四楼）</p>
                        <p>邮政编码：123456</p>
                        <p>咨询电话：0000-123456</p>
                        <p>电子邮件：123456@163.com</p>
                        <p>网　　址：www.123456.com</p>
                    </dd>
                </dl>
                <div class="clearfix"></div>
            </div>
            <div class="ewm">
                <img src="${ctx}/static/index/images/ewm.png"/>
                <p>扫码关注公众号</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="cop">
        <div class="container">Copyright © 2019 - 2019 www.xxxxx.com All Rights Reserved 苏ICP备123456789号-4
            苏公网安备123456789号
        </div>
    </div>
</div>
<script src="${ctx}/static/index/js/Tabs.js"></script>
<script type="text/javascript">
    $(function () {
        $("#link").rTabs({
            bind: 'hover',
            animation: 'fadein',
            auto: false
        });
    })
</script>
<script type="text/javascript">
    $(function () {
        $("#news").rTabs({
            bind: 'hover',
            animation: 'fadein',
            auto: false
        });
    })
</script>

</body>
</html>
