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
    <!--三级联动-->
    <link rel="stylesheet" href="res/css/global.css">
    <script type="text/javascript" src="res/js/Popt.js"></script>
    <script type="text/javascript" src="res/js/city.json.js"></script>
    <script type="text/javascript" src="res/js/citySet.js"></script>
    <script type="text/javascript" src="res/js/jquery.min.js"></script>
    <style>
        ._citys { width: 450px; display: inline-block; border: 2px solid #eee; padding: 5px; position: relative; background-color: #91B493;}
        ._citys span { color: #05920a; height: 15px; width: 15px; line-height: 15px; text-align: center; border-radius: 3px; position: absolute; right: 10px; top: 10px; border: 1px solid #05920a; cursor: pointer; }
        ._citys0 { width: 95%; height: 34px; line-height: 34px; display: inline-block; border-bottom: 2px solid #05920a; padding: 0px 5px; font-size:14px; font-weight:bold; margin-left:6px; }
        ._citys0 li { display: inline-block; line-height: 34px; font-size: 15px; color: #888; width: 80px; text-align: center; cursor: pointer; }
        ._citys1 { width: 100%; display: inline-block; padding: 10px 0; }
        ._citys1 a { width: 83px; height: 35px; display: inline-block; background-color: #f5f5f5; color: #666; margin-left: 6px; margin-top: 3px; line-height: 35px; text-align: center; cursor: pointer; font-size: 12px; border-radius: 5px; overflow: hidden; }
        ._citys1 a:hover { color: #fff; background-color: #05920a; }
        .AreaS { background-color: #05920a !important; color: #fff !important; }
    </style>
    <script type="text/javascript">



        //表单验证
        function checkForm(){
            var bpwd = document.regForm.bpwd.value;
            var repass = document.regForm.repass.value;
            if(bpwd != repass){
                alert("两次密码不一致！");
                return false;
            }
            document.regForm.submit();
            return true;
        }
    </script>
</head>

<body>
<div class="weadmin-body">
    <form:form class="layui-form" action="adminUser/addUser" method="post" modelAttribute="buser" name="regForm">
        <div class="layui-form-item">
        <label for="L_email" class="layui-form-label">邮箱</label>
        <div class="layui-input-inline">
            <input type="text" id="L_email" path="bemail" name="bemail" value="${buser.bemail}" required lay-verify="email" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">将会成为您唯一的登入名</div>
        <div class="layui-form-mid layui-word-aux">${msg}</div>
        </div>
        <div class="layui-form-item">
            <label for="L_username" class="layui-form-label">名字</label>
            <div class="layui-input-inline">
                <input type="text" id="L_username" path="bname" name="bname" value="${buser.bname}" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">*先生/*女士</div>
        </div>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" path="bpwd" name="bpwd" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">6到16个字符</div>
        </div>
        <div class="layui-form-item">
            <label for="repass" class="layui-form-label">确认密码</label>
            <div class="layui-input-inline">
                <input type="password" id="repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>

        </div>
        <div class="layui-form-item">
            <label for="L_qq" class="layui-form-label">QQ</label>
            <div class="layui-input-inline">
                <input type="text" id="L_qq" path="bqq" name="bqq" value="${buser.bqq}" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_wechat" class="layui-form-label">微信</label>
            <div class="layui-input-inline">
                <input type="text" id="L_wechat" path="bwechat" name="bwechat" value="${buser.bwechat}" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_tel" class="layui-form-label">电话</label>
            <div class="layui-input-inline">
                <input type="text" id="L_tel" path="btel" name="btel" value="${buser.btel}" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="city" class="layui-form-label">地区</label>
            <div class="layui-input-inline">
                <div class="wrap"><input class="layui-input" path="barea" name="barea"  value="${buser.barea}" id="city" type="text" placeholder="请选择" autocomplete="off" readonly="true"/><s></s></div>
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_add" class="layui-form-label">详细地址</label>
            <div class="layui-input-inline">
                <input type="text" id="L_add" path="badd" name="badd" value="${buser.badd}" equired lay-verify="required" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">如街道、门牌号、小区、楼栋号、单元室等</div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <div class="layui-input-inline">
                 <button class="layui-btn" onclick="checkForm()" lay-filter="*" lay-submit>添加用户</button>
            </div>
        </div>
    </form:form>
</div>
<script src="lib/layui/layui.js" charset="utf-8"></script>

<script>
    layui.extend({
        admin: '{/}static/js/admin'
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
<script type="text/javascript">
    $("#city").click(function (e) {
        SelCity(this,e);
    });
    $("s").click(function (e) {
        SelCity(document.getElementById("city"),e);
    });
</script>
</body>

</html>