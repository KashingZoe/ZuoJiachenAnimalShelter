<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/9
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

        function selectone(id){

                window.location.href = "/beforeAnimal/selectAAnimal?id="+id;

        }

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
                    <dd><a href="/beforeAnimal/toAddMaster">寻主发布</a></dd>
                    <dd><a href="/beforeAnimal/toAddPet">寻宠发布</a></dd>
                </dl>

            </li>
            <li class="layui-nav-item"><a href="/beforeVisit/toVisit">宠秀回访</a></li>
            <li class="layui-nav-item"><a href="/beforeNews/newsInfo">科普区</a></li>
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
            <a href="javascript:;" class="layui-btn">发表新帖</a>
        </div>
        <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;">
            <a href="javascript:;" class="layui-btn">发表新帖</a>
        </div>
    </div>
</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="fly-panel">
                <div class="fly-panel-title fly-filter">
                    <a>宠物展示</a>
                    <a href="#signin" class="layui-hide-sm layui-show-xs-block fly-right" id="LAY_goSignin" style="color: #FF5722;">去签到</a>
                </div>
                <div class="layui-carousel" id="test1" style="height: 380px;">
                    <div carousel-item>
                    <c:forEach items="${animalList}" var="a">
                        <div><img alt="" width="777px" src="logos/${a.lpicture}"/></div>

                    </c:forEach>
                    </div>
                </div>
                <!-- 条目中可以是任意内容，如：<img src=""> -->

                <script src="res/layui/layui.all.js"></script>
                <script>
                    layui.use('carousel', function(){
                        var carousel = layui.carousel;
                        //建造实例
                        carousel.render({
                            elem: '#test1'
                            ,interval: 3000
                            ,height: '380px'
                            ,width: '100%' //设置容器宽度
                            ,arrow: 'always' //始终显示箭头
                            //,anim: 'updown' //切换动画方式
                        });
                    });
                </script>


        </div>


            <div class="fly-panel " style="margin-bottom: 0;">
                <div class="layui-tab">


                    <ul class="fly-panel-title fly-filter layui-tab-title">
                        <li class="layui-this">
                            领养
                        </li>
                        <span class="fly-mid"></span>
                        <li>
                            寻主
                        </li>
                        <span class="fly-mid"></span>
                        <li>
                            寻宠
                        </li>
                        <span class="fly-mid"></span>

                        <!-- <span class="fly-filter-right layui-hide-xs">
                          <li>
                          <a href="" class="layui-this">按最新</a>
                           </li>
                          <span class="fly-mid"></span>
                          <li>
                          <a href="">按热议</a>
                          </li>
                        </span> -->
                    </ul>

                    <div class="layui-tab-content">

                        <div class="layui-tab-item layui-show">

                            <ul class="fly-list">

                                    <c:forEach items="${animalList}" var="a">
                                        <li>
                                        <a href="#" class="fly-avatar">
                                        <img src="res/images/mycat.png" alt="贤心">
                                        </a>
                                        <h2>
                                            <a class="layui-badge">动态</a>
                                            <a href="beforeAnimal/selectAAnimal?id=${a.id}">${a.ltitle}</a>
                                        </h2>
                                        <div class="fly-list-info">
                                            <a href="user/home.html" link>
                                                <cite>左先生</cite>
                                                <!--
                                                <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                                <i class="layui-badge fly-badge-vip">VIP3</i>
                                                -->
                                            </a>
                                            <span>刚刚</span>
                                        </div>
                                        </li>
                                    </c:forEach>
                                    <%--<a href="user/home.html" class="fly-avatar">--%>
                                        <%--<img src="res/images/mycat.png" alt="贤心">--%>
                                    <%--</a>--%>
                                    <%--<h2>--%>
                                        <%--<a class="layui-badge">分享</a>--%>
                                        <%--<a href="jie/detail.html">求包养</a>--%>
                                    <%--</h2>--%>
                                    <%--<div class="fly-list-info">--%>
                                        <%--<a href="user/home.html" link>--%>
                                            <%--<cite>贤心</cite>--%>
                                            <%--<!----%>
                                            <%--<i class="iconfont icon-renzheng" title="认证信息：XXX"></i>--%>
                                            <%--<i class="layui-badge fly-badge-vip">VIP3</i>--%>
                                            <%---->--%>
                                        <%--</a>--%>
                                        <%--<span>刚刚</span>--%>

                                        <%--<span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i class="iconfont icon-kiss"></i> 60</span>--%>
                                        <%--<!--<span class="layui-badge fly-badge-accept layui-hide-xs">已结</span>-->--%>
                                        <%--<span class="fly-list-nums">--%>
                <%--<i class="iconfont icon-pinglun1" title="回答"></i> 66--%>
              <%--</span>--%>
                                    <%--</div>--%>
                                    <%--<div class="fly-list-badge">--%>
                                        <%--<!--<span class="layui-badge layui-bg-red">精帖</span>-->--%>
                                    <%--</div>--%>


                            </ul>



                            <div style="text-align: center">
                                <div class="laypage-main">
                                    <a href="beforeAnimal/animalInfo" class="laypage-next">查看更多</a>
                                </div>
                            </div>

                        </div> <!-- layui-tab-item layui-show -->
                        <div class="layui-tab-item">
                            <ul class="fly-list">
                                <c:forEach items="${masterList}" var="m">
                                    <li>
                                        <a href="#" class="fly-avatar">
                                            <img src="res/images/mycat.png" alt="贤心">
                                        </a>
                                        <h2>
                                            <a class="layui-badge">动态</a>
                                            <a href="/beforeAnimal/selectAMaster?id=${m.id}">${m.mtitle}</a>
                                        </h2>
                                        <div class="fly-list-info">
                                            <a href="user/home.html" link>
                                                <cite>左先生</cite>
                                                <!--
                                                <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                                <i class="layui-badge fly-badge-vip">VIP3</i>
                                                -->
                                            </a>
                                            <span>刚刚</span>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <div style="text-align: center">
                                <div class="laypage-main">
                                    <a href="/beforeAnimal/masterInfo" class="laypage-next">查看更多</a>
                                </div>
                            </div>


                        </div><!-- layui-tab-item2 -->
                        <div class="layui-tab-item">
                            <ul class="fly-list">
                                <c:forEach items="${petList}" var="p">
                                    <li>
                                        <a href="#" class="fly-avatar">
                                            <img src="res/images/mycat.png" alt="贤心">
                                        </a>
                                        <h2>
                                            <a class="layui-badge">动态</a>
                                            <a href="beforeAnimal/selectAPet?id=${p.id}">${p.ptitle}</a>
                                        </h2>
                                        <div class="fly-list-info">
                                            <a href="user/home.html" link>
                                                <cite>左先生</cite>
                                                <!--
                                                <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                                <i class="layui-badge fly-badge-vip">VIP3</i>
                                                -->
                                            </a>
                                            <span>刚刚</span>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <div style="text-align: center">
                                <div class="laypage-main">
                                    <a href="/beforeAnimal/petInfo" class="laypage-next">查看更多</a>
                                </div>
                            </div>



                        </div>	<!-- layui-tab-item3 -->

                    </div>   <!-- tab-content -->
                </div>   <!-- layui-tab -->
            </div>



        </div>
        <div class="layui-col-md4">

            <div class="fly-panel">
                <h3 class="fly-panel-title">科普新闻</h3>
                <ul class="fly-panel-main fly-list-static">
                    <c:forEach var="n" items="${newList}">
                        <li>
                        <a href="/beforeNews/selectANews?id=${n.id}" target="_blank">${n.ntitle}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <div class="fly-panel">
                <h3 class="fly-panel-title" >寻主</h3>
                <ul class="fly-panel-main fly-list-static">
                    <c:forEach var="n" items="${masterList}">
                        <li>
                            <a href="/beforeAnimal/selectAMaster?id=${n.id}" target="_blank">${n.mtitle}</a>
                        </li>
                    </c:forEach>

                </ul>
            </div>

            <div class="fly-panel">
                <h3 class="fly-panel-title" >寻宠</h3>
                <ul class="fly-panel-main fly-list-static">
                    <c:forEach var="n" items="${petList}">
                        <li>
                            <a href="/beforeAnimal/selectAPet?id=${n.id}" target="_blank">${n.ptitle}</a>
                        </li>
                    </c:forEach>

                </ul>
            </div>


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
    <p><a href="javascript:;" target="_blank">动物之家</a> 2020 &copy; <a href="javascript:;" target="_blank">zuojiachen 出品</a></p>
    <%--<p>--%>
        <%--<a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>--%>
        <%--<a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>--%>
        <%--<a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>--%>
    <%--</p>--%>
</div>

<script src="res/layui/layui.js"></script>
<script>
    // layui.cache.page = '';
    // layui.cache.user = {
    //     username: '游客'
    //     ,uid: -1
    //     ,avatar: 'res/images/avatar/00.jpg'
    //     ,experience: 83
    //     ,sex: '男'
    // };
    layui.config({
        version: "3.0.0"
        ,base: 'res/mods/' //这里实际使用时，建议改成绝对路径
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script>

</body>
</html>
