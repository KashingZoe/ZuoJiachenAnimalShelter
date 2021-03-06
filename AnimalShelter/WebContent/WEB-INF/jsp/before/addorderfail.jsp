<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/24
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <meta name="keywords" content="">
    <meta name="description" content="">
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
            width: 60px;
        }
        .mylabel{

            float: left;
            display: block;
            padding: 9px 15px;
            width: 90px;
            font-weight: 400;
            line-height: 20px;
            text-align: center;

        }
        .mytb{
            margin-left: 120px;
            min-height: 36px;
        }
        .mymid{
            margin-left: 10px;
            font-weight: 100;
            color: #000000 !important;
        }
    </style>

</head>
<body>

<div class="fly-header layui-bg-black">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-xs4 layui-col-sm7 layui-col-md8">
                <div class="layui-container">
                    <div class="layui-row">
                        <div class="layui-col-md6">
                            <a class="fly-logo" href="index.html">
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
                                <img src="res/images/mycat.png">
                            </a>
                            <dl class="layui-nav-child">
                                <dd><a href="user/touserset"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                                <dd><a href="/user/tousermessage"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                                <dd><a href="/user/touserindex"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>用户中心</a></dd>
                                <hr style="margin: 5px 0;">
                                <dd><a href="/user/exit" style="text-align: center;">退出</a></dd>
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
            <li class="layui-hide-xs layui-nav-item layui-this"><a href="/before">首页</a></li>
            <li class="layui-nav-item"><a href="/beforeAnimal/toAddAnimal">发布</a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="/beforeAnimal/toAddAnimal">送养发布</a></dd>
                    <dd><a href="/beforeMaster/toAddMaster">寻主发布</a></dd>
                    <dd><a href="/beforePet/toAddPet">寻宠发布</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/beforeVisit/toVisit">宠秀回访</a></li>
            <li class="layui-nav-item"><a href="/beforeNews/newsInfo">科普区</a></li>
            <li class="layui-nav-item"><a href="/beforeFeedback/toAddFeedback">留言板</a></li>

            <!-- 用户登入后显示 -->
            <!-- <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html">我发表的贴</a></li>
            <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html#collection">我收藏的贴</a></li> -->
        </ul>

        <div class="fly-column-right layui-hide-xs">
            <span class="fly-search"><i class="layui-icon"></i></span>
            <a href="javascript:;" class="layui-btn">发表新帖</a>
        </div>
        <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;">
            <a href="javascript:;" class="layui-btn">发表新帖</a>
        </div>
    </div>
</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8 content detail">
            <div class="fly-panel detail-box">
                <div class="fly-panel-title fly-filter" style="padding-left: 0px;color: #b4a992;">
                    <a>宠物领养/详细信息</a>

                </div>
                <div class="detail-about">
                    <h1 style="text-align: center;margin-top: 10px;">申请失败，请重新申请...</h1>
                    <!-- <img src="res/images/fly.jpg" alt="Fly社区"> -->
                </div>



                <div class="detail-body photos" style="margin-top: 0px;">
                    <!-- <p style="margin-bottom: 0px;">内容：</p>
                     <pre style="margin-top: 0px;font-size: large;">
                       <p>   该模版由 layui官方社区（<a href="http://fly.layui.com/" target="_blank">fly.layui.com</a>）倾情提供，只为表明我们对 layui 执着的信念、以及对未来持续加强的承诺。该模版基于 layui 搭建而成，可作为极简通用型社区的页面支撑。</p>
                     </pre> -->

                    <!-- <pre> -->


                    <!-- </pre> -->

                    <!-- 下载<hr>
                    <p>
                      官网：<a href="http://www.layui.com/template/fly/" target="_blank">http://www.layui.com/template/fly/</a><br>
                      码云：<a href="https://gitee.com/sentsin/fly/" target="_blank">https://gitee.com/sentsin/fly/</a><br>
                      GitHub：<a href="https://github.com/layui/fly" target="_blank">https://github.com/layui/fly</a>
                    </p>
                    封面<hr>
                    <p>
                      <img src="res/images/fly.jpg" alt="Fly社区">
                    </p> -->

                </div>
            </div>

            <!-- <div class="fly-panel detail-box" id="flyReply">

              <ul class="jieda" id="jieda">

              </ul>

              <div class="layui-form ">
                <button class="layui-btn">领养宠物</button>
              </div>
            </div> -->
        </div>
        <div class="layui-col-md4">
            <div class="fly-panel" style="padding: 20px 0; text-align: center;">
                <img src="res/images/weixin.jpg" style="max-width: 100%;" alt="layui">
                <p style="position: relative; color: #666;">微信扫码关注 动物之家 公众号</p>
                <p style="position: relative; color: #666;">了解更多信息</p>
            </div>
            <div class="fly-panel fly-link">
                <h3 class="fly-panel-title">友情链接</h3>
                <dl class="fly-panel-main">
                    <dd><a href="https://www.chongshe.cn/" target="_blank">我的宠舍-权威宠物科普知识平台</a><dd>

                    <dd><a href="mailto:xianxin@layui-inc.com?subject=%E7%94%B3%E8%AF%B7Fly%E7%A4%BE%E5%8C%BA%E5%8F%8B%E9%93%BE" class="fly-link">申请友链</a><dd>
                </dl>
            </div>

        </div>
    </div>
</div>

<div class="fly-footer">
    <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
    <p>
        <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
        <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
        <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
    </p>
</div>

<script src="res/layui/layui.js"></script>
<script>

    layui.config({
        version: "3.0.0"
        ,base: 'res/mods/'
    }).extend({
        fly: 'index'
    }).use(['fly', 'face'], function(){
        var $ = layui.$
            ,fly = layui.fly;
        //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
        /*
        $('.detail-body').each(function(){
          var othis = $(this), html = othis.html();
          othis.html(fly.content(html));
        });
        */
    });
</script>

</body>
</html>
