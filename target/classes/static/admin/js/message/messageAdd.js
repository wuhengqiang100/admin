Array.prototype.contains = function ( needle ) {
    for (i in this) {
        if (this[i] == needle) return true;
    }
    return false;
};
layui.use(['form','layer','jquery'], function(){
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery;

    form.on('submit(addMessage)',function(data){
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        $.ajax({
            type:"POST",
            url:"/admin/user/message/add",
            dataType:"json",
            contentType:"application/json;charset=utf-8",
            data:JSON.stringify(data.field),
            success:function(res){
                layer.close(loadIndex);
                if(res.success){
                    parent.layer.msg(res.message,{time:1000},function(){
                        //刷新父页面
                        parent.location.reload();
                    });
                }else{
                    layer.msg(res.message);
                }
            }
        });
        return false;
    });
  /*  form.on('submit(addMessage)',function(data){
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        $.post("/admin/user/message/add",data.field,function(res){
            if(res.success){
                layer.close(loadIndex);
                parent.layer.msg(res.message,{time:1000},function(){
                    //刷新父页面
                    parent.location.reload();
                });
            }else{
                layer.msg(res.message);
            }
        },"application/json");
        return false;
     /!*   $.ajax({
            type:"POST",
            url:"/admin/user/message/add",
            enctype:"multipart/form-data;charset=UTF-8",
            dataType:"json",
            contentType:"application/json",
            data:data.field,
            success:function(res){
                layer.close(loadIndex);
                if(res.success){
                    parent.layer.msg(res.message,{time:1000},function(){
                        //刷新父页面
                        parent.location.reload();
                    });
                }else{
                    layer.msg(res.message);
                }
            }
        });
        return false;*!/
    });*/
});