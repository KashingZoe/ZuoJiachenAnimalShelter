<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/9
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">
    <script type="text/javascript" src="res/js/Popt.js"></script>
    <script type="text/javascript" src="res/js/city.json.js"></script>
    <script type="text/javascript" src="res/js/citySet.js"></script>
    <script type="text/javascript" src="res/js/jquery.min.js"></script>

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
        /* * { -ms-word-wrap: break-word; word-wrap: break-word; } */
        /* html { -webkit-text-size-adjust: none; text-size-adjust: none; }
        html, body {height:100%;width:100%; } */
        /* .wrap{width:464px;height:34px;margin:200px auto;border:0;position:relative;} */
        /* .input{position:absolute;top:0;left:0;width:457px;margin:0;padding-left:5px;height:30px;line-height:30px;font-size:12px;border:1px solid #c9cacb;} */
        /* s{position:absolute;top:1px;right:0;width:32px;height:32px;background:url("res/images/arrow.png") no-repeat;} */
        ._citys { width: 450px; display: inline-block; border: 2px solid #eee; padding: 5px; position: relative; background-color: #91B493;}
        ._citys span { color: #05920a; height: 15px; width: 15px; line-height: 15px; text-align: center; border-radius: 3px; position: absolute; right: 10px; top: 10px; border: 1px solid #05920a; cursor: pointer; }
        ._citys0 { width: 95%; height: 34px; line-height: 34px; display: inline-block; border-bottom: 2px solid #05920a; padding: 0px 5px; font-size:14px; font-weight:bold; margin-left:6px; }
        ._citys0 li { display: inline-block; line-height: 34px; font-size: 15px; color: #888; width: 80px; text-align: center; cursor: pointer; }
        ._citys1 { width: 100%; display: inline-block; padding: 10px 0; }
        ._citys1 a { width: 83px; height: 35px; display: inline-block; background-color: #f5f5f5; color: #666; margin-left: 6px; margin-top: 3px; line-height: 35px; text-align: center; cursor: pointer; font-size: 12px; border-radius: 5px; overflow: hidden; }
        ._citys1 a:hover { color: #fff; background-color: #05920a; }
        .AreaS { background-color: #05920a !important; color: #fff !important; }
    </style>
    <script type="text/javascript">
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function(){
            var element = layui.element;

            //…
        });

        //验证码
        function refreshCode(){
            document.getElementById("code").src = "validateCode?" + Math.random();
        }
        //表单验证
        function checkForm(){
            var bpwd = document.regForm.bpwd.value;
            var repass = document.regForm.repass.value;
            if(bpwd != repass){
                alert("两次密码不一致！");
                return false;
            }
            document.regForm.submit();
            return true;
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
                        <a class="iconfont icon-touxiang layui-hide-xs" href="/toLogin"></a>
                    </li>
                    <li class="layui-nav-item" >
                        <a href="/toLogin.html" style="color: #E8E8E8;">登入</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="/toRegister.html" style="color: #E8E8E8;">注册</a>
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
                <li><a href="/toLogin">登入</a></li>
                <li class="layui-this">注册</li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form:form action="user/register" method="post" modelAttribute="buser" name="regForm">
                            <div class="layui-form-item">
                                <label for="L_email" class="layui-form-label">邮箱</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_email" name="bemail" value="${buser.bemail}" required lay-verify="email" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">将会成为您唯一的登入名</div>
                                <div class="layui-form-mid layui-word-aux">${msg}</div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_username" class="layui-form-label">名字</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_username" name="bname" value="${buser.bname}" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">*先生/*女士</div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_pass" class="layui-form-label">密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" id="L_pass" name="bpwd" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_pass" class="layui-form-label">确认密码</label>
                                <div class="layui-input-inline">
                                    <input type="password" id="repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>

                            </div>
                            <div class="layui-form-item">
                                <label for="L_qq" class="layui-form-label">QQ</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_qq" name="bqq" value="${buser.bqq}" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_wechat" class="layui-form-label">微信</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_wechat" name="bwechat" value="${buser.bwechat}" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_tel" class="layui-form-label">电话</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_tel" name="btel" value="${buser.btel}" required lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="city" class="layui-form-label">地区</label>
                                <div class="layui-input-inline">
                                    <div class="wrap"><input class="layui-input" name="barea"  value="${buser.barea}" id="city" type="text" placeholder="请选择" autocomplete="off" readonly="true"/><s></s></div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label for="L_add" class="layui-form-label">详细地址</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_add" name="badd" value="${buser.badd}" equired lay-verify="required" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">如街道、门牌号、小区、楼栋号、单元室等</div>
                            </div>
                            <%--<div class="layui-form-item">--%>
                                <%--<label for="L_vercode" class="layui-form-label">验证码</label>--%>
                                <%--<div class="layui-input-inline">--%>
                                    <%--<input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">--%>
                                <%--</div>--%>
                                <%--<div class="layui-form-mid">--%>
                                    <%--<img id="code" src="validateCode" />--%>
                                    <%--<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>--%>
                                <%--</div>--%>
                                <%--<div class="layui-form-mid layui-word-aux">${codeError}</div>--%>
                            <%--</div>--%>
                            <div class="layui-form-item">
                                <button class="layui-btn" onclick="checkForm()" lay-filter="*" lay-submit>立即注册</button>
                            </div>
                            <div class="layui-form-item fly-form-app">
                                <span>或者直接使用社交账号快捷注册</span>
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
    <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
    <p>
        <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
        <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
        <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
    </p>
</div>

<script src="res/layui/layui.js"></script>
<script>
    layui.cache.page = 'user';
    layui.cache.user = {
        username: '游客'
        ,uid: -1
        ,avatar: 'res/images/avatar/00.jpg'
        ,experience: 83
        ,sex: '男'
    };
    layui.config({
        version: "3.0.0"
        ,base: 'res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>
<script type="text/javascript">
    $("#city").click(function (e) {
        SelCity(this,e);
    });
    $("s").click(function (e) {
        SelCity(document.getElementById("city"),e);
    });
</script>
</body>
</html>
