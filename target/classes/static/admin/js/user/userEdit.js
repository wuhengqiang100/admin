var index = parent.layer.getFrameIndex(window.name); //当前窗口索引
layui.use(['form','jquery','layer'],function(){
    var form = layui.form,
        $    = layui.jquery,
        layer = layui.layer;


    form.on("submit(editUser)",function(data){
        if(data.field.id == null){
            layer.msg("用户ID不存在");
            return false;
        }
        //给令牌赋值
        delete data.field["roles"];
        var selectRole = [];
        $('input[name="roles"]:checked').each(function(){
            selectRole.push({"id":$(this).val()});
        });
        data.field.roleLists = selectRole;

        //判断用户是否后台用户
        if(undefined !== data.field.adminUser && null != data.field.adminUser){
            data.field.adminUser = true;
        }else{
            data.field.adminUser = false;
        }

        //判断用户是否启用
        if(undefined !== data.field.locked && null != data.field.locked){
            data.field.locked = false;
        }else{
            data.field.locked = true;
        }

        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        $.ajax({
            type:"POST",
            url:"/admin/system/user/edit",
            dataType:"json",
            contentType:"application/json",
            data:JSON.stringify(data.field),
            success:function(res){
                layer.close(loadIndex);
                if(res.success){
                    parent.layer.msg("用户修改成功！",{time:1500},function(){
                        parent.location.reload();
                    });
                }else{
                    layer.confirm(res.message, {
                        skin: 'layui-layer-molv'
                        ,closeBtn: 1,
                        icon: 3, title: '提示',
                        btn: ['确定'] //按钮
                    }, function(){
                        layer.closeAll('dialog'); //关闭信息框
                        location.reload();
                    },function(){

                    });
                    // layer.msg(res.message);
                }
            }
        });
        return false;
    });

    //判断访问属性是否满足令牌,且可以强制向令牌导入该用户的访问属性
    form.on('checkbox(roleEdit)', function(data){
        var userId=$("#id").val();
        $.post("/admin/system/user/forcer",{"id":data.value,"userId":userId},function(result){
            if(result.success){
                parent.layer.msg("用户修改成功！",{time:1500},function(){
                    parent.location.reload();
                });
            }else{
                layer.confirm(res.message, {
                    skin: 'layui-layer-molv'
                    ,closeBtn: 1,
                    icon: 3, title: '提示',
                    btn: ['强制分配','确定'] //按钮
                }, function(){

                },function(){
                    layer.closeAll('dialog'); //关闭信息框
                    location.reload();
                },function(){
                    var flag="1";
                    $.post("/admin/system/user/force",{"id":data.value,"userId":userId},function(res){
                        if(res.success){
                            layer.confirm(res.message, {
                                skin: 'layui-layer-molv'
                                ,closeBtn: 1,
                                icon: 3, title: '提示',
                                btn: ['确定'] //按钮
                            }, function(){

                            },function(){
                                layer.closeAll('dialog'); //关闭信息框
                                location.reload();
                            });
                        }
                    })
                });
                // layer.msg(res.message);
            }
        });
    });
    $(".dontEdit").click(function(){
        parent.location.reload();
    });

    form.on('switch(adminUser)', function(data){
        $("#adminUser").val(data.elem.checked);
    });

    form.on('switch(locked)', function(data){
        $("#locked").val(data.elem.checked);
    });





});