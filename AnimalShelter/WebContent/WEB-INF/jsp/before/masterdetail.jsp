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
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <script type="text/javascript">
        function submit(id){
            window.location.href = "/beforeOrder/addOrder?id="+id;
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
        <div class="layui-col-md8 content detail">
            <div class="fly-panel detail-box">
                <div class="fly-panel-title fly-filter" style="padding-left: 0px;color: #b4a992;">
                    <a>宠物展示</a>

                </div>
                <h1 style="text-align: center;">${masterList.mtitle}</h1>

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
                    <img alt="" width="585px" height="350px" src="logos/${masterList.mpicture}"/>
                </div>
                <div class="detail-body photos">
                    <p>
                        ${masterList.minfo}
                    </p>
                    <%--<p>更新日志：</p>--%>
                    <!-- <pre> -->
                    <div class="detail-about" style="padding-left: 0px;color: #000000;">
                        <form class="layui-form" action="" style="margin-left: 0px;">
                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">种类</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.kindname}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">性别</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.msex}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">拾到时间</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.mtime}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">姓名</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.bname}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">QQ</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.bqq}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">微信</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.bwechat}</div>
                                </div>
                            </div>

                            <div class="layui-form-item">
                                <label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">电话</label>
                                <div class="layui-input-block mytb">
                                    <div class="layui-form-mid layui-word-aux mymid">${masterList.btel}</div>
                                </div>
                            </div>

                            <%--<div class="layui-form-item">--%>
                                <%--<label class="layui-form-label mylabel layui-btn-warm layui-btn-radius">发布时间</label>--%>
                                <%--<div class="layui-input-block mytb">--%>
                                    <%--<div class="layui-form-mid layui-word-aux mymid">${animalList.ltime}</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>

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
    confirmTrans: function(){
        //配置一个透明的询问框
        layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
            time: 20000, //20s后自动关闭
            btn: ['明白了', '知道了', '哦']
        });
    }
</script>
<script src="static/js/admin.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
