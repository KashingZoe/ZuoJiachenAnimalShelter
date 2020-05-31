<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/23
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>

<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>动物之家</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="static/css/font.css">
    <link rel="stylesheet" href="static/css/weadmin.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



</head>

<body>
<div class="weadmin-body">
    <form:form class="layui-form" action="beforeVisit/addVisit" method="post" modelAttribute="visit" name="regForm" enctype="multipart/form-data">


        <div class="layui-form-item">
            <label for="L_ntitle" class="layui-form-label">标题</label>
            <div class="layui-input-inline">
                <form:input type="text" id="L_ntitle" path="vtitle" name="vtitle" lay-verify="required" autocomplete="off" class="layui-input"/>
            </div>
            <div class="layui-form-mid layui-word-aux">${msg}</div>
        </div>

        <div class="layui-form-item">
            <label for="L_ncontent" class="layui-form-label">内容</label>
            <div class="layui-input-inline">
                <form:textarea path="vcontent" placeholder="请输入内容" class="layui-textarea"  id="L_ncontent" name="L_ncontent" lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label for="vpicture" class="layui-form-label">上传图片</label>
            <div class="layui-input-inline">
                <input type="file" id="vpicture" path="visitImage" name="visitImage"  lay-verify="required" autocomplete="off" class="layui-btn" style="width: 190px"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                 <button class="layui-btn" type="submit" lay-filter="*" lay-submit>上传宠秀</button>
            </div>
        </div>
    </form:form>
</div>
<script src="lib/layui/layui.js" charset="utf-8"></script>

<script>
    layui.extend({
        admin: '{/}static/js/admin'
    });
    layui.use('form', function(){
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功

        //……

        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来进行渲染
        form.render();
    });


</script>

</body>

</html>