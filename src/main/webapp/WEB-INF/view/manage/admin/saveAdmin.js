var $;
var $form;
var form;
layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl', 'laydate'], function () {
    var form = layui.form, table = layui.table;
    layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage, laydate = layui.laydate,
        $ = layui.jquery;
    nowTime = new Date().valueOf();
    //表单提交
    form.on("submit(saveAdmin)", function (data) {
        //弹出loading
        var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
        var msg;
        var subURL = ctx + "/manage/saveAdmin";//添加提交地址
        if (!isEmpty(data.field.id)) { //判断是添加还是修改
            subURL = ctx + "/manage/updateAdmin";//修改提交地址
        }
        $.ajax({
            type: "post",
            url: subURL,
            data: data.field,
            dataType: "json",
            success: function (d) {
                if (d.code == 0) {
                    msg = d.msg;
                    // 重置表单 saveAdminForm是表单的id
                    //$("#saveAdminForm")[0].reset();
                    //layui.form.render();
                    layer.msg(msg, {time: 1500, icon: 1}, function () {
                        var url = ctx + "/manage/adminList"; //返回列表页面
                        window.location.href = url;
                    });
                } else {
                    msg = d.msg;
                    layer.alert(msg);
                }
            }
        });
        return false;
    })

});

