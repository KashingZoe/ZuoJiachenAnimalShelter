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
<div id="container" style="height: 100%;margin-top: 0px"></div>
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

    option = {
        title: {
            text: '宠物总量',
            subtext: '数据来自后台'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            data: ['2011年', '2012年']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            type: 'value',
            boundaryGap: [0, 0.01]
        },
        yAxis: {
            type: 'category',
            data: ['巴西', '印尼', '美国', '印度', '中国', '世界人口(万)']
        },
        series: [
            {
                name: '数量',
                type: 'bar',
                barWidth : 50,//柱图宽度
                itemStyle:{
                    normal:{
                        color:'#268785'
                    }
                },
                data: [13, 23, 24, 90, 44, 30]
            }

        ]
    };
    console.log(option);
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
        option.legend.data = strname;
        option.yAxis.data = strname;
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
