/*Array.prototype.contains = function ( needle ) {
    for (i in this) {
        if (this[i] == needle) return true;
    }
    return false;
};*/
layui.use(['form','layer','jquery'], function(){
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery;
    form.on('radio(addManager)', function(data){

        // console.log(data.elem); //得到radio原始DOM对象
        // console.log(data.value); //被点击的radio的value值
        if(null==data.value){//开关未开启
            layer.msg("请选择数据管理员");
            return false;
        }else{
            var loadIndex = layer.load(2, {shade: [0.3, '#333']});
            $.ajax({
                type:"POST",
                url:"/admin/farm/manager/add?id="+data.value,
                dataType:"json",
                contentType:"application/json",
                data:"",
                success:function(res){
                    layer.close(loadIndex);
                    if(res.success){
                        parent.layer.msg("农田管理员添加成功！",{time:1000},function(){
                            //刷新父页面
                            parent.location.reload();
                        });
                    }else{
                        layer.msg(res.message);
                    }
                }

            });
            return false;
        }
        return false;
    });

    /*form.on('submit(addFarmManager)',function(data){
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        var flag = $("#switch").is(":checked");
        if(!flag){//没有点开关
            parent.layer.alert("请选择农田管理员");
            layer.close(loadIndex);
            return false;
        }else{
            var id=$("#userId").val();
            $.ajax({
                type:"POST",
                url:"/admin/farm/manager/add?id="+id,
                dataType:"json",
                contentType:"application/json",
                data:"",
                success:function(res){
                    layer.close(loadIndex);
                    if(res.success){
                        parent.layer.msg("农田管理员添加成功！",{time:1000},function(){
                            //刷新父页面
                            parent.location.reload();
                        });
                    }else{
                        layer.msg(res.message);
                    }
                }
            });
            return false;
        }

        return false;
    });*/

   /* form.on('select(selected)', function(data){
        $("#more").empty();
        $.ajax({
            type:"POST",
            url:"/admin/farm/manager/getmanagers?id="+data.value,
            dataType:"json",
            contentType:"application/json",
            data:"",
            success:function(res){
                if(res.success){
                    $("#more").append("<div class=\"layui-form-item\">\n" +
                        "                                    <label class=\"layui-form-label\">可选择用户:</label>\n" +
                        "\n" +
                        "                                    <div  class=\"layui-input-block\"><input type=\"radio\" name=\"sex\" value=\"nan\" title=\"男\"></div>\n" +
                        "                                </div>");
                }else{
                    layer.msg(res.message);
                }
            }
        });
        return false;
    });*/
});