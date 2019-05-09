layui.use(['form', 'laydate','element', 'layer', 'jquery','table'], function () {
    var form = layui.form,
        laydate = layui.laydate,
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        element = layui.element,
        $ = layui.jquery,
        table = layui.table,
        t;
    function GetDateStr(AddDayCount) {
        var dd = new Date();
        dd.setDate(dd.getDate()+AddDayCount);//获取AddDayCount天后的日期
        var y = dd.getFullYear();
        var m = dd.getMonth()+1;//获取当前月份的日期
        var d = dd.getDate();
        return y+"-"+m+"-"+d;
    }
    //执行一个laydate实例
    laydate.render({

        elem: '#lastDate' //指定元素
        ,format: 'yyyy-MM-dd HH:mm:ss'
        ,type: 'datetime'
        , min: '2019-1-1'//最小范围
        ,max: 'GetDateStr(1)'
        ,theme: 'molv'//墨绿色背景
    });


    laydate.render({
        elem: '#nextDate' //指定元素
        ,format: 'yyyy-MM-dd HH:mm:ss'
        ,type: 'datetime'
        , min: '2019-1-1'//最小范围
        /*,showBottom: false//不显示底部按钮*/
        ,theme: 'molv'//墨绿色背景
    });
    form.on('submit(dataDetail)',function(data){
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        $.ajax({
            type:"POST",
            url:"/farm/farmdata/detail",
            dataType:"json",
            contentType:"application/json",
            data:JSON.stringify(data.field),
            success:function(res){
                layer.close(loadIndex);
                if(res.success){
                    alert(res.success);
                    parent.layer.msg(res.message,{time:1000},function(){

                    });
                }else{

                }
            }
        });
        return false;
    });
    /*form.on('submit(dataDetail)', function (data) {
        var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });
        $.post("/farm/farmdata/detail",JSON.stringify(data.field),function (result) {
            layer.close(loadIndex);
            if(result.success){
                layer.close(loadIndex);
                layer.msg(res.message);
            }else{
                layer.msg(res.message);
            }
        },'json');

       /!* $.ajax({
            type: "POST",
            url: "/farm/farmdata/detail",
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            data: JSON.stringify(data.field),
            success: function (res) {
                layer.close(loadIndex);
                if (res.success) {
                    layer.msg(res.message);

                } else {
                    layer.msg(res.message);
                }
            }
        });*!/
    });*/

    $("animClick").click(function(){
        $("#animClick").attr("id","newStyle");
    });

    //演示动画
    $('.site-doc-icon .layui-anim').on('click', function(){
        var othis = $(this), anim = othis.data('anim');

        //停止循环
        if(othis.hasClass('layui-anim-loop')){
            return othis.removeClass(anim);
        }

        othis.removeClass(anim);

        setTimeout(function(){
            othis.addClass(anim);
        });
        //恢复渐隐
        if(anim === 'layui-anim-fadeout'){
            setTimeout(function(){
                othis.removeClass(anim);
            }, 1300);
        }
    });
    // 使用刚指定的配置项和数据显示图表。

    $(".panel a").on("click", function () {
        window.parent.addTab($(this));
    });

    //数字格式化
    $(".panel span").each(function () {
        $(this).html($(this).text() > 9999 ? ($(this).text() / 10000).toFixed(2) + "<em>万</em>" : $(this).text());
    });

});