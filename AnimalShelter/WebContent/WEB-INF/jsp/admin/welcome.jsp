<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>欢迎登录后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="static/css/font.css">
    <link rel="stylesheet" href="static/css/weadmin.css">
</head>
<body>
<div class="weadmin-body">
    <blockquote class="layui-elem-quote">欢迎来到动物之家后台管理系统！</blockquote>

</div>
</body>
<script type="text/javascript" src="lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    layui.extend({
        admin: '{/}static/js/admin',
    });
    layui.use(['jquery', 'element','util', 'admin', 'carousel'], function() {
        var element = layui.element,
            $ = layui.jquery,
            carousel = layui.carousel,
            util = layui.util,
            admin = layui.admin;
        //建造实例
        carousel.render({
            elem: '.weadmin-shortcut'
            ,width: '100%' //设置容器宽度
            ,arrow: 'none' //始终显示箭头
            ,trigger: 'hover'
            ,autoplay:false
        });

        carousel.render({
            elem: '.weadmin-notice'
            ,width: '100%' //设置容器宽度
            ,arrow: 'none' //始终显示箭头
            ,trigger: 'hover'
            ,autoplay:true
        });

        $(function(){
            setTimeAgo(2018,0,1,13,14,0,'#firstTime');
            setTimeAgo(2018,2,28,16,0,0,'#lastTime');
        });
        function setTimeAgo(y, M, d, H, m, s,id){
            var str = util.timeAgo(new Date(y, M||0, d||1, H||0, m||0, s||0));
            $(id).html(str);
            console.log(str);
        };
    });
</script>

</html>
