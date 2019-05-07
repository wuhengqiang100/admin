layui.use(['form', 'element', 'layer', 'jquery','table'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : parent.layer,
        element = layui.element,
        $ = layui.jquery,
        table = layui.table,
        t;


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
        $.post("/farm/farmdata/sun", {},
            function(data){
                if(data.success){
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
                            // data:['温度','湿度','光照']
                            data:['光照']
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
                            /*{
                                type: 'value',
                                name: '温度',
                                min: 0,
                                max: 50,
                                interval: 5,
                                axisLabel: {
                                    formatter: '{value} °C'
                                }
                            },*/
                            {
                                type: 'value',
                                name: '光照',
                                min: 0,
                                max: 100,
                                position: 'left',
                                offset:5,
                                interval: 20,
                                axisLabel: {
                                    formatter: '{value}lux'
                                }
                               /* axisLabel: {
                                    formatter: '{value}RH/lux'
                                }*/
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
                          /*  {
                                name:'温度',
                                type:'line',
                                yAxisIndex: 0,
                                data:data.temperArray
                            },*/
                           /* {
                                name:'湿度',
                                type:'line',
                                yAxisIndex: 0,
                                data:data.humidiArray
                            }*/,
                            {
                                name:'光照',
                                type:'line',
                                yAxisIndex: 0,
                                data:data.illumiArray
                            }
                        ]
                    };
                    myChart.setOption(option);
                }else{
                    alert("数据: \n" + data.data + "\n状态: " + status);
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