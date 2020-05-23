<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/22
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

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

<div class="fly-panel fly-column">
    <div class="layui-container">
        <ul class="layui-clear layui-nav">
            <li class="layui-hide-xs layui-nav-item layui-this"><a href="/before">首页</a></li>
            <li class="layui-nav-item"><a href="add01.html">发布</a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="add01.html">送养发布</a></dd>
                    <dd><a href="add02.html">寻主发布</a></dd>
                    <dd><a href="add03.html">寻宠发布</a></dd>
                </dl>

            </li>
            <li class="layui-nav-item"><a href="animalvisit.html">宠秀回访</a></li>
            <li class="layui-nav-item"><a href="sciarea.html">科普区</a></li>
            <li class="layui-nav-item"><a href="review.html">留言板</a></li>
            <!-- <li><a href="jie/index.html">公告</a></li>
            <li><a href="jie/index.html">动态</a></li> -->
            <!-- <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> -->

            <!-- 用户登入后显示 -->
            <!-- <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html">我发表的贴</a></li>
            <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html#collection">我收藏的贴</a></li> -->
        </ul>

        <div class="fly-column-right layui-hide-xs">
            <span class="fly-search"><i class="layui-icon"></i></span>
            <a href="jie/add.html" class="layui-btn">搜索新帖</a>
        </div>
        <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;">
            <a href="jie/add.html" class="layui-btn">搜索新帖</a>
        </div>
    </div>
</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8 content detail">
            <div class="fly-panel detail-box">
                <div class="fly-panel-title fly-filter" style="padding-left: 0px;color: #b4a992;">
                    <a>宠物展示</a>

                </div>
                <h1 style="text-align: center;">${animalList.ltitle}</h1>

                <div class="detail-about">
                    <!-- <a class="fly-avatar" href="../user/home.html">
                      <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">
                    </a>
                    <div class="fly-detail-user">
                      <a href="../user/home.html" class="fly-link">
                        <cite>贤心</cite>
                        <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i>
                        <i class="layui-badge fly-badge-vip">VIP3</i>
                      </a>
                      <span>2017-11-30</span>
                    </div>
                    <div class="detail-hits" id="LAY_jieAdmin" data-id="123">
                      <span style="padding-right: 10px; color: #FF7200">悬赏：60飞吻</span>
                      <span class="layui-btn layui-btn-xs jie-admin" type="edit"><a href="add.html">编辑此贴</a></span>
                    </div> -->
                    <img alt="" width="585px" height="350px" src="logos/${animalList.lpicture}"/>
                </div>
                <div class="detail-body photos">
                    <p>
                        ${animalList.linfo}
                    </p>
                    <%--<p>更新日志：</p>--%>
                    <!-- <pre> -->
                    <div class="detail-about" style="padding-left: 0px;color: #000000;">
                        <form class="layui-form" action="" style="margin-left: 0px;">
                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">种类</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.kindname}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">性别</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.lsex}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">年龄</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.lyear}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">是否绝育</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.lbirth}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">是否接种疫苗</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.lval}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">是否杀虫</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.lbug}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">发布时间</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${animalList.ltime}</div>
                                </div>
                            </div>

                        </form>

                    </div>

                    <!-- </pre> -->

                    <!-- 下载<hr>
                    <p>
                      官网：<a href="http://www.layui.com/template/fly/" target="_blank">http://www.layui.com/template/fly/</a><br>
                      码云：<a href="https://gitee.com/sentsin/fly/" target="_blank">https://gitee.com/sentsin/fly/</a><br>
                      GitHub：<a href="https://github.com/layui/fly" target="_blank">https://github.com/layui/fly</a>
                    </p>
                    封面<hr>
                    <p>
                      <img src="../../res/images/fly.jpg" alt="Fly社区">
                    </p> -->

                    <div class="layui-form " align="center">
                        <button class="layui-btn layui-btn-lg layui-btn-radius" onclick="WeAdminOrder('编辑','beforeOrder/orderSubmit?id=${animalList.id}',600, 400)">领养宠物</button>

                    </div>
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
            <dl class="fly-panel fly-list-one">
                <dt class="fly-panel-title">本周热议</dt>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>

                <!-- 无数据时 -->
                <!--
                <div class="fly-none">没有相关数据</div>
                -->
            </dl>

            <div class="fly-panel">
                <div class="fly-panel-title">
                    这里可作为广告区域
                </div>
                <div class="fly-panel-main">
                    <a href="http://layim.layui.com/?from=fly" target="_blank" class="fly-zanzhu" time-limit="2017.09.25-2099.01.01" style="background-color: #5FB878;">LayIM 3.0 - layui 旗舰之作</a>
                </div>
            </div>

            <div class="fly-panel" style="padding: 20px 0; text-align: center;">
                <img src="res/images/weixin.jpg" style="max-width: 100%;" alt="layui">
                <p style="position: relative; color: #666;">微信扫码关注 layui 公众号</p>
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
    // layui.cache.page = 'jie';
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
<script src="static/js/admin.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>