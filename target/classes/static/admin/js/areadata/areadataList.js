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
   /*     var loadIndex = layer.load(2, {
            shade: [0.3, '#333']
        });*/
       /* $.post("/farm/farmdata/detail", JSON.stringify(data.field),contentType="application/json",
            function (data) {
                if (data.success) {
                    // var colors = ['#5793f3', '#d14a61', '#675bba'];
                    // app.title = '折柱混合';

                    option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'cross',
                                crossStyle: {
                                    color: '#999'
                                }
                            }
                        },
                        toolbox: {
                            feature: {
                                dataView: {show: true, readOnly: false},
                                magicType: {show: true, type: ['line', 'bar']},
                                restore: {show: true},
                                saveAsImage: {show: true}
                            }
                        },
                        legend: {
                            data: ['温度', '湿度', '光照']
                        },
                        xAxis: [
                            {
                                type: 'category',
                                data: data.dateTimeArray,
                                axisPointer: {
                                    type: 'shadow'
                                }
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                name: '温度',
                                min: 0,
                                max: 50,
                                position: 'left',
                                offset: 10,
                                interval: 5,
                                axisLabel: {
                                    formatter: '{value} °C'
                                }
                            },
                            {
                                type: 'value',
                                name: '湿度/光照',
                                min: 0,
                                max: 100,
                                position: 'right',
                                offset: 10,
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}RH/lux'
                                }
                            }/!*,
                            {
                                type: 'value',
                                name: '光照',
                                min: 0,
                                max: 100,
                                position: 'right',
                                offset: 60,
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}lux'
                                }
                            }*!/
                        ],
                        series: [
                            {
                                name: '温度',
                                type: 'bar',
                                data: data.temperArray
                            },
                            {
                                name: '湿度',
                                type: 'bar',
                                yAxisIndex: 1,
                                data: data.humidiArray
                            },
                            {
                                name: '光照',
                                type: 'line',
                                yAxisIndex: 1,
                                data: data.illumiArray
                            }
                        ]
                    };
                    myChart.setOption(option);
                    $("#name").text(data.farmTop.name);
                    $("#location").text(data.farmTop.location);
                    $("#temperature").text(data.mostNewFarmData.temperature);
                    $("#standardTemperature").text(data.farmTop.temperature);
                    $("#humidity").text(data.mostNewFarmData.humidity);
                    $("#standardHumidity").text(data.farmTop.humidity);
                    $("#illumination").text(data.mostNewFarmData.illumination);
                    $("#standardIllumination").text(data.farmTop.illumination);
                } else {
                    layer.alert(data.message, {
                        skin: 'layui-layer-molv' //样式类名
                        , closeBtn: 0
                    });
                }
            });*/
        $.ajax({
            type:"POST",
            url:"/farm/farmdata/detail",
            dataType:"json",
            contentType:"application/json",
            data:JSON.stringify(data.field),
            success:function(data){
                var myChart = echarts.init(document.getElementById('chart'));
                if(data.success){

                    option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'cross',
                                crossStyle: {
                                    color: '#999'
                                }
                            }
                        },
                        toolbox: {
                            feature: {
                                dataView: {show: true, readOnly: false},
                                magicType: {show: true, type: ['line', 'bar']},
                                restore: {show: true},
                                saveAsImage: {show: true}
                            }
                        },
                        legend: {
                            data:['温度','湿度','光照']
                        },
                        xAxis: [
                            {
                                type: 'category',
                                data:data.dateTimeArray,
                                axisPointer: {
                                    type: 'shadow'
                                }
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                name: '温度',
                                min: 0,
                                max: 50,
                                interval: 5,
                                axisLabel: {
                                    formatter: '{value} °C'
                                }
                            },
                            {
                                type: 'value',
                                name: '湿度/光照',
                                min: 0,
                                max: 100,
                                position: 'right',
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}RH/lux'
                                }
                            }/*,
                            {
                                type: 'value',
                                name: '光照',
                                min: 0,
                                max: 100,
                                position: 'right',
                                offset: 60,
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}lux'
                                }
                            }*/
                        ],
                        series: [
                            {
                                name:'温度',
                                type:'bar',
                                yAxisIndex: 0,
                                data:data.temperArray
                            },
                            {
                                name:'湿度',
                                type:'bar',
                                yAxisIndex: 1,
                                data:data.humidiArray
                            },
                            {
                                name:'光照',
                                type:'line',
                                yAxisIndex: 1,
                                data:data.illumiArray
                            }
                        ]
                    };
                    myChart.setOption(option);
                }else{
                    layer.confirm("当前农田区块还没有数据,请采集数据", {
                        skin: 'layui-layer-molv'
                        ,closeBtn: 1,
                        icon: 3, title: '提示',
                        btn: ['确定'] //按钮
                    }, function(){

                    },function(){

                    });
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
    $(document).ready(function () {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart'));
        $.ajax({
            type:"POST",
            url:"/farm/farmdata/detailfirst",
            dataType:"json",
            contentType:"application/json",
            data:"",
            success:function(data){
                var myChart = echarts.init(document.getElementById('chart'));
                if(data.success){

                    option = {
                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'cross',
                                crossStyle: {
                                    color: '#999'
                                }
                            }
                        },
                        toolbox: {
                            feature: {
                                dataView: {show: true, readOnly: false},
                                magicType: {show: true, type: ['line', 'bar']},
                                restore: {show: true},
                                saveAsImage: {show: true}
                            }
                        },
                        legend: {
                            data:['温度','湿度','光照']
                        },
                        xAxis: [
                            {
                                type: 'category',
                                data:data.dateTimeArray,
                                axisPointer: {
                                    type: 'shadow'
                                }
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                name: '温度',
                                min: 0,
                                max: 50,
                                interval: 5,
                                axisLabel: {
                                    formatter: '{value} °C'
                                }
                            },
                            {
                                type: 'value',
                                name: '湿度/光照',
                                min: 0,
                                max: 100,
                                position: 'right',
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}RH/lux'
                                }
                            }/*,
                            {
                                type: 'value',
                                name: '光照',
                                min: 0,
                                max: 100,
                                position: 'right',
                                offset: 60,
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}lux'
                                }
                            }*/
                        ],
                        series: [
                            {
                                name:'温度',
                                type:'bar',
                                yAxisIndex: 0,
                                data:data.temperArray
                            },
                            {
                                name:'湿度',
                                type:'bar',
                                yAxisIndex: 1,
                                data:data.humidiArray
                            },
                            {
                                name:'光照',
                                type:'line',
                                yAxisIndex: 1,
                                data:data.illumiArray
                            }
                        ]
                    };
                    myChart.setOption(option);
                }else{
                    layer.confirm("当前农田区块还没有数据,请采集数据", {
                        skin: 'layui-layer-molv'
                        ,closeBtn: 1,
                        icon: 3, title: '提示',
                        btn: ['确定'] //按钮
                    }, function(){

                    },function(){

                    });
                }
            }
        });
    });
    $(".panel a").on("click", function () {
        window.parent.addTab($(this));
    });

    //数字格式化
    $(".panel span").each(function () {
        $(this).html($(this).text() > 9999 ? ($(this).text() / 10000).toFixed(2) + "<em>万</em>" : $(this).text());
    });

});