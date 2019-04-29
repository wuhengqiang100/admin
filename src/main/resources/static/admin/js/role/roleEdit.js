Array.prototype.contains = function ( needle ) {
    for (i in this) {
        if (this[i] == needle) return true;
    }
    return false;
};

layui.use(['form','jquery','element','layer'],function(){
    var form = layui.form,
        $ = layui.jquery,
        element = layui.element,
        layer = layui.layer;

    $(".tipSet").mouseover(function () {
        layer.tips('多个属性以,隔开', '.tipSet', {
            tips: [3, '#3595CC'],
            time: 500
        });
    });

    form.on('checkbox(roleMenu)',function(data){
        var v = data.elem.getAttribute("data-parentIds");
        var myarr = v.split(",");
        var child = $(data.elem).parents('form').find('input[type="checkbox"]');
        if(data.elem.checked){//勾选的时候的动作,父栏目层级全部勾选
            child.each(function(index, item){
                if(myarr.contains(item.value)){
                    item.checked = data.elem.checked;
                }
            });
        }else{ //取消选择的时候，子栏目层级全部取消选择
            child.each(function(index, item){
                //获取每一个checkbox的 父栏目ID组
                var r = item.getAttribute("data-parentIds");
                var noarr = r.split(",");
                if(noarr.contains(data.value)){
                    item.checked = data.elem.checked;
                }
            });
        }
        form.render('checkbox');
    });
    $(".dontEdit").click(function(){
        parent.location.reload();
    });
    form.on("submit(editRole)",function(data){
        if(data.field.id == null){
            layer.msg("策略ID不存在");
            return false;
        }
        var menus = [];
        var c = $('form').find('input[type="checkbox"]');
        c.each(function(index, item){
            var m = {};
            if(item.checked){
                m.id = item.value;
                menus.push(m);
            }
        });
        data.field.menuSet = menus;
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        $.ajax({
            type:"POST",
            url:"/admin/system/role/edit",
            dataType:"json",
            contentType:"application/json",
            data:JSON.stringify(data.field),
            success:function(res){
                layer.close(loadIndex);
                if(res.success){
                    var indexConfirm=parent.layer.confirm(res.message, {
                            skin: 'layui-layer-molv'
                            ,closeBtn: 1,
                            icon: 3, title: '提示',btn:['前去更改','好的']},
                        function(){
                            window.parent.location.href="/admin/system/user/list";
                            // $(".returnEditUser").click();
                            // parent.layer.closeAll(); //疯狂模式，关闭所有层
                            parent.layer.close(indexConfirm);
                        },function(){
                            parent.location.reload();
                        },function () {
                            // window.location.href="/admin/system/user/list";
                        });
                 /*   parent.layer.msg(res.message,{time:1000},function(){
                        //刷新父页面
                        parent.location.reload();
                    });*/
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
                   /* layer.msg(res.message,{time:1000},function(){
                        //刷新本页面
                        location.reload();
                    });*/

                }
            }
        });
        return false;
    });

});