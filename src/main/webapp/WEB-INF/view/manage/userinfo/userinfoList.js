layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl'], function () {
    var form = layui.form, table = layui.table;
    layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;
//数据表格
    table.render({
        id: 'userinfoList',
        elem: '#userinfoList'
        , url: ctx + '/manage/queryUserinfoList' //数据接口
        , cellMinWidth: 80
        , limit: 10//每页默认数
        , limits: [10, 20, 30, 40]
        , cols: [[ //表头
            {type: 'checkbox'},
            {field: 'id', title: 'ID', width: 60, align: 'center', sort: true},
            {field: 'name', title: '姓名', width: 140, align: 'center'},
            {field: 'phone', title: '电话', width: 140, align: 'center'},
            {field: 'email', title: '邮箱', width: 140, align: 'center'},
            {field: 'picurl', title: '头像', templet: '#tableImg'},
            {field: 'money', title: '金额', width: 140, align: 'center'},
            {field: 'sex', title: '性别', width: 140, align: 'center'},
            {field: 'password', title: '密码', width: 140, align: 'center'},
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
                    url: ctx + '/manage/deleteUserinfo?id=' + data.id,
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
                            table.reload('userinfoList', {})
                        } else {
                            layer.msg("操作失败，请重试", {icon: 5});
                        }
                    }
                })
                layer.close(index);
            });
        } else if (obj.event === 'edit') {
            var url = ctx + "/manage/editUserinfo?id=" + data.id;//路径拼接
            location.href = url;
        } else if (obj.event === 'infoDetail') {
            var url = ctx + "/manage/userinfoInfo?id=" + data.id;
            layer.open({
                type: 2,
                btn: ['关闭'],
                btnAlign: 'c',
                title: "用户信息详情查看",
                skin: 'layui-layer-molv', //加上边框
                area: ['500px', '400px'], //宽高
                shadeClose: true,
                content: url
            });
        }


    });

//添加用户信息
    $(".addBtn").click(function () {
        var url = ctx + "/manage/addUserinfo";
        location.href = url;  //路径跳转
    })


//批量删除用户信息
    $(".batchDel").click(function () {
        var checkStatus = table.checkStatus('userinfoList')
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
                    url: 'deletesUserinfo?idsStr=' + idsStr,//接口地址
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
//重载表格
                            table.reload('userinfoList', {})
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
