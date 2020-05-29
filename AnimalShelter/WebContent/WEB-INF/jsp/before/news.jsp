<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/26
  Time: 10:59
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
         <%--设置基础路径，href属性里的链接会以这个为基准，无需再写http://localhost:8080/项目名称--%>
         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
         <meta name="keywords" content="">
         <meta name="description" content="">
         <title>动物之家</title>
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
                 text-decoration: none;
                 color: #009688;
             }
             .layui-nav .layui-nav-item a:hover{
                 color: #2E2D3C!important;
             }
             .fly-column ul li.layui-this:after{
                 bottom: 0px;
                 height: 2px;
                 left: 16px;
                 width: 60px;
             }
             .fly-avatar img {

                 width: 55px;

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
                            <a class="fly-logo" href="before">

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

<!-- 导航栏 -->
<div class="fly-panel fly-column">
    <div class="layui-container">
        <ul class="layui-clear layui-nav">
            <li class="layui-hide-xs layui-nav-item"><a href="/before">首页</a></li>
            <li class="layui-nav-item"><a href="/beforeAnimal/toAddAnimal">发布</a>
                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                    <dd><a href="/beforeAnimal/toAddAnimal">送养发布</a></dd>
                    <dd><a href="/beforeMaster/toAddMaster">寻主发布</a></dd>
                    <dd><a href="/beforePet/toAddPet">寻宠发布</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/beforeVisit/toVisit">宠秀回访</a></li>
            <li class="layui-nav-item layui-this"><a href="/beforeNews/newsInfo">科普区</a></li>
            <li class="layui-nav-item"><a href="/beforeFeedback/toAddFeedback">留言板</a></li>
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


<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="fly-panel" style="margin-bottom: 0;">

                <div class="fly-panel-title fly-filter">
                    <a href="" class="layui-this">按最新</a>
                    <%--<span class="fly-mid"></span>--%>
                    <%--<a href="">未结</a>--%>
                    <%--<span class="fly-mid"></span>--%>
                    <%--<a href="">已结</a>--%>
                    <%--<span class="fly-mid"></span>--%>
                    <%--<a href="">精华</a>--%>
                        <%--<span class="fly-filter-right layui-hide-xs">--%>
            <%--<a href="" class="layui-this">按最新</a>--%>
            <%--<span class="fly-mid"></span>--%>
            <%--<a href="">按热议</a>--%>
          <%--</span>--%>
                </div>

                <ul class="fly-list">


                    <c:forEach items="${newsList}" var="n">


                        <li>
                            <a href="javascript:;" class="fly-avatar">
                                <img src="res/images/dog.png" alt="贤心">
                            </a>
                            <h2>
                                <a class="layui-badge">动态</a>

                                <a href="beforeNews/selectANews?id=${n.id}">${n.ntitle}</a>
                            </h2>
                            <div class="fly-list-info">
                                <a href="user/home.html" link>
                                    <cite>admin</cite>

                                    <%--<i class="iconfont icon-renzheng" title="认证信息：XXX"></i>--%>
                                    <%--<i class="layui-badge fly-badge-vip">VIP3</i>--%>

                                </a>
                                <span>${n.ntime}</span>

                                <%--<span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i class="iconfont icon-kiss"></i> 60</span>--%>
                                <%--<span class="layui-badge fly-badge-accept layui-hide-xs">已结</span>--%>
                                <%--<span class="fly-list-nums">--%>
                             <%--<i class="iconfont icon-pinglun1" title="回答"></i> 66--%>
                                <%--</span>--%>
                            </div>
                            <%--<div class="fly-list-badge">--%>
                                <%--<span class="layui-badge layui-bg-black">置顶</span>--%>
                                <%--<span class="layui-badge layui-bg-red">精帖</span>--%>
                            <%--</div>--%>
                        </li>

                    </c:forEach>




                </ul>

                <!-- <div class="fly-none">没有相关数据</div> -->

                <div style="text-align: center;">
                    <div>
                        <c:url var="url_pre" value="/beforeNews/newsInfo">
                            <c:param name="pageCur" value="${pageCur - 1 }"/>
                        </c:url>
                        <c:url var="url_next" value="/beforeNews/newsInfo">
                            <c:param name="pageCur" value="${pageCur + 1 }"/>
                        </c:url>
                        <a class="prev" href="javascript:;">&lt;&lt;</a> <a class="num" href="javascript:;">共${totalPage}页</a>
                        <%--<span class="current">2</span>--%>
                        <span class="current">第${pageCur}页</span>
                        <!-- 第一页没有上一页 -->
                        <c:if test="${pageCur != 1 }">
                            <a class="num" href="${url_pre}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </c:if>
                        <!-- 最后一页，没有下一页 -->
                        <c:if test="${pageCur != totalPage && totalPage != 0}">
                            <a href="${url_next}">下一页</a>
                        </c:if>
                        <a class="next" href="javascript:;">&gt;&gt;</a>
                    </div>
                </div>

            </div>
        </div>
        <div class="layui-col-md4">
            <div class="fly-panel">
                <div class="fly-panel-title">
                    保护动物，人人有责
                </div>
                <div class="fly-panel-main">
                    <a href="" target="_blank" class="fly-zanzhu" style="background-color: #009688;">动物之家</a>
                </div>
            </div>
                <div class="fly-panel" style="padding: 20px 0; text-align: center;">
                    <img src="res/images/weixin.jpg" style="max-width: 100%;" alt="layui">
                    <p style="position: relative; color: #666;">微信扫码关注 动物之家 公众号</p>
                    <p style="position: relative; color: #666;">了解更多信息</p>
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
