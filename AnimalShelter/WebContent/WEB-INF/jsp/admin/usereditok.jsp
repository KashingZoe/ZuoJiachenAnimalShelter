<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/24
  Time: 18:39
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
    <title>Title</title>
    <link rel="stylesheet" href="static/css/font.css">
    <link rel="stylesheet" href="static/css/weadmin.css">

    <style>
        .myfont{

            
            margin: 0 auto;
            font-size: xx-large;
            
            
        }

        *{
            margin: 0;
            padding: 0;
            background-color: #EAEAEA;
        }
        div{
            width: 150px;
            height: 50px;
            /*background-color: #1E90FF;*/
        }
        .center-in-center{
            position: absolute;
            top: 50%;
            left: 55%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
    </style>

</head>
<body>

    <div class="center-in-center" style="font-size: x-large"><p style="align-content: center;">修改成功<i class="layui-icon layui-icon-face-smile"></i></p></div>
    <%--<div class="layui-container">--%>
        <%--<div class="layui-row">--%>
            <%--<div class="layui-col-md4">--%>
                <%----%>
            <%--</div>--%>
            <%--<div class="layui-col-md4">--%>
                <%--<div class="layui-form">--%>
                    <%--<div class="layui-form-item">--%>
                <%--<label class="layui-form-label">修改成功<i class="layui-icon layui-icon-face-smile"></i></label>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="layui-col-md4">--%>
                <%----%>
            <%--</div>--%>

        <%--</div>--%>

        <%----%>
    <%--</div>--%>
    <%--<div class="myfont">--%>

        <%--<label>添加成功</label><i class="layui-icon layui-icon-face-smile"></i>--%>

    <%--</div>--%>



<script src="lib/layui/layui.js" charset="utf-8">
    layui.extend({
        admin: '{/}static/js/admin'
    });
    layui.use(['form', 'jquery','util','admin', 'layer'], function() {
        var form = layui.form,
            $ = layui.jquery,
            util = layui.util,
            admin = layui.admin,
            layer = layui.layer;

        //监听提交
        form.on('submit(add)', function(data) {
            //console.log(data.field);
            var f = data.field;
            //console.log(f.username);
            //console.log(f.sex);
            //var sex = $('input:radio[name="sex"]:checked').val();

            //发异步，把数据提交给php
            // layer.alert("增加成功", {
            //     icon: 6
            // }, function() {
            //     //获取提交成功的时间
            //     var time = new Date();
            //     var timeNow = util.toDateString(time);
            //     // 获得frame索引
            //     var index = parent.layer.getFrameIndex(window.name);
            //
            //
            //     //关闭当前frame
            //     parent.layer.close(index);
            // });
            //return false;
            var index=parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
            window.parent.location.reload();
        });

    });
    //表单验证
    function checkForm(){
        var index=parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
        window.parent.location.reload();
        return true;
    }
</script>
</body>
</html>
