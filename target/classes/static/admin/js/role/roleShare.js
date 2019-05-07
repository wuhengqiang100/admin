/*Array.prototype.contains = function ( needle ) {
    for (i in this) {
        if (this[i] == needle) return true;
    }
    return false;
};*/
layui.use(['form', 'layer', 'jquery'], function () {
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery;

    form.on('select(selected)', function (data) {
        $.post("/admin/system/role/share", {id: data.value},function(result){
            if(result.success){

                $.each(result.roleOwnUserList,function(n,value){
                    alert(n);
                    alert(value);
                    var htmlOwnUser = "";
                    htmlOwnUser+='<td><input type="checkbox" checked id="switch" name="switch" lay-skin="switch" value="value.id"></td>'+
                        '<td>value.nicakName</td>'+
                        '<td>value.identity</td>'
                });
                $("#ownUser").appendTo(htmlOwnUser);
               /* $.each(result.roleNotOwnUserList,function(n,value){
                    var htmlOutOwnUser = "";
                    htmlOutOwnUser+='<td><input type="checkbox" id="switch" name="switch" lay-skin="switch" value="value.id"></td>'+
                        '<td>value.nicakName</td>'+
                        '<td>value.identity</td>'
                });
                $("#notOwnUser").appendTo(htmlOutOwnUser);*/
            }else{
                layer.msg(result.message);
            }

        });
        console.log(data.value); //得到被选中的值,roleId

    });
   /* form.on('submit(shareRole)', function (data) {
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        var flag = $("#switch").is(":checked");
        if (!flag) {//没有点开关
            parent.layer.alert("请选择农田管理员");
            layer.close(loadIndex);
            return false;
        } else {
            var id = $("#userId").val();
            $.ajax({
                type: "POST",
                url: "/admin/farm/manager/add?id=" + id,
                dataType: "json",
                contentType: "application/json",
                data: "",
                success: function (res) {
                    layer.close(loadIndex);
                    if (res.success) {
                        parent.layer.msg("农田管理员添加成功！", {time: 1000}, function () {
                            //刷新父页面
                            parent.location.reload();
                        });
                    } else {
                        layer.msg(res.message);
                    }
                }
            });
            return false;
        }

        return false;
    });*/

});
