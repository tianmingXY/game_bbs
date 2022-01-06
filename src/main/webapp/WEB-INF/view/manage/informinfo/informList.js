layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl'], function () {
    var form = layui.form, table = layui.table;
    layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;
    //数据表格
    table.render({
        id: 'informList',
        elem: '#informList'
        , url: ctx + '/manage/queryInformList' //数据接口
        , cellMinWidth: 80
        , limit: 10//每页默认数
        , limits: [10, 20, 30, 40]
        , cols: [[ //表头
            {type: 'checkbox'},
            {field: 'id', title: 'ID', width: 60, align: 'center', sort: true},
            {field: 'title', title: '通知标题', width: 140, align: 'center'},
            {field: 'content', title: '通知内容', width: 140, align: 'center'},
            {
                field: 'createtime',
                title: '创建时间',
                templet: '<div>{{ formatTime(d.createtime,"yyyy-MM-dd hh:mm:ss")}}</div>'
            },
            {title: '操作', toolbar: '#barEdit'}
        ]]
        , page: true //开启分页
    });
    //监听工具条
    table.on('tool(test)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('真的删除行么?', function (index) {
                $.ajax({
                    url: ctx + '/manage/deleteInform?id=' + data.id,
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
                            table.reload('informList', {})
                        } else {
                            layer.msg("操作失败，请重试", {icon: 5});
                        }
                    }
                })
                layer.close(index);
            });
        } else if (obj.event === 'edit') {
            var url = ctx + "/manage/editInform?id=" + data.id;//这里content是一个普通的String
            location.href = url;
        } else if (obj.event === 'lookDetail') {
            var title01 = data.title;//这里content是一个普通的String
            var content01 = data.content;//这里content是一个普通的String
            layer.open({
                type: 1,
                btn: ['关闭'],
                btnAlign: 'c',
                title: title01,
                skin: 'layui-layer-molv', //加上边框
                area: ['500px', '400px'], //宽高
                shadeClose: true,
                content: content01
            });
        }
    });

    //添加管理员
    $(".informAdd_btn").click(function () {
        var url = ctx + "/manage/addInform"; //这里content是一个普通的String
        location.href = url;
    })


    //批量删除角色
    $(".batchDel").click(function () {
        var checkStatus = table.checkStatus('informList')
            , data = checkStatus.data, idsStr = '';
        //   layer.alert(JSON.stringify(data));
        if (data.length > 0) {
            $.each(data, function (n, value) {
                idsStr += value.id + ',';
            });
            idsStr = idsStr.substring(0, idsStr.length - 1);
            layer.confirm('真的要删除<strong>' + data.length + '</strong>条数据吗？', function (index) {
                //调用删除接口
                $.ajax({
                    url: 'deletesInform?idsStr=' + idsStr,//接口地址
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
                            //重载表格
                            table.reload('informList', {})
                        } else {
                            layer.msg("删除错误，稍后再试！", {icon: 5});
                        }
                    }
                })
                layer.close(index);
            });
        } else {
            layer.msg("请选择要操作的数据！");
        }

    })

})
