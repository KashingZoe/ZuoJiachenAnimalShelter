<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/20
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Echarts01</title>
    <style>
        #container{

            margin:0 auto;
            margin-top:30px;
            width:800px;
            height:500px;

        }
    </style>
</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 100%"></div>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>
<%--<script type="text/javascript" src="lib/js/vue.js"></script>--%>
<script type="text/javascript" src="lib/js/axios.min.js"></script>
<script type="text/javascript">

    let bgColor = '#fff';
    let title = '总量';
    let color = ['#0E7CE2', '#FF8352', '#E271DE', '#F8456B', '#00FFFF', '#4AEAB0'];
    let echartData = [{
        name: "A类",
        value: "3720"
    },
        {
            name: "B类",
            value: "2920"
        },
        {
            name: "C类",
            value: "1200"
        },
        {
            name: "D类",
            value: "1420"
        }
    ];

    let formatNumber = function(num) {
        let reg = /(?=(\B)(\d{3})+$)/g;
        return num.toString().replace(reg, ',');
    }
    let total = echartData.reduce((a, b) => {
        return a + b.value * 1
    }, 0);

    option = {
        backgroundColor: bgColor,
        color: color,
        // tooltip: {
        //     trigger: 'item'
        // },
        title: [{
            text: '{name|' + title + '}\n{val|' + formatNumber(total) + '}',
            top: 'center',
            left: 'center',
            textStyle: {
                rich: {
                    name: {
                        fontSize: 14,
                        fontWeight: 'normal',
                        color: '#666666',
                        padding: [10, 0]
                    },
                    val: {
                        fontSize: 32,
                        fontWeight: 'bold',
                        color: '#333333',
                    }
                }
            }
        },{
            text: '单位：个',
            top: 20,
            left: 20,
            textStyle: {
                fontSize: 14,
                color:'#666666',
                fontWeight: 400
            }
        }],

        series: [{
            type: 'pie',
            radius: ['45%', '60%'],
            center: ['50%', '50%'],
            data: echartData,
            hoverAnimation: false,
            itemStyle: {
                normal: {
                    borderColor: bgColor,
                    borderWidth: 2
                }
            },
            labelLine: {
                normal: {
                    length: 20,
                    length2: 120,
                    lineStyle: {
                        color: '#e6e6e6'
                    }
                }
            },
            label: {
                normal: {
                    formatter: params => {
                        return (
                            '{icon|●}{name|' + params.name + '}{value|' +
                            formatNumber(params.value) + '}'
                        );
                    },
                    padding: [0 , -100, 25, -100],
                    rich: {
                        icon: {
                            fontSize: 16
                        },
                        name: {
                            fontSize: 14,
                            padding: [0, 10, 0, 4],
                            color: '#666666'
                        },
                        value: {
                            fontSize: 18,
                            fontWeight: 'bold',
                            color: '#333333'
                        }
                    }
                }
            },
        }]
    };
    //console.log(option);
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    //加载数据到option
    loadData(option);


    function loadData(option) {
        axios.get("adminEcharts/echarts").then((res1)=>{
            //console.log(res1);
            var str = new Array();
        var strname = new Array();
            //
        for(var i=0; i < res1.data.name.length; i++) {
            var str3=new Object();
            var str2=new Object();
            str3.name=res1.data.name[i];
            str2=res1.data.name[i];
            str3.value=res1.data.data[i];
            strname.push(str2);
            //console.log(str3.value);
            //servicedata[i]=obj;
            str.push(str3);
            console.log(str3);
            //console.log(str);
            // option.series[0].data.push
        }
        //console.log(strname);
        option.series[0].data = str;
        //option.legend.data = strname;
            echartData = strname;
        //option.series[0].data[0].name = 111
        //console.log(option)
        //console.log(option.series[0].data[0].name)

        }).then(()=>{
            myChart.setOption(option);
        });

    }//load

</script>
</body>
</html>
