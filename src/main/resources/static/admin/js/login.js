layui.use(['flow','form', 'layer'], function () {
    var flow = layui.flow,
        form = layui.form,
        layer = parent.layer === undefined ? layui.layer : parent.layer;
    $ = layui.jquery;


    flow.load({
        elem: '#requestLoad' //指定列表容器
        ,done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
            var lis = [];
            //以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
            $.post('/admin/requestAll?page='+page, function(res){
                //假设你的列表返回在data集合中
                layui.each(res.roleList, function(index, item){
                    // lis.push('<li>'+ item.title +'</li>');
                    lis.push('<option id="item.id">'+ item.name +'</option>');
                });

                //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                next(lis.join(''), page < res.pages);
            });
        }
    });

/*    $(document).ready(function () {
        var loadIndex = layer.load(2, {shade: [0.3, '#333']});
        $.post("/admin/requestAll", {}, function (res) {
            layer.close(loadIndex);
        }, 'json');
        // getRequestAll();
    });*/

    //登录按钮事件
    form.on("submit(login)", function (data) {
        var loadIndex = layer.load(2, {shade: [0.3, '#333']});
        if ($('form').find('input[type="checkbox"]')[0].checked) {
            data.field.rememberMe = true;
        } else {
            data.field.rememberMe = false;
        }

        $.post(data.form.action, data.field, function (res) {
            layer.close(loadIndex);
            if (res.success) {
                location.href = "/" + res.url;
            } else {
                layer.alert(res.message, {
                    skin: 'layui-layer-molv',
                    closeBtn: 1    // 是否显示关闭按钮
                    ,anim:6
                    ,btn: ['确定并重新输入'] //按钮
                    ,yes:function(index){
                        // obj.del();
                        // layer.close(index);
                        $("#randImage").click();
                        layer.closeAll("dialog");
                        // location.reload()
                    }
                });
              /*  layer.msg(res.message);
                location.reload()
                // $("#randImage").click();*/
            }
        },'json');
        return false;
    });

    $("#regist").click(function () {
        location.href = "/toRegist";
    });


    $(document).on('keydown', function () {
        if (event.keyCode == 13) {
            $(".login_btn").click();
        }
    });

  /*  var getRequestAll = function () {
        var loadIndex = layer.load(2, {shade: [0.3, '#333']});
        $.post("/admin/requestAll", {}, function (res) {
            layer.close(loadIndex);
        }, 'json');
    };*/

    form.on('select(selected)', function (data) {
       var valiTrue=true;
        if(1==data.value){
            valiTrue=false;
            layer.msg("请选择您的请求!");
        }
        // var loadSelect = layer.load(2, {shade: [0.3, '#333']});
        if(valiTrue){
            $.post("/admin/request", {id: data.value}, function (res) {
                $("#insertForm").empty();
                if (res.success) {
                    //身份输入框
                    if (res.role.identity != null && res.role.identity!="") {
                        // $("#insertForm01").after("<div class=\"layui-form-item\"><input class=\"layui-input\" name=\"identity\" placeholder=\"访问身份\" lay-verify=\"required\" type=\"text\" autocomplete=\"off\"></div>");
                        $("#insertForm").append("<div class=\"layui-form-item\"><input class=\"layui-input\" name=\"identity\" placeholder=\"访问身份\" lay-verify=\"required\" type=\"text\" autocomplete=\"off\"></div>");
                    }
                    //发起请求地址输入框
                    if (res.role.requestPlace != null && res.role.requestPlace!="") {
                        $("#insertForm").append("<div class=\"layui-form-item\"><input class=\"layui-input\" name=\"requestPlace\" placeholder=\"发起请求地址\" lay-verify=\"required\" type=\"text\" autocomplete=\"off\"></div>");
                    }
                    //年纪输入框
                    if (res.role.age != null &&res.role.age!="") {
                        $("#insertForm").append("<div class=\"layui-form-item\"><input class=\"layui-input\" name=\"age\" placeholder=\"年纪\" lay-verify=\"required\" type=\"password\" autocomplete=\"off\"></div>");
                    }
                    //电话输入框
                    if (null!=res.role.tel && ''!=res.role.tel) {
                        $("#insertForm").append("<div class=\"layui-form-item\"><input class=\"layui-input\" name=\"tel\" placeholder=\"电话号码\" lay-verify=\"required\" type=\"password\" autocomplete=\"off\"></div>");
                    }
                    //电话输入框
                    if (res.role.email != null && res.role.email!="") {
                        $("#insertForm").append("<div class=\"layui-form-item\"><input class=\"layui-input\" name=\"email\" placeholder=\"邮件地址\" lay-verify=\"required\" type=\"password\" autocomplete=\"off\"></div>");
                    }
                    //layer.close(loadIndex);

                } else {
                    layer.msg(res.message);
                }
            });
        }

    });

    $("#randImage").click(function () {
        this.src = "/getCaptcha?t=" + Math.random();
    });
});
