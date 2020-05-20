<%--
  Created by IntelliJ IDEA.
  User: 左家臣
  Date: 2020/4/23
  Time: 11:18
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
    <meta charset="UTF-8" />
    <title>留言列表</title>
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" href="static/css/font.css" />
    <link rel="stylesheet" href="static/css/weadmin.css" />

    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        function checkDel(id){

                window.location.href = "/adminFeedback/editFeedback?id="+id;

        }
    </script>
</head>

<body>
<div class="weadmin-nav">
			<span class="layui-breadcrumb" style="visibility: visible;">
				<a href="javascript:;">首页</a>
				<span lay-separator="">/</span>
				<a href="javascript:;">留言管理</a>
				<span lay-separator="">/</span>
				<a href="javascript:;"> <cite>留言列表</cite></a>
			</span>
    <%--javascript:location.replace(location.href);--%>
    <a class="layui-btn layui-btn-sm" style="margin-top:3px;float:right" href="/adminFeedback/feedbackInfo"
       title="刷新">
        <i class="layui-icon layui-icon-refresh"></i>
        <!-- <i class="layui-icon" style="line-height:30px">&#x1002;</i> -->
    </a>
</div>

<div class="weadmin-body">
    <div class="layui-row">
        <form:form action="adminFeedback/selectAFeedback" modelAttribute="feedback" method="post" class="layui-form layui-col-md12 we-search">
            留言搜索：
            <!-- <div class="layui-inline">
                <input class="layui-input" placeholder="开始日" name="start" id="start" />
            </div>
            <div class="layui-inline">
                <input class="layui-input" placeholder="截止日" name="end" id="end" />
            </div> -->
            <div class="layui-inline">
                <input type="text" path="ftitle" name="ftitle" placeholder="请输入标题" autocomplete="off" class="layui-input" />
            </div>
            <button type="submit" id="show" class="layui-btn" lay-submit="" lay-filter="sreach">
                <i class="layui-icon layui-icon-search"></i>
            </button>
        </form:form>
    </div>
    <div class="weadmin-block">
        <!-- <button class="layui-btn layui-btn-danger" onclick="delAll()">
            <i class="layui-icon layui-icon-delete"></i>批量删除
        </button> -->
        <button class="layui-btn" onclick="WeAdminShow('添加新闻','adminNews/toAddNews',600,400)">
            <i class="layui-icon layui-icon-add-circle-fine"></i>添加
        </button>
        <span class="fr" style="line-height:40px">共有数据：${totalRecord} 条</span>
    </div>
    <!-- 表 -->
    <!-- <div class="layui-container"> -->
    <table class="layui-table" id="memberList">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
                    <i class="layui-icon">&#xe605;</i>
                </div>
            </th>
            <th>ID</th>
            <th>标题</th>
            <th>内容</th>
            <th>时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="n" items="${feedbackList}">
        <tr data-id="1">
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="1">
                    <i class="layui-icon">&#xe605;</i>
                </div>
            </td>
            <td>${n.id}</td>
            <td>${n.ftitle}</td>
            <td>${n.fcontent}</td>
            <td>${n.ftime}</td>
            <td>
                <c:choose>
                    <c:when test="${n.fstatus == 0}">
                        <label class="layui-btn layui-btn-danger">未处理</label>
                    </c:when>
                    <c:when test="${n.fstatus == 1}">
                        <label  class="layui-btn layui-btn-normal">已处理</label>
                    </c:when>

                </c:choose>
            </td>
            <!-- <td class="td-status">
                <span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span>
            </td>-->
            <td class="td-manage">
                <button class="layui-btn" onclick="checkDel('${n.id}')" >
                        <%--onclick="WeAdminEdit('编辑','adminUser/toEditUser?id=${n.id}',600, 400)"--%>
                    <i class="layui-icon layui-icon-delete"></i>处理
                </button>
                    ${msg}
                    <%--<button class="layui-btn" onclick="WeAdminEdit('编辑','adminFeedback/toEditFeedback?id=${n.id}',600, 400)">--%>
                    <%--<i class="layui-icon layui-icon-edit"></i>修改--%>
                <%--</button>--%>
                <%--<a onclick="member_stop(this,'10001')" href="javascript:;" title="启用">--%>
                    <%--<i class="layui-icon layui-icon-download-circle"></i>--%>
                <%--</a>--%>
                <%--<a title="编辑" onclick="WeAdminEdit('编辑','adminUser/toEditUser?id=${n.id}',600, 400)">--%>
                    <%--<i class="layui-icon layui-icon-edit"></i>--%>
                <%--</a>--%>
                <%--<a onclick="WeAdminShow('修改密码','userpassword.html',600,400)" title="修改密码" href="javascript:;">--%>
                    <%--<i class="layui-icon layui-icon-util"></i>--%>
                <%--</a>--%>
                <%--<a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">--%>
                    <%--<i class="layui-icon layui-icon-delete"></i>--%>
                <%--</a>--%>
            </td>
        </tr>
        </c:forEach>
        <!-- <tr data-id="2">
            <td>
                <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="2">
                    <i class="layui-icon">&#xe605;</i>
                </div>
            </td>
            <td>2</td>
            <td>小明</td>
            <td>女</td>
            <td>13000000000</td>
            <td>admin@mail.com</td>
            <td>北京市 海淀区</td>
            <td>2017-01-01 11:11:42</td>
            <td class="td-status">
                <span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span>
            </td>
            <td class="td-manage">
                <a onclick="member_stop(this,'10001')" href="javascript:;" title="启用">
                    <i class="layui-icon layui-icon-download-circle"></i>
                </a>
                <a title="编辑" onclick="WeAdminEdit('编辑','./edit.html', 2, 600, 400)" href="javascript:;">
                    <i class="layui-icon layui-icon-edit"></i>
                </a>
                <a onclick="WeAdminShow('修改密码','./password.html',600,400)" title="修改密码" href="javascript:;">
                    <i class="layui-icon layui-icon-util"></i>
                </a>
                <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                    <i class="layui-icon layui-icon-delete"></i>
                </a>
            </td>
        </tr> -->
        </tbody>
    </table>
    <!-- </div> -->
    <!-- 表 -->
    <div class="page" id="hide">
        <div>
            <c:url var="url_pre" value="/adminFeedback/feedbackInfo">
                <c:param name="pageCur" value="${pageCur - 1 }"/>
            </c:url>
            <c:url var="url_next" value="/adminFeedback/feedbackInfo">
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
<!--<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>-->
<script src="lib/layui/layui.js" charset="utf-8"></script>
<script src="static/js/eleDel.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>

