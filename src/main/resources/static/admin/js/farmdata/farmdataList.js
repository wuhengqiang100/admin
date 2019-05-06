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
        $.post("/farm/farmdata/list", {},
            function(data){
                if(data.success){
                    var colors = ['#5793f3', '#d14a61', '#675bba'];

                    option = {
                        color: colors,

                        tooltip: {
                            trigger: 'axis',
                            axisPointer: {
                                type: 'cross'
                            }
                        },
                        grid: {
                            right: '20%'
                        },
                        toolbox: {
                            feature: {
                                dataView: {show: true,readOnly:true},
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
                                axisTick: {
                                    alignWithLabel: true
                                },
                                data:data.dateTimeArray
                            }
                        ],
                        yAxis: [
                            {
                                type: 'value',
                                name: '蒸发量',
                                min: 0,
                                max: 250,
                                position: 'right',
                                axisLine: {
                                    lineStyle: {
                                        color: colors[0]
                                    }
                                },
                                axisLabel: {
                                    formatter: '{value} ml'
                                }
                            },
                            {
                                type: 'value',
                                name: '降水量',
                                min: 0,
                                max: 250,
                                position: 'right',
                                offset: 80,
                                axisLine: {
                                    lineStyle: {
                                        color: colors[1]
                                    }
                                },
                                axisLabel: {
                                    formatter: '{value} ml'
                                }
                            },
                            {
                                type: 'value',
                                name: '温度',
                                min: 0,
                                max: 25,
                                position: 'left',
                                axisLine: {
                                    lineStyle: {
                                        color: colors[2]
                                    }
                                },
                                axisLabel: {
                                    formatter: '{value} °C'
                                }
                            }
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
                                yAxisIndex: 2,
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