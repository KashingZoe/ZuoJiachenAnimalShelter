<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/5/25
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%--这段代码的意思是获取当前项目的路径，如：http://localhost:8080/项目名称。--%>

<!DOCTYPE html>
<html style="background-color: #e2e2e2;">
<head>
    <base href="<%=basePath%>">
    <%--设置基础路径，href属性里的链接会以这个为基准，无需再写http://localhost:8080/项目名称--%>
    <meta charset="utf-8">
    <meta name="keywords" content="{{ lay.base.keywords }}">
    <meta name="description" content="{{ lay.base.description }}">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>动物之家</title>
    <link rel="stylesheet" href="static/css/weadmin.css" />
    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">
    <link rel="shortcut icon" href="static/images/paw.png" type="image/png" />

    <style>
        .header{border-bottom: 1px solid #404553; border-right: 1px solid #404553;}
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
        .fly-case-header{
            height: 150px;
        }
        .aimg{
            cursor: pointer;/*鼠标变成手指样式*/
            transition: all 0.6s;/*所有属性变化在0.6秒内执行动画*/
        }
        .aimg:hover{
            transform: scale(1.4);/*鼠标放上之后元素变成1.4倍大小*/
        }
    </style>
    <script type="text/javascript">
        function checkDel(id){
            if(window.confirm("是否删除该宠秀"+id+"？")){
                window.location.href = "/beforeVisit//deleteAVisit?id="+id;
            }
        }
    </script>
</head>
<body class="fly-full">

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


<!--导航栏-->
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
            <li class="layui-nav-item layui-this"><a href="/beforeVisit/toVisit">宠秀回访</a></li>
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


<div class="fly-case-header">
    <!--  -->
    <!-- <a href="/case/{{ year }}/">
      <img class="fly-case-banner" src="res/images/case.png" alt="发现 Layui 年度最佳案例">
    </a> -->

    <div class="fly-case-btn">
        <p style="font-size: xx-large; margin-bottom: 10px;color: #FFFFFF;">宠秀回访</p>

        <button class="layui-btn layui-btn-big fly-case-active" onclick="WeAdminEdit('编辑','/beforeVisit/toAddVisit',600,400)">
            上传宠秀
        </button>

        <a href="/beforeVisit/toMyVisit" class="layui-btn layui-btn-primary layui-btn-big" style="text-decoration: none">我的宠秀</a>
        <div class="layui-form-mid layui-word-aux">${msg}</div>

    </div>






</div>

<div class="fly-main" style="overflow: hidden;width: 1220px">


    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li class="layui-this"><a href="">按提交时间</a></li>
            <%--<li><a href="">按点赞排行</a></li>--%>
        </ul>
    </div>

    <ul class="fly-case-list">

        <c:forEach var="n" items="${visitList}">
            <li data-id="123" style="width: 260px">
                <a class="fly-case-img" href="#" target="_blank" class="aimg" style="text-align: center;">

                    <!-- 从数据库取出的文件名 -->
                    <c:if test="${n.vpicture != ''}">
                        <img alt="" src="logos/${n.vpicture}"/>
                    </c:if>
                    <%--<cite class="layui-btn layui-btn-primary layui-btn-small">去围观</cite>--%>
                </a>
                <h2><a href="#" target="_blank">${n.vtitle}</a></h2>
                <p class="fly-case-desc">${n.vcontent}</p>
                <%--<div class="fly-case-info">--%>
                    <%--<a href="user/home.html" class="fly-case-user" target="_blank"><img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"></a>--%>
                    <%--<p class="layui-elip" style="font-size: 12px;"><span style="color: #666;">贤心</span> 2017-11-30</p>--%>
                    <%--<p>获得<a class="fly-case-nums fly-case-active" href="javascript:;" data-type="showPraise" style=" padding:0 5px; color: #01AAED;">666</a>个赞</p>--%>
                    <%--<button class="layui-btn layui-btn-primary fly-case-active" data-type="praise">点赞</button>--%>
                    <%--<!-- <button class="layui-btn  fly-case-active" data-type="praise">已赞</button> -->--%>
                <%--</div>--%>
                <a onclick="checkDel('${n.id}')"><i class="layui-icon">&#xe640;</i></a>
            </li>


        </c:forEach>





    </ul>

    <!-- <blockquote class="layui-elem-quote layui-quote-nm">暂无数据</blockquote> -->

    <div class="page" style="text-align: center;">
        <div>
            <c:url var="url_pre" value="/beforeVisit/toMyVisit">
                <c:param name="pageCur" value="${pageCur - 1 }"/>
            </c:url>
            <c:url var="url_next" value="/beforeVisit/toMyVisit">
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

<div class="fly-footer">
    <p><a href="javascript:;" target="_blank">动物之家</a> 2020 &copy; <a href="javascript:;" target="_blank">zuojiachen 出品</a></p>
</div>
<script src="static/js/admin.js" type="text/javascript" charset="utf-8"></script>
<script src="res/layui/layui.js"></script>
<script type="text/javascript">
    //			layui扩展模块的两种加载方式-示例
    layui.extend({
        admin: '{/}static/js/admin' // {/}的意思即代表采用自有路径，即不跟随 base 路径
    });
    //使用拓展模块
    layui.use('admin', function(){
        var admin = layui.admin;
    });


</script>
</body>
</html>