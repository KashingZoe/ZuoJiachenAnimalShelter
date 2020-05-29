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
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">
    <link rel="shortcut icon" href="static/images/paw.png" type="image/png" />

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
                <li data-type="mine-jie" lay-id="index">我的领养</li>
                <li data-type="master" data-url="/master/find/" lay-id="collection">寻主发布</li>
                <li class="layui-this" data-type="pet" data-url="/pet/find/" lay-id="collection">寻宠发布</li>

            </ul>
            <div class="layui-tab-content" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <ul class="mine-view jie-row">

                        <c:forEach items="${adoptList}" var="a">
                        <li>

                            <a class="jie-title" style="width: 20%" href="user/userindex?id=${a.id}" target="_blank">${a.ltitle}</a>

                            <%--<a class="mine-edit" href="javascript:;"></a>--%>
                                <c:choose>
                                    <c:when test="${a.status == 0}">
                                        <label class="mine-edit">未审核</label>
                                    </c:when>
                                    <c:when test="${a.status == 1}">
                                        <label class="mine-edit" style="background-color: #01AAED">审核通过</label>
                                    </c:when>
                                    <c:otherwise>
                                        <label class="mine-edit" style="background-color: red">审核失败</label>
                                    </c:otherwise>
                                </c:choose>


                            <!-- <em>661阅/10答</em> -->
                        </li>
                        </c:forEach>
                        <!-- <li>
                           <a class="jie-title" href="jie/detail.html" target="_blank">基于 layui 的极简社区页面模版</a>
                           <i>2017/3/14 上午8:30:00</i>
                           <a class="mine-edit" href="/jie/edit/8116">编辑</a>
                           <em>661阅/10答</em>
                         </li>
                         <li>
                           <a class="jie-title" href="jie/detail.html" target="_blank">基于 layui 的极简社区页面模版</a>
                           <i>2017/3/14 上午8:30:00</i>
                           <a class="mine-edit" href="/jie/edit/8116">编辑</a>
                           <em>661阅/10答</em>
                         </li> -->
                    </ul>
                    <div id="LAY_page">
                        <div style="text-align: center;">
                            <div>
                                <c:url var="url_pre" value="/user/touserindex">
                                    <c:param name="pageCur" value="${pageCur - 1 }"/>
                                </c:url>
                                <c:url var="url_next" value="/user/touserindex">
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
                <div class="layui-tab-item">
                    <ul class="mine-view jie-row">
                        <c:forEach items="${masterList}" var="m">
                            <li>
                                <%--<a href="#" class="fly-avatar">--%>
                                    <%--<img src="res/images/mycat.png" alt="贤心">--%>
                                <%--</a>--%>
                                <h2>
                                    <a class="layui-badge">动态</a>
                                    <a href="/beforeAnimal/selectAMaster?id=${m.id}">${m.mtitle}</a>
                                </h2>
                                <div class="fly-list-info">
                                    <%--<a href="user/home.html" link>--%>
                                        <%--<cite>左先生</cite>--%>
                                        <%--<!----%>
                                        <%--<i class="iconfont icon-renzheng" title="认证信息：XXX"></i>--%>
                                        <%--<i class="layui-badge fly-badge-vip">VIP3</i>--%>
                                        <%---->--%>
                                    <%--</a>--%>
                                    <span>${m.mtime}</span>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                    <div id="LAY_page1">
                        <div style="text-align: center;">
                            <div>
                                <c:url var="url_pre" value="/user/tousermaster">
                                    <c:param name="pageCur" value="${pageCur - 1 }"/>
                                </c:url>
                                <c:url var="url_next" value="/user/tousermaster">
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

                <div class="layui-tab-item">
                    <ul class="mine-view jie-row">
                        <c:forEach items="${petList}" var="p">
                            <li>
                                <%--<a href="#" class="fly-avatar">--%>
                                    <%--<img src="res/images/mycat.png" alt="贤心">--%>
                                <%--</a>--%>
                                <h2>
                                    <a class="layui-badge">动态</a>
                                    <a href="beforeAnimal/selectAPet?id=${p.id}">${p.ptitle}</a>
                                </h2>
                                <div class="fly-list-info">
                                    <%--<a href="user/home.html" link>--%>
                                        <%--<cite>左先生</cite>--%>
                                        <%--<!----%>
                                        <%--<i class="iconfont icon-renzheng" title="认证信息：XXX"></i>--%>
                                        <%--<i class="layui-badge fly-badge-vip">VIP3</i>--%>
                                        <%---->--%>
                                    <%--</a>--%>
                                    <span>${p.ptime}</span>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                    <div id="LAY_page2">
                        <div style="text-align: center;">
                            <div>
                                <c:url var="url_pre" value="/user/touserpet">
                                    <c:param name="pageCur" value="${pageCur - 1 }"/>
                                </c:url>
                                <c:url var="url_next" value="/user/touserpet">
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
