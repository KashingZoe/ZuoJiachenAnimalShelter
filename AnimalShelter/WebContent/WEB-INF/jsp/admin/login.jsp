<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/21
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>动物之家后台管理系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="static/images/paw.png" type="image/png" />
    <link rel="stylesheet" href="static/css/font.css">
    <link rel="stylesheet" href="static/css/weadmin.css">
    <script src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript">
        //确定按钮
        function gogo(){
            document.forms[0].submit();//表示获取当前页面的第一个表单,提交到form里面action所指的方向
        }
        //取消按钮
        function cancel(){
            document.forms[0].action = "";
        }
    </script>
</head>
<body class="login-bg">

<div class="login">
    <div class="message">动物之家后台系统登录</div>
    <div id="darkbannerwrap"></div>

    <form:form action="admin/login" modelAttribute="auser" method="post" class="layui-form" >
        <input name="aname" path="aname" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="apwd" path="apwd" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input class="loginin" onclick="login()" value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20" >
        <div>
            ${msg }
        </div>
    </form:form>
</div>

<script type="text/javascript">

    layui.extend({
        admin: '{/}./static/js/admin'
    });
    // layui.use(['form','admin'], function(){
    //     var form = layui.form
    //         ,admin = layui.admin;
    //     // layer.msg('玩命卖萌中', function(){
    //     //   //关闭后的操作
    //     //   });
    //     //监听提交
    //     form.on('submit(login)', function(data){
    //         // alert(888)
    //         layer.msg(JSON.stringify(data.field),function(){
    //             location.href='./index.html'
    //         });
    //         return false;
    //     });
    // });
</script>
<!-- 底部结束 -->
</body>
</html>
