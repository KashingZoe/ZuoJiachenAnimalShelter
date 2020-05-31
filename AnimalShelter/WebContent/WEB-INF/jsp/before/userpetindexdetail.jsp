<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/27
  Time: 11:15
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

    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">
    <link rel="shortcut icon" href="static/images/paw.png" type="image/png" />
    <style>
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
    <script type="text/javascript">
        function checkDel(id){
            if(window.confirm("是否删除该发布"+id+"？")){
                window.location.href = "/user/deleteAUserPet?id="+id;
            }
        }
    </script>
</head>
<body>
<div class="fly-header layui-bg-black" style="background-color: #009688!important;">
    <div class="layui-container">
        <div class="layui-row">

            <div class="layui-col-xs4 layui-col-sm7 layui-col-md8">
                <div class="layui-container">
                    <div class="layui-row">
                        <div class="layui-col-md6">
                            <a class="fly-logo" href="before">

                                <img src="res/images/dog.png" width="50px" height="40px">

                                <p style="color: #E6162D;font-size: x-large;float: right;margin-top: 5px;">动物之家</p>

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
                                <dd><a href="user/touserset"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                                <dd><a href="/user/tousermessage"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                                <dd><a href="/user/touserindex"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                                <hr style="margin: 5px 0;">
                                <dd><a href="/user/exit" style="text-align: center;">退出</a></dd>
                            </dl>
                        </li>

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



<div class="layui-container fly-marginTop fly-user-main">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
        <li class="layui-nav-item">
            <a href="/before">
                <i class="layui-icon">&#xe609;</i>
                我的主页
            </a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="/user/touserindex">
                <i class="layui-icon">&#xe612;</i>
                用户中心
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="/user/touserset">
                <i class="layui-icon">&#xe620;</i>
                基本设置
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="/user/tousermessage">
                <i class="layui-icon">&#xe611;</i>
                我的消息
            </a>
        </li>
    </ul>

    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>

    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>


    <div class="fly-panel fly-panel-user" pad20>
        <!--
        <div class="fly-msg" style="margin-top: 15px;">
          您的邮箱尚未验证，这比较影响您的帐号安全，<a href="activate.html">立即去激活？</a>
        </div>
        -->
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title" id="LAY_mine">
                <li data-type="mine-jie" lay-id="index" class="layui-this">寻宠发布</li>
            </ul>
            <div class="layui-tab-content" style="padding: 20px 0;">

                <h1 style="text-align: center;">${petList.ptitle}</h1>
                <div class="fly-panel detail-box">
                    <div class="detail-about" style="text-align: center">
                        <img alt="" width="60%" height="40%" src="logos/${petList.ppicture}"/>
                    </div>

                    <div class="detail-body photos">

                        <p>
                                ${petList.pinfo}
                        </p>

                        <!-- <pre> -->
                        <div class="detail-about" style="padding-left: 0px;color: #000000;">
                            <form class="layui-form" action="" style="margin-left: 0px;">
                                <%--<div class="layui-form-item">--%>
                                    <%--<label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">种类</label>--%>
                                    <%--<div class="layui-input-block mytb">--%>
                                        <%--<div class="layui-form-mid layui-word-aux mymid">${petList.kindname}</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>

                                <div class="layui-form-item">
                                    <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">性别</label>
                                    <div class="layui-input-block mytb">
                                        <div class="layui-form-mid layui-word-aux mymid">${petList.psex}</div>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">年龄</label>
                                    <div class="layui-input-block mytb">
                                        <div class="layui-form-mid layui-word-aux mymid">${petList.pyear}</div>
                                    </div>
                                </div>

                                <div class="layui-form-item">
                                    <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">丢失时间</label>
                                    <div class="layui-input-block mytb">
                                        <div class="layui-form-mid layui-word-aux mymid">${petList.ptime}</div>
                                    </div>
                                </div>

                                    <a onclick="checkDel('${petList.id}')"><i class="layui-icon" style="font-size: 30px; color: #CC0000;">&#xe640;</i></a>

                            </form>
                        </div>

                    </div>
                </div>



                            <!-- <em>661阅/10答</em> -->



                    <div id="LAY_page">



                    </div>
                </div>
                <div class="layui-tab-item">
                    <ul class="mine-view jie-row">
                        <li>
                            <a class="jie-title" href="jie/detail.html" target="_blank">基于 layui 的极简社区页面模版</a>
                            <i>收藏于23小时前</i>  </li>
                    </ul>
                    <div id="LAY_page1"></div>
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
