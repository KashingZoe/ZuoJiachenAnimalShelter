<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/9
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>登入</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">
    <style>
        .layui-bg-black {
            background-color: #009688!important;
        }
        .layui-nav {
            background-color: #fbfbfb;

        }
        .layui-nav .layui-nav-item a{
            color: #009688;
        }
        .layui-nav .layui-nav-item a:hover{
            color: #2E2D3C!important;
        }
        .fly-column ul li.layui-this:after{
            bottom: 0px;
            height: 2px;
        }
    </style>
    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function(){
            var element = layui.element;

            //…
        });
    </script>
</head>
<body>

<div class="fly-header layui-bg-black">
    <div class="layui-container">
        <div class="layui-row">



            <div class="layui-col-xs4 layui-col-sm7 layui-col-md8">
                <div class="layui-container">
                    <div class="layui-row">
                        <div class="layui-col-md6">
                            <a class="fly-logo" href="/before">
                                <img src="res/images/dog.png" width="50px" height="40px">

                                <p style="color: #E6162D;font-size: x-large;float: right;margin-top: 5px;">动物之家</p>
                                <!-- <img src="res/images/mylogo.png" alt="layui" width="50px" height="50px" style="float: left;"> -->
                                <!-- <div style="color: #E6162D;font-size: x-large;float: left;"><strong style="float: left;">AnimalShelter</strong></div> -->
                                <img src="res/images/cat.png" width="50px" height="40px" style="float: right;">
                            </a>
                        </div>
                        <div class="layui-col-md6">
                            <strong style="float: right; margin-top: 20px;"> 用领养代替购买，拒绝残害小动物！！！</strong>
                        </div>
                    </div>


                </div>
            </div>


            <div class="layui-col-xs4 layui-col-sm5 layui-col-md4">
                <!-- <ul class="layui-nav fly-nav layui-hide-xs">
                  <li class="layui-nav-item layui-this">
                    <a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>
                  </li>
                  <li class="layui-nav-item">
                    <a href="case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>
                  </li>
                  <li class="layui-nav-item">
                    <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
                  </li>
                </ul> -->
                <ul class="layui-nav fly-nav-user">

                    <!-- 未登入的状态 -->
                    <li class="layui-nav-item">
                        <a class="iconfont icon-touxiang layui-hide-xs" href="userlogin.html"></a>
                    </li>
                    <li class="layui-nav-item" >
                        <a href="/toLogin" style="color: #E8E8E8;">登入</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="/toRegister" style="color: #E8E8E8;">注册</a>
                    </li>
                    <li class="layui-nav-item layui-hide-xs">
                        <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>
                    </li>
                    <li class="layui-nav-item layui-hide-xs">
                        <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>
                    </li>

                    <!-- 登入后的状态 -->

                    <!-- <li class="layui-nav-item">
                      <a class="fly-nav-avatar" href="javascript:;">
                        <cite class="layui-hide-xs">贤心</cite>
                        <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
                        <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
                        <img src="res/images/mycat.png">
                      </a>
                      <dl class="layui-nav-child">
                        <dd><a href="user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                        <dd><a href="user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                        <dd><a href="user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                        <hr style="margin: 5px 0;">
                        <dd><a href="/user/logout/" style="text-align: center;">退出</a></dd>
                      </dl>
                    </li> -->

                </ul>
            </div>





        </div>
    </div>
</div>

<div class="layui-container fly-marginTop">
    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登入</li>
                <li><a href="/toRegister">注册</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form:form action="user/login" modelAttribute="buser" method="post" class="layui-form"  >
                            <div class="layui-form-item">
                                <label for="L_email" class="layui-form-label">邮箱</label>
                                <div class="layui-input-inline">
                                    <input type="text" path="bemail" id="L_email" name="email"  lay-verify="required" autocomplete="off" class="layui-input"/>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_pass" class="layui-form-label">密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" path="bpwd" id="L_pass" name="pass" lay-verify="required" autocomplete="off" class="layui-input"/>
                                </div>
                            </div>
                            <%--<div class="layui-form-item">--%>
                                <%--<label for="L_vercode" class="layui-form-label">人类验证</label>--%>
                                <%--<div class="layui-input-inline">--%>
                                    <%--<input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">--%>
                                <%--</div>--%>
                                <%--<div class="layui-form-mid">--%>
                                    <%--<span style="color: #c00;">{{d.vercode}}</span>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <div class="layui-form-item">
                                <button type="submit" class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
                                <span style="padding-left:20px;">
                  <a href="forget.html">忘记密码？</a>
                </span>
                            </div>
                            <div class="layui-form-item fly-form-app">
                                <span>或者使用社交账号登入</span>
                                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">
    <p><a href="#" target="_blank">动物之家</a> 2020 &copy; <a href="#" target="_blank">zuojiachen 出品</a></p>
    <%--<p>--%>
        <%--<a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>--%>
        <%--<a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>--%>
        <%--<a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>--%>
    <%--</p>--%>
</div>

<script src="res/layui/layui.js"></script>
<script>
    // layui.cache.page = 'user';
    // layui.cache.user = {
    //     username: '游客'
    //     ,uid: -1
    //     ,avatar: 'res/images/avatar/00.jpg'
    //     ,experience: 83
    //     ,sex: '男'
    // };
    layui.config({
        version: "3.0.0"
        ,base: 'res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

</body>
</html>
