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
    <title>添加用户</title>
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
    <form:form class="layui-form" action="adminOrder/editOrder" method="post" modelAttribute="getanimal" name="regForm" enctype="multipart/form-data">
        <div class="layui-form-item">
            <label for="L_ID" class="layui-form-label">ID</label>
        <div class="layui-input-inline">
            <%--<input type="text" id="L_email" path="kindid" name="kindid" required lay-verify="email" autocomplete="off" class="layui-input">--%>
                <form:input type="text" readonly="true" id="L_ID" path="id" name="id" lay-verify="required" autocomplete="off" class="layui-input"/>
        </div>

        <div class="layui-form-mid layui-word-aux">${msg}</div>
        </div>
        <div class="layui-form-item">
            <label for="L_buserid" class="layui-form-label">用户ID</label>
            <div class="layui-input-inline">
                <form:input type="text" readonly="true" id="L_buserid" path="buserid" name="buserid" lay-verify="required" autocomplete="off" class="layui-input"/>
                <%--<form:radiobutton path="lsex" value="男" title="男" checked="checked"/>--%>
                <%--<form:radiobutton path="lsex" value="女" title="女" />--%>
                <%--<input type="text" id="L_lsex" path="lsex" name="lsex" required lay-verify="required" autocomplete="off" class="layui-input">--%>
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否有房屋</label>
            <div class="layui-input-inline">
                <form:radiobutton path="ghome" value="是" title="是" />
                <form:radiobutton path="ghome" value="否" title="否" />
                    <%--<form:input type="text" id="L_ltitle" path="ltitle" name="ltitle" lay-verify="required" autocomplete="off" class="layui-input"/>--%>
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否有孩子</label>
            <div class="layui-input-inline">
                <form:radiobutton path="gchildren" value="是" title="是" />
                <form:radiobutton path="gchildren" value="否" title="否" />
                    <%--<form:input type="text" id="lyear" path="lyear" name="lyear" lay-verify="required" autocomplete="off" class="layui-input"/>--%>
            </div>

        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">是否已婚</label>
            <div class="layui-input-inline">
                <form:radiobutton path="gmarried" value="是" title="是" />
                <form:radiobutton path="gmarried" value="否" title="否" />
                    <%--<form:input type="text" id="buserid" path="buserid" name="buserid" lay-verify="required" autocomplete="off" class="layui-input"/>--%>
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">审核</label>
            <div class="layui-input-inline">
                <form:radiobutton path="status" value="1" title="通过" />
                <form:radiobutton path="status" value="2" title="拒绝" />
                <%--<input type="text" id="lbirth" path="lbirth" name="lbirth" required lay-verify="required" autocomplete="off" class="layui-input">--%>
            </div>
        </div>
        <%--<div class="layui-form-item">--%>
            <%--<label  class="layui-form-label">是否接种疫苗</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<form:radiobutton path="lval" value="是" title="是" checked="checked"/>--%>
                <%--<form:radiobutton path="lval" value="否" title="否" />--%>
                <%--&lt;%&ndash;<input type="text" id="lval" path="lval" name="lval" required lay-verify="required" autocomplete="off" class="layui-input">&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label  class="layui-form-label">是否驱虫</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<form:radiobutton path="lbug" value="是" title="是" checked="checked"/>--%>
                <%--<form:radiobutton path="lbug" value="否" title="否" />--%>
                    <%--&lt;%&ndash;<input type="text" id="lbug" path="lbug" name="lbug" required lay-verify="required" autocomplete="off" class="layui-input">&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label for="lpicture" class="layui-form-label">上传图片</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<form:input type="file" id="lpicture" path="logoImage" name="logoImage" lay-verify="required" autocomplete="off" class="layui-btn" style="width: 190px"/>--%>
                <%--<!-- 从数据库取出的文件名 -->--%>
                <%--<c:if test="${animal.lpicture != ''}">--%>
                    <%--<img alt="" width="190" height="100" src="logos/${animal.lpicture}"/>--%>
                <%--</c:if>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label for="linfo" class="layui-form-label">宠物描述</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<form:textarea path="linfo" placeholder="请输入内容" class="layui-textarea"  id="linfo" name="linfo" lay-verify="required" autocomplete="off"/>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label for="ltime" class="layui-form-label">时间</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" id="ltime" path="ltime" name="ltime" required lay-verify="required" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="layui-form-item">--%>
            <%--<label for="city" class="layui-form-label">地区</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<div class="wrap"><input class="layui-input" path="barea" name="barea" id="city" type="text" placeholder="请选择" autocomplete="off" readonly="true"/><s></s></div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label for="L_add" class="layui-form-label">详细地址</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" id="L_add" path="badd" name="badd"  equired lay-verify="required" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>
            <%--<div class="layui-form-mid layui-word-aux">如街道、门牌号、小区、楼栋号、单元室等</div>--%>
        <%--</div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                 <button class="layui-btn" type="submit" lay-filter="*" lay-submit>修改订单</button>
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

    // layui.use(['form', 'jquery','util','admin', 'layer'], function() {
    //     var form = layui.form,
    //         $ = layui.jquery,
    //         util = layui.util,
    //         admin = layui.admin,
    //         layer = layui.layer;
    //
    //     //自定义验证规则
    //     form.verify({
    //         nikename: function(value) {
    //             if(value.length < 5) {
    //                 return '昵称至少得5个字符啊';
    //             }
    //         },
    //         pass: [/(.+){6,12}$/, '密码必须6到12位'],
    //         repass: function(value) {
    //             if($('#L_pass').val() != $('#L_repass').val()) {
    //                 return '两次密码不一致';
    //             }
    //         }
    //     });
    //     //失去焦点时判断值为空不验证，一旦填写必须验证
    //     $('input[name="email"]').blur(function(){
    //         //这里是失去焦点时的事件
    //         if($('input[name="email"]').val()){
    //             $('input[name="email"]').attr('lay-verify','email');
    //         }else{
    //             $('input[name="email"]').removeAttr('lay-verify');
    //         }
    //     });
    //
    //     //监听提交
    //     form.on('submit(add)', function(data) {
    //         //console.log(data.field);
    //         var f = data.field;
    //         //console.log(f.username);
    //         //console.log(f.sex);
    //         //var sex = $('input:radio[name="sex"]:checked').val();
    //
    //         //发异步，把数据提交给php
    //         layer.alert("增加成功", {
    //             icon: 6
    //         }, function() {
    //             //获取提交成功的时间
    //             var time = new Date();
    //             var timeNow = util.toDateString(time);
    //             // 获得frame索引
    //             var index = parent.layer.getFrameIndex(window.name);
    //
    //             var _len = parent.$('#memberList tr').length;
    //             alert(_len);
    //             parent.$('#memberList').append(
    //                 '<tr data-id="' + _len + '">' +
    //                 '<td>'+
    //                 '<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="' + _len + '"><i class="layui-icon">&#xe605;</i></div>'+
    //                 '</td>'+
    //                 '<td>' + _len + '</td>'+
    //                 '<td>'+f.username+'</td>'+
    //                 '<td>'+f.sex+'</td>'+
    //                 '<td>'+f.phone+'</td>'+
    //                 '<td>'+f.email+'</td>'+
    //                 '<td>北京市西城区</td>'+
    //                 '<td>'+timeNow+'</td>'+
    //                 '<td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span></td>'+
    //                 '<td class="td-manage">'+
    //                 '<a onclick="member_stop(this,\'10001\')" href="javascript:;" title="启用"><i class="layui-icon">&#xe601;</i></a>'+
    //                 '<a title="编辑" onclick="WeAdminShow(\'编辑\',\'./edit.html\',600,400)" href="javascript:;"><i class="layui-icon">&#xe642;</i></a>'+
    //                 '<a onclick="WeAdminShow(\'修改密码\',\'./password.html\',600,400)" title="修改密码" href="javascript:;"><i class="layui-icon">&#xe631;</i></a>'+
    //                 '<a title="删除" onclick="member_del(this,\'要删除的id\')" href="javascript:;"><i class="layui-icon">&#xe640;</i></a>'+
    //                 '</td>'+
    //                 '</tr>'
    //             );
    //             //关闭当前frame
    //             parent.layer.close(index);
    //         });
    //         return false;
    //     });
    //
    // });
</script>

</body>

</html>