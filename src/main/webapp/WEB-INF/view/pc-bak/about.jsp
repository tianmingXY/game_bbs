<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Game游戏贴吧-系统公告</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="${ctx}/static/layui/style/template.css" media="all">
    <script src="${ctx}/static/layui/layui.js"></script>
    <link href="${ctx}/static/index/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/index/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctx}/static/index/js/jquery-1.8.3.min.js"></script>
    <link href="${ctx}/static/index/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/static/index/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/static/index/js/nav.js"></script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->

<!--轮播图 start-->
<div class="layui-carousel" id="test1" style="margin-bottom: 20px;width: 1220px;margin: 0px auto;margin-bottom: 50px;">
    <div carousel-item style="width: 1220px;margin: 0px auto;">
        <div style="background-image: url('${ctx}/static/img/banner01.jpg');background-size:100% 100%; "></div>
        <div style="background-image: url('${ctx}/static/img/banner02.jpg');background-size:100% 100%; "></div>
    </div>
</div>
<!-- 条目中可以是任意内容，如：<img src=""> -->
<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '1220px;' //设置容器宽度
            , arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
<!--轮播图 end-->

<!--导航条 end-->
<div class="container mg-t-b">

    <div style="text-align: center;font-size: 30px;border-bottom: 3px solid #eee; padding-bottom: 20px;margin-bottom: 30px;">
        关于我们
    </div>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        Game游戏贴吧始建于2019年，是廉政法院的政务网站，是廉政法院在互联网上唯一的正式身份。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        Game游戏贴吧是人民群众了解和联系国家最高审判机关的重要窗口，承载着法治宣传、服务群众、接受监督等重要使命。自从2010年2月25日进行第一次改版以来，Game游戏贴吧立足服务审判工作，积极推进司法信息公开，促进法院与公众互动交流。随着应用需求拓展和信息技术进步，为了更好地促进司法为民、公正司法，Game游戏贴吧进行了改版。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        Game游戏贴吧以崭新的面貌喜接新年。新版Game游戏贴吧是司法公开的综合平台，突出法院重点工作，页面简洁友好，方便网民访问查询，并融合了廉政法院官方微博、微信和新闻客户端。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        新版Game游戏贴吧服务版块清晰。在首页重要位置，展示了审判流程、裁判文书和执行信息三大公开平台，并推出廉政法院诉讼服务网，方便当事人咨询查询、预约立案、网上阅卷、联系法官。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        在这里，你可以查询“全国法院失信被执行人名单”，让失信被执行人无处藏身；查询“被执行人信息”，方便诉讼执行；查询“法院公告”，了解庭审判决信息；通过“网上申诉信访平台”进行申诉，千里之外得到廉政法院法官的亲切接待。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        如果你是全国人大代表、政协委员，要对法院提出意见和建议，这里有专门的“全国人大代表、全国政协委员联络沟通平台”；如果你有什么话要和首席大法官交流，请你进入“院长信箱”留言；还可以登陆“给大法官留言”页面与各省高院的大法官沟通，他们都会给你及时解答；如果你发现法院工作人员的违纪违法行为，欢迎到“人民法院工作人员违纪违法举报中心”举报，清除法院系统的害群之马需要你的参与。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        新版Game游戏贴吧信息发布以公开为原则、不公开为例外，力争权威迅速。新增“重大案件”栏目，给审判以指导，给犯罪分子以警醒，给网民以释法答疑。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        新年的钟声已经敲响。“全面推进依法治国，用法治保障人民权益、维护社会公平正义、促进国家发展”，这是习近平总书记在新年贺词中对全国人民提出的希望。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        “为将廉政法院建成世界上最透明的最高法院，将人民法院建成世界上最透明的法院而不懈努力”，这是廉政法院院长周强在Game游戏贴吧改版开通仪式上为我们设定的目标。
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px;">
        Game游戏贴吧改版是新的起点、新的契机，在新的一年里，欢迎你的监督，倾听你的呼声，满足你的期待。我们将在应用中不断改进和提高，逐步完善相关信息服务，进一步提升网站服务的针对性和实用性，努力让广大群众在方便快捷的司法信息服务中更加真切地感受司法文明和司法关怀。Game游戏贴吧将与微博、微信、新闻客户端共同发展，积极推进司法公开，满足人民群众的司法需求，提升司法公信力！
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; text-align: right;">
        ——Game游戏贴吧站编辑部
    </p>
    <p style="margin-top: 0px; margin-bottom: 10px; padding: 0px; text-align: right;">
        2019年5月20日
    </p>
    <p>
        <br/>
    </p>
</div>
<style>
    .container p{
        font-size: 15px;
        text-indent: 2em;
    }
</style>

<jsp:include page="foot.jsp"/>

<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

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
</body>
</html>