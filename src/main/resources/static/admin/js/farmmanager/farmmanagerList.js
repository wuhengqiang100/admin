layui.use(['layer', 'form', 'table'], function () {
    var layer = layui.layer,
        $ = layui.jquery,
        form = layui.form,
        table = layui.table,
        t;              //表格变量
    //监听工具条
    table.on('tool(farmManagerList)', function (obj) {
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
                                table.reload('farmManager-table', t);
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
        elem: '#farmManager-table',
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
            {field: 'farmOwnNickName', title: '农田主昵称', width: '16%'},
            {field: 'farmManagerNickName', title: '农田管理员昵称', width: '16%'},
            {field: 'farmManagerType', title: '管理员类别', width: '16%'},
            {field: 'updateDate', title: '更新时间', width: '20%'},
            {title: '操作', fixed: 'right', align: 'center', toolbar: '#farmManagerBar'}
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
        }
    };
    $('.layui-inline .layui-btn').on('click', function () {
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });
    //搜索
    form.on("submit(searchForm)", function (data) {
        table.reload('farmManager-table', {
            page: {curr: 1},
            where: data.field
        });
        return false;
    });
});