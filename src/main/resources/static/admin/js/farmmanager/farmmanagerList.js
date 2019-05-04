layui.use(['layer', 'form', 'table'], function () {
    var layer = layui.layer,
        $ = layui.jquery,
        form = layui.form,
        table = layui.table,
        t;              //表格变量
    //监听工具条
    table.on('tool(farmmanagerList)', function (obj) {
        var data = obj.data;
        if (obj.event === 'edit') {
            var editIndex = layer.open({
                title: "编辑农田管理员",
                type: 2,
                content: "/admin/farm/manager/edit?id=" + data.id,
                success: function (layero, index) {
                    setTimeout(function () {
                        layer.tips('点击此处返回农田列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    }, 500);
                }
            });
            //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
            $(window).resize(function () {
                layer.full(editIndex);
            });
            layer.full(editIndex);
        }
        if (obj.event === "del") {
            layer.confirm("你确定要删除该农田管理员么？", {
                    skin: 'layui-layer-molv'
                    , closeBtn: 1,
                    icon: 3, title: '提示', btn: ['是的,我确定', '我再想想']
                },
                function () {
                    $.post("/admin/farm/manager/delete", {"id": data.id}, function (res) {
                        if (res.success) {
                            layer.msg("删除成功", {time: 1000}, function () {
                                table.reload('farmmanager-table', t);
                            });
                        } else {
                            layer.msg(res.message);
                        }
                    });
                },function(){
                    layer.closeAll("dialog");
                }
            )
        }
    });
    t = {
        elem: '#farmmanager-table',
        even: true,
        url: '/admin/farm/manager/list',
        method: 'post',
        page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
            layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'], //自定义分页布局
            //,curr: 5 //设定初始在第 5 页
            groups: 6, //只显示 1 个连续页码
            first: "首页", //显示首页
            last: "尾页", //显示尾页
            limits: [3, 10, 20, 30]
        },
        width: $(parent.window).width() - 223,
        cols: [[
            {type: 'checkbox'},
            /* {field:'id',        title: 'ID'  ,width: '4%' },*/
            {field: 'name', title: '农田名称', width: '16%'},
            {field: 'location', title: '地点', width: '16%'},
            {field: 'size', title: '面积(m2)', width: '8%'},
            {field: 'temperature', title: '温度(℃)', width: '8%'},
            {field: 'humidity', title: '湿度(%RH)', width: '8%'},
            {field: 'illumination', title: '光照(lux)', width: '8%'},
            {field: 'createDate', title: '创建时间', width: '14%'},
            /*{field: 'userId', title: '所属人', width: '10%',templet:'<div>{{d.user.nickName}}</div>'},*/
            // {field: 'remarks', title: '备注', width: '20%'},
            /*{field:'user',         title: '所属人',width:'6%'   ,templet:'<div>{{  d.user.nickName }}</div>'},*/
            {title: '操作', fixed: 'right', align: 'center', toolbar: '#farmmanagerBar'}
        ]]/*,
        done: function () {
            $("[data-field='id']").css('display','none');
        }*/
    }
    table.render(t);

    var active = {
        addFarm: function () {
            addIndex = layer.open({
                title: "添加农田管理员",
                type: 2,
                content: "/admin/farm/manager/add",
                success: function (layero, addIndex) {
                    setTimeout(function () {
                        layer.tips('点击此处返回农田管理员列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    }, 500);
                }
            });
            //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
            $(window).resize(function () {
                layer.full(addIndex);
            });
            layer.full(addIndex);
        },
        //批量删除
        deleteSome: function () {
            var checkStatus = table.checkStatus('farmmanager-table'),
                data = checkStatus.data;
            if (data.length > 0) {
                console.log(JSON.stringify(data));
                layer.confirm("你确定要删除这些农田管理员么？", {
                        skin: 'layui-layer-molv'
                        , closeBtn: 1,
                        icon: 3, title: '提示', btn: ['是的,我确定', '我再想想']
                    },
                    function () {
                        var deleteindex = layer.msg('删除中，请稍候', {icon: 16, time: false, shade: 0.8});
                        $.ajax({
                            type: "POST",
                            url: "/admin/farm/manager/deleteSome",
                            dataType: "json",
                            contentType: "application/json",
                            data: JSON.stringify(data),
                            success: function (res) {
                                layer.close(deleteindex);
                                if (res.success) {
                                    layer.msg("删除成功", {time: 1000}, function () {
                                        table.reload('farmmanager-table', t);
                                    });
                                } else {
                                    layer.msg(res.message);
                                }
                            }
                        });
                    }
                )
            } else {
                layer.msg("请选择需要删除的农田管理员", {time: 1000});
            }
        }
    };
    $('.layui-inline .layui-btn').on('click', function () {
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });
    //搜索
    form.on("submit(searchForm)", function (data) {
        table.reload('farmmanager-table', {
            page: {curr: 1},
            where: data.field
        });
        return false;
    });
});