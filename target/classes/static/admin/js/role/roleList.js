layui.use(['layer','form','table'], function() {
    var layer = layui.layer,
        $ = layui.jquery,
        form = layui.form,
        table = layui.table,
        t;              //表格变量
    //监听工具条
    table.on('tool(roleList)', function(obj){
        var data = obj.data;
        if(obj.event === 'edit'){
            var editIndex = layer.open({
                title : "编辑策略",
                type : 2,
                content : "/admin/system/role/edit?id="+data.id,
                success : function(layero, index){
                    setTimeout(function(){
                        layer.tips('点击此处返回策略列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    },500);
                }
            });
            //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
            $(window).resize(function(){
                layer.full(editIndex);
            });
            layer.full(editIndex);
        }
        if(obj.event === "del"){
            layer.confirm("你确定要删除该策略么？",{ skin: 'layui-layer-molv'
                    ,closeBtn: 1,
                    icon: 3, title: '提示',btn:['是的,我确定','我再想想']},
                function(){
                    $.post("/admin/system/role/delete",{"id":data.id},function (res){
                        if(res.success){
                            layer.msg("删除成功",{time: 1000},function(){
                                table.reload('role-table', t);
                            });
                        }else{
                            layer.alert(res.message, {
                                skin: 'layui-layer-molv' //样式类名
                                , closeBtn: 0
                            });

                        }
                    });
                }
            )
        }
    });
    t = {
        elem: '#role-table',
        even: true,
        url:'/admin/system/role/list',
        method:'post',
        page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
            layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'], //自定义分页布局
            //,curr: 5 //设定初始在第 5 页
            groups: 6, //只显示 1 个连续页码
            first: "首页", //显示首页
            last: "尾页", //显示尾页
            limits:[3,10, 20, 30]
        },
        width: $(parent.window).width()-223,
        cols: [[
            {type:'checkbox'},
           /* {field:'id',        title: 'ID'   },*/
            {field:'name',        title: '策略名称',width:'8%'   },
            {field:'identity',    title: '请求身份',width:'9%'   },
            {field:'requestPlace',title: '请求地点',width:'7%'   },
            {field:'tel',         title: '手机号码',width:'15%'   },
            {field:'email',       title: '邮件地址',width:'15%'   },
            {field:'age',         title: '年龄',width:'8%'   },
            /*{field:'createUser',  title: '创建人',width:'14%',templet:'<div>{{  d.createUser.nickName }}</div>'},*/
            {field:'updateUser',  title: '修改人',width:'8%',templet:'<div>{{  d.updateUser.nickName }}</div>'},
            /*{field:'createDate',  title: '创建时间',    width:'10%',templet:'<div>{{ layui.laytpl.toDateString(d.createDate) }}</div>',unresize:
             true}, //单元格内容水平居中*/
            {field:'updateDate',  title: '修改时间',    width:'12%',templet:'<div>{{ layui.laytpl.toDateString(d.updateDate) }}</div>',unresize: true}, //单元格内容水平居中
            {title: '操作',fixed: 'right',    align: 'center',toolbar: '#roleBar'}
        ]]/*,
        done: function () {
            $("[data-field='id']").css('display','none');
        }*/
    };
    table.render(t);
    var active={
        addUser : function(){
            addIndex = layer.open({
                title : "添加策略",
                type : 2,
                content : "/admin/system/role/add",
                success : function(layero, addIndex){
                    setTimeout(function(){
                        layer.tips('点击此处返回策略列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    },500);
                }
            });
            //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
            $(window).resize(function(){
                layer.full(addIndex);
            });
            layer.full(addIndex);
        },
        shareRole : function(){
            addIndex = layer.open({
                title : "分配令牌",
                type : 2,
                content : "/admin/system/role/share",
                success : function(layero, addIndex){
                    setTimeout(function(){
                        layer.tips('点击此处返回策略列表', '.layui-layer-setwin .layui-layer-close', {
                            tips: 3
                        });
                    },500);
                }
            });
            //改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
            $(window).resize(function(){
                layer.full(addIndex);
            });
            layer.full(addIndex);
        },
        //批量删除
        deleteSome : function(){
            var checkStatus = table.checkStatus('role-table'),
                data = checkStatus.data;
            if(data.length > 0){
                console.log(JSON.stringify(data));
                layer.confirm("你确定要删除这些策略么？",{ skin: 'layui-layer-molv'
                        ,closeBtn: 1,
                        icon: 3, title: '提示',btn:['是的,我确定','我再想想']},
                    function(){
                        var deleteindex = layer.msg('删除中，请稍候',{icon: 16,time:false,shade:0.8});
                        $.ajax({
                            type:"POST",
                            url:"/admin/system/role/deleteSome",
                            dataType:"json",
                            contentType:"application/json",
                            data:JSON.stringify(data),
                            success:function(res){
                                layer.close(deleteindex);
                                if(res.success){
                                    layer.msg("删除成功",{time: 1000},function(){
                                        table.reload('role-table', t);
                                    });
                                }else{
                                    var alertindex=layer.alert(res.message, {
                                        skin: 'layui-layer-molv' //样式类名
                                        , closeBtn: 0
                                    },function () {
                                        table.reload('role-table', t);
                                        layer.close(alertindex);
                                    },function(){
                                        layer.close(alertindex);

                                    });

                                }
                            }
                        });
                    }
                )
            }else{
                layer.msg("请选择需要删除的策略",{time:1000});
            }
        }
    };
    $('.layui-inline .layui-btn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
    });
    //搜索
    form.on("submit(searchForm)",function(data){
        table.reload('role-table', {
            page: {curr: 1},
            where: data.field
        });
        return false;
    });
});