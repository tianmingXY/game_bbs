<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>饼图分析</title>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
</head>
<body>
<div id="echartsPie" style="width: 800px;height:400px;margin: 50px auto;"></div>
<script type="text/javascript">
    var echartsPie;
    var json = [
        <c:forEach items="${mapList}" var="item" varStatus="ss">
            {value: ${item.nums}, name: '${item.result}'}<c:if test="${!ss.last}">,</c:if>
        </c:forEach>
    ];
    var option = {
        title: {
            text: '抽查结果数据分布',
            subtext: '饼图分析',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} "
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: [
                <c:forEach items="${mapList}" var="item" varStatus="ss">
                     '${item.result}'<c:if test="${!ss.last}">,</c:if>
                </c:forEach>
            ]
        },
        toolbox: {
            show: true,
            feature: {
                mark: {show: true},
                dataView: {show: true, readOnly: false},
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        calculable: true,
        series: [
            {
                name: '抽查结果',
                type: 'pie',
                radius: '55%',//饼图的半径大小
                center: ['50%', '60%'],//饼图的位置
                data: json
            }
        ]
    };

    echartsPie = echarts.init(document.getElementById('echartsPie'));
    $(function () {
        echartsPie.setOption(option);

    });
</script>
</body>
</html>
