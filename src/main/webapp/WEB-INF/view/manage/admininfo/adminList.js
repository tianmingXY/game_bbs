layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl'], function () {
    var form = layui.form, table = layui.table;
    layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;
    //数据表格
    table.render({
        id: 'adminList',
        elem: '#adminList'
        , url: ctx + '/manage/queryAdminList' //数据接口
        , cellMinWidth: 80
        , limit: 10//每页默认数
        , limits: [10, 20, 30, 40]
        , cols: [[ //表头
            {type: 'checkbox'},
            {field: 'id', title: 'ID', width: 60, align: 'center', sort: true},
            {field: 'adminname', title: '管理员用户名', width: 140, align: 'center'},
            {field: 'admineamil', title: '管理员邮箱', width: 140, align: 'center'},
            {field: 'adminphone', title: '管理员电话', width: 140, align: 'center'},
            {field: 'role', title: '角色类型', width: 140, align: 'center'},
            {field: 'status', title: '状态', templet: '#statusTpl'},
            {field: 'createtime', title: '创建时间', templet: '<div>{{ formatTime(d.createtime,"yyyy-MM-dd hh:mm:ss")}}</div>'},
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
                    url: ctx + '/manage/deleteAdmin?id=' + data.id,
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
                            table.reload('adminList', {})
                        } else {
                            layer.msg("操作失败，请重试", {icon: 5});
                        }
                    }
                })
                layer.close(index);
            });
        } else if (obj.event === 'edit') {
            var url = ctx + "/manage/editAdmin?id=" + data.id;//这里content是一个普通的String
            location.href = url;
        }
    });

    //添加管理员
    $(".adminAdd_btn").click(function () {
        var url = ctx + "/manage/addAdmin"; //这里content是一个普通的String
        location.href = url;
    })


    //批量删除角色
    $(".batchDel").click(function () {
        var checkStatus = table.checkStatus('adminList')
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
                    url: 'deletesAdmin?idsStr=' + idsStr,//接口地址
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
                            //重载表格
                            table.reload('adminList', {})
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
