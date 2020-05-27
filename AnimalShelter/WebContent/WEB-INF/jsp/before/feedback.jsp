<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/26
  Time: 18:23
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
    <title>动物之家</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">

    <link rel="shortcut icon" href="static/images/paw.png" type="image/png" />
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
            left: 12px;
            width: 55px;
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
                            <a class="fly-logo" href="before">

                                <img src="res/images/dog.png" width="50px" height="40px">


                                <p style="color: #E6162D;font-size: x-large;float: right;margin-top: 5px;">动物之家</p>

                                <!-- <img src="../res/images/mylogo.png" alt="layui" width="50px" height="50px" style="float: left;"> -->
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

                    <c:if test="${bruser!=null}">

                        <!-- 登入后的状态 -->

                        <li class="layui-nav-item">
                            <a class="fly-nav-avatar" href="javascript:;">
                                <cite class="layui-hide-xs"></cite>
                                <i class="iconfont icon-renzheng layui-hide-xs" title="">欢迎</i>

                                <i class="layui-badge fly-badge-vip layui-hide-xs">${bruser.bname}</i>
                                <img src="../res/images/mycat.png">
                            </a>
                            <dl class="layui-nav-child">
                                <dd><a href="user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                                <dd><a href="user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                                <dd><a href="user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                                <hr style="margin: 5px 0;">
                                <dd><a href="/user/logout/" style="text-align: center;">退出</a></dd>
                            </dl>
                        </li>


                        <%--欢迎 ${bruser.bemail }--%>


                    </c:if>
                    <c:if test="${bruser==null}">

                        <!-- 未登入的状态 -->
                        <li class="layui-nav-item">
                            <a class="iconfont icon-touxiang layui-hide-xs" href="toLogin"></a>
                        </li>
                        <li class="layui-nav-item" >
                            <a href="toLogin" style="color: #E8E8E8;">登入</a>
                        </li>
                        <li class="layui-nav-item">
                            <a href="toRegister" style="color: #E8E8E8;">注册</a>
                        </li>
                        <li class="layui-nav-item layui-hide-xs">
                            <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>
                        </li>
                        <li class="layui-nav-item layui-hide-xs">
                            <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>
                        </li>

                    </c:if>

                </ul>
            </div>


        </div>
    </div>
</div>



<!--导航栏-->
<div class="fly-panel fly-column">
    <div class="layui-container">
        <ul class="layui-clear layui-nav">
            <li class="layui-hide-xs layui-nav-item"><a href="/before">首页</a></li>
            <li class="layui-nav-item"><a href="/beforeAnimal/toAddAnimal">发布</a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="/beforeAnimal/toAddAnimal">送养发布</a></dd>
                    <dd><a href="/beforeAnimal/toAddMaster">寻主发布</a></dd>
                    <dd><a href="/beforeAnimal/toAddPet">寻宠发布</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/beforeVisit/toVisit">宠秀回访</a></li>
            <li class="layui-nav-item"><a href="/beforeNews/newsInfo">科普区</a></li>
            <li class="layui-nav-item layui-this"><a href="/beforeFeedback/toAddFeedback">留言板</a></li>
            <!-- <li><a href="jie/index.html">公告</a></li>
            <li><a href="jie/index.html">动态</a></li> -->
            <!-- <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> -->

            <!-- 用户登入后显示 -->
            <!-- <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html">我发表的贴</a></li>
            <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html#collection">我收藏的贴</a></li> -->
        </ul>

        <div class="fly-column-right layui-hide-xs">
            <span class="fly-search"><i class="layui-icon"></i></span>
            <a href="jie/add.html" class="layui-btn">发表新帖</a>
        </div>
        <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;">
            <a href="jie/add.html" class="layui-btn">发表新帖</a>
        </div>
    </div>
</div>


<div class="layui-container fly-marginTop">
    <div class="fly-panel" pad20 style="padding-top: 5px;">
        <!--<div class="fly-none">没有权限</div>-->
        <div class="layui-form layui-form-pane">
            <div class="layui-tab layui-tab-brief" lay-filter="user">
                <ul class="layui-tab-title">
                    <li class="layui-this">留言板<!-- 编辑帖子 --></li>
                </ul>
                <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                    <div class="layui-tab-item layui-show">

                        <form:form class="layui-form" action="beforeFeedback/addAfeedback" method="post" modelAttribute="feedback" name="regForm">
                            <div class="layui-row layui-col-space15 layui-form-item">

                                <div class="layui-col-md6">
                                    <label for="L_title" class="layui-form-label">标题</label>
                                    <div class="layui-input-block">
                                        <form:input type="text" id="L_title" path="ftitle" name="ftitle" lay-verify="required" autocomplete="off" class="layui-input"/>
                                        <!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
                                    </div>
                                </div>
                            </div>

                            <div class="layui-form-item layui-form-text">
                                <div class="layui-input-block">
                                    <form:textarea id="L_content" path="fcontent" name="fcontent" lay-verify="required" placeholder="详细描述" class="layui-textarea fly-editor" style="height: 260px;"></form:textarea>
                                </div>
                            </div>



                            <div class="layui-form-item">
                                <button class="layui-btn" type="submit" lay-filter="*" lay-submit>立即发布</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">
    <p><a href="javascript:;" target="_blank">动物之家</a> 2020 &copy; <a href="javascript:;" target="_blank">zuojiachen 出品</a></p>
</div>

<script src="res/layui/layui.js"></script>

<script>
    layui.config({
        version: "3.0.0"
        ,base: 'res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');

</script>


</body>
</html>
