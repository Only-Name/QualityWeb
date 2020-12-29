$(function () {
    echart_1();
    echart_2();

    echart_3();
    echart_4();

    echart_map();
    echart_5();

    //echart_1湖南货物收入
    function echart_1() {
      // 基于准备好的dom，初始化echarts实例
      var chart = echarts.init(document.getElementById('chart_2'))
      // 绘制图表
      var option={

      };
      chart.setOption(option);
    }

    //存储空间统计
  function echart_2(){
    // 基于准备好的dom，初始化echarts实例
    var chart = echarts.init(document.getElementById('chart_2'))
    // 绘制图表
    var option={
      //backgroundColor: '#2c343c',

     /* title: {
         text: 'Customized Pie',
        left: 'center',
        top: 20,
        textStyle: {
          color: '#ccc'
        }
      },*/

      tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c} ({d}%)'
      },

      visualMap: {
        show: false,
        min: 80,
        max: 600,
        inRange: {
          colorLightness: [0, 1]
        }
      },
      series: [
        {
          name: '存储空间统计',
          type: 'pie',
          radius: '50%',
          center: ['50%', '50%'],
          data: [
            {value: 335, name: '0级数据缓存'},
            {value: 310, name: '产品数据缓存'},
            {value: 274, name: '原始数据缓存'},
            {value: 235, name: '剩余空间'},
          ].sort(function (a, b) { return a.value - b.value; }),
          roseType: 'radius',
          label: {
            color: '#6fb3e0'
          },
          labelLine: {
            lineStyle: {
              color: '#ffb752'
            },
            smooth: 0.2,
            length: 8,
            length2: 10
          },
          itemStyle: {
            color: '#c23531',
            shadowBlur: 200,
            shadowColor: 'rgba(0, 0, 0, 0.5)'
          },

          animationType: 'scale',
          animationEasing: 'elasticOut',
          animationDelay: function (idx) {
            return Math.random() * 200;
          }
        }
      ]
    };
    chart.setOption(option);
  }

    /*//echart_2湖南省地图
    function echart_2() {
           // 基于准备好的dom，初始化echarts实例
           var chart = echarts.init(document.getElementById('chart_2'));
        $.ajax({
            type: 'get',
            url: '../login_default.do',
            success: function(sizeMap) {
                var option = {
                    title : {
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        textStyle: { //图例文字的样式
                            color: '#fff',
                            fontSize: 12
                        },
                        data: ['0级数据缓存','产品数据缓存','原始数据缓存','剩余空间']
                    },
                    series : [
                        {
                            name: '访问来源',
                            type: 'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:[
                                {value:sizeMap.localData, name:'0级数据缓存'},
                                {value:sizeMap.productData, name:'产品数据缓存'},
                                {value:sizeMap.signalData, name:'原始数据缓存'},
                                {value:sizeMap.lastData, name:'剩余空间'}
                            ],
                            itemStyle: {
                                normal: {label:{
                                        show:true,
                                        formatter:'{b} : {c}G ({d}%)'
                                    },
                                    labelLine:{show:true}},
                                emphasis: {
                                    label: {
                                        show: true,
                                        formatter: "{b}\n{c}G ({d}%)",
                                        position: 'center',
                                        textStyle: {
                                            fontSize: '28',
                                            fontWeight: 'bold'
                                        }
                                    },
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                chart.setOption(option);

                window.addEventListener("resize", function () {
                    chart.resize();
                });
            }
        });

    }
*/
    // echart_map中国地图
    function echart_map() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart_map'));

        var mapName = 'china'
        var data = []
        var toolTipData = [];

        /*获取地图数据*/
        myChart.showLoading();
        var mapFeatures = echarts.getMap(mapName).geoJson.features;
        myChart.hideLoading();
        var geoCoordMap = {
            '牡丹江站': [129.58, 44.6],
            '密云站': [116.83, 42.37],
            '喀什站': [75.989138,39.467664],
            '三亚站': [109.50, 18.25],
            '本部': [116.4551, 39.2539]
        };

        var GZData = [
            [{
                name: '本部'
            }, {
                name: '牡丹江站',
                value: 95
            }],
            [{
                name: '本部'
            }, {
                name: '密云站',
                value: 80
            }],
            [{
                name: '本部'
            }, {
                name: '喀什站',
                value: 70
            }],
            [{
                name: '本部'
            }, {
                name: '三亚站',
                value: 60
            }]
        ];

        var convertData = function (data) {
            var res = [];
            for (var i = 0; i < data.length; i++) {
                var dataItem = data[i];
                var fromCoord = geoCoordMap[dataItem[0].name];
                var toCoord = geoCoordMap[dataItem[1].name];
                if (fromCoord && toCoord) {
                    res.push({
                        fromName: dataItem[0].name,
                        toName: dataItem[1].name,
                        coords: [fromCoord, toCoord]
                    });
                }
            }
            return res;
        };

        var color = ['#c5f80e'];
        var series = [];
        [
            ['本部', GZData]
        ].forEach(function (item, i) {
            series.push({
                name: item[0],
                type: 'lines',
                zlevel: 2,
                symbol: ['none', 'arrow'],
                symbolSize: 10,
                effect: {
                    show: true,
                    period: 6,
                    trailLength: 0,
                    symbol: 'arrow',
                    symbolSize: 5
                },
                lineStyle: {
                    normal: {
                        color: color[i],
                        width: 1,
                        opacity: 0.6,
                        curveness: 0.2
                    }
                },
                data: convertData(item[1])
            }, {
                name: item[0],
                type: 'effectScatter',
                coordinateSystem: 'geo',
                zlevel: 2,
                rippleEffect: {
                    brushType: 'stroke'
                },
                label: {
                    normal: {
                        show: true,
                        position: 'right',
                        formatter: '{b}'
                    }
                },
                symbolSize: function (val) {
                    return val[2] / 8;
                },
                itemStyle: {
                    normal: {
                        color: color[i]
                    }
                },
                data: item[1].map(function (dataItem) {
                    return {
                        name: dataItem[1].name,
                        value: geoCoordMap[dataItem[1].name].concat([dataItem[1].value])
                    };
                })
            });
        });

        option = {
            tooltip: {
                trigger: 'item'
            },
            geo: {
                map: 'china',
                label: {
                    emphasis: {
                        show: false
                    }
                },
                roam: true,
                itemStyle: {
                    normal: {
                        borderColor: 'rgba(147, 235, 248, 1)',
                        borderWidth: 1,
                        areaColor: {
                            type: 'radial',
                            x: 0.5,
                            y: 0.5,
                            r: 0.8,
                            colorStops: [{
                                offset: 0,
                                color: 'rgba(175,238,238, 0)' // 0% 处的颜色
                            }, {
                                offset: 1,
                                color: 'rgba(47,79,79, .1)' // 100% 处的颜色
                            }],
                            globalCoord: false // 缺省为 false
                        },
                        shadowColor: 'rgba(128, 217, 248, 1)',
                        // shadowColor: 'rgba(255, 255, 255, 1)',
                        shadowOffsetX: -2,
                        shadowOffsetY: 2,
                        shadowBlur: 10
                    },
                    emphasis: {
                        areaColor: '#389BB7',
                        borderWidth: 0
                    }
                }
            },
            series: series
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize", function () {
            myChart.resize();
        });

    }

    //echart_3作业统计
    function echart_3() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart_3'));
        myChart.clear();
        var gdata = [$("#totalCount").val(),$("#succCount").val(),$("#failCount").val(),$("#cancelCount").val()];
        option = null;
        option = {
            title : {

                x:'center'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            xAxis: {
                type: 'category',
                axisTick: {show: false},
                axisLine:{
                    lineStyle:{
                        color:'white',

                    }
                },
                data: ["作业总数","作业成功数","作业失败数","作业取消数"]
            },
            yAxis: {
                type: 'value',
                name:"(单位：个)",
                axisLine:{
                    lineStyle:{
                        color:'white',

                    }
                },
            },
            series: [
                {
                    name:'',
                    type:'bar',
                    barWidth:'20%',
                    data:gdata,
                    itemStyle: {
                        normal: {
                            color: 'rgb(255,140,0)'
                        }
                    }
                }
            ]
        };

        myChart.setOption(option);
    }
    //任务按月统计
    function echart_4() {
          // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('chart_4'));
        myChart.clear();
        var gdata = [$("#jobCount1").val(),$("#jobCount2").val(),$("#jobCount3").val(),$("#jobCount4").val(),$("#jobCount5").val(),$("#jobCount6").val(),$("#jobCount7").val(),$("#jobCount8").val(),$("#jobCount9").val(),$("#jobCount10").val(),$("#jobCount11").val(),$("#jobCount12").val(),];
        option = {
            color: ['#3398DB'],
            tooltip: {
                trigger: 'axis',
                axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                    type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    axisLine:{
                        lineStyle:{
                            color:'white',

                        }
                    },
                    data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月','8月', '9月', '10月', '11月', '12月'],
                    axisTick: {
                        alignWithLabel: true
                    }
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    name:"(单位：个)",
                    axisLine:{
                        lineStyle:{
                            color:'white',

                        }
                    },
                }
            ],
            series: [
                {
                    name: '任务总数',
                    type: 'bar',
                    barWidth: '60%',
                    data: gdata
                }
            ]
        };
        myChart.setOption(option);
    }

    function echart_5() {
      // 基于准备好的dom，初始化echarts实例
      var chart = echarts.init(document.getElementById('chart_5'));
      // 绘制图表
      var option = {
        title: {
          text: '负载曲线',
          left: 'center',
          top: 15,
          textStyle: {
            color: '#fff'
          }
        },
        tooltip: {
          trigger: 'item',
        },
        color:['#2db7f5','#ff6600','#808bc6'],
        legend: {
          data: ['CPU','内存'],
          left:'right',
          top:35,
          textStyle:{
            color:'#fff'
          }
        },
        grid: {
          left: '2%',
          right: '4%',
          bottom: '3%',
          containLabel: true
        },
        toolbox: {
          feature: {
            saveAsImage: {}
          }
        },
        xAxis: {
          type: 'category',
          boundaryGap: false,
          data: ['', '', '', '', '', '', ''],
          axisLine:{
            lineStyle:{
              color:'#fff'
            }
          }
        },
        yAxis: {
          type: 'value',
          axisLabel:{
            textStyle:{
              color:'#fff'
            }
          },
          axisLine:{
            lineStyle:{
              color:'#fff'
            }
          }

        },
        series: [
          {
            name: 'CPU',
            type: 'line',
            stack: '总量',
            data: [120, 132, 101, 134, 90, 230, 210],
            itemStyle:{
              normal:{
                color:'#FF9F7F',
                lineStyle:{
                  color:'#FF9F7F'
                }
              }
            }
          },
          {
            /*lineStyle:{
              color:'#87b87f'
            },*/
            name: '内存',
            type: 'line',
            stack: '总量',
            data: [820, 932, 901, 934, 1290, 1330, 1320],
            itemStyle:{
              normal:{
                color:'#87b87f',
                lineStyle:{
                  color:'#87b87f'
                }
              }
            }
          }
        ]
      };

      //使用指定的配置项和数据显示图表
      chart.setOption(option);
    }
    //点击跳转
   /* $('#chart_map').click(function(){
        window.location.href = './page/index.html';
    });
    $('.t_btn2').click(function(){
        window.location.href = "./page/index.html?id=2";
    });
    $('.t_btn3').click(function(){
        window.location.href = "./page/index.html?id=3";
    });
    $('.t_btn4').click(function(){
        window.location.href = "./page/index.html?id=4";
    });
    $('.t_btn5').click(function(){
        window.location.href = "./page/index.html?id=5";
    });
    $('.t_btn6').click(function(){
        window.location.href = "./page/index.html?id=6";
    });
    $('.t_btn7').click(function(){
        window.location.href = "./page/index.html?id=7";
    });
    $('.t_btn8').click(function(){
        window.location.href = "./page/index.html?id=8";
    });
    $('.t_btn9').click(function(){
        window.location.href = "./page/index.html?id=9";
    });*/
});
